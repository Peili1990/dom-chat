package org.nv.dom.web.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.nv.dom.config.NVTermConstant;
import org.nv.dom.config.PageParamType;
import org.nv.dom.domain.player.SubmitOpreationDTO;
import org.nv.dom.domain.speech.Speech;
import org.nv.dom.dto.assemble.DeleteSpeechDTO;
import org.nv.dom.util.TextUtil;
import org.nv.dom.util.ThreadUtils;
import org.nv.dom.util.json.JacksonJSONUtils;
import org.nv.dom.web.dao.assemble.AssembleMapper;
import org.nv.dom.web.dao.user.UserMapper;
import org.nv.dom.web.service.AssembleService;
import org.nv.dom.websocket.util.SessionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("assembleServiceImpl")
public class AssembleServiceImpl implements AssembleService {
	
	Logger logger = Logger.getLogger(AssembleServiceImpl.class);
	
	@Autowired
	AssembleMapper assembleMapper;
	
	@Autowired
	UserMapper userMapper;

	@Override
	public Map<String, Object> saveSpeech(final Speech speech) {
		Map<String, Object> result = new HashMap<String, Object>();
		try{
			if(assembleMapper.getNewspaperStatus(speech.getNewspaperId())!=1){
				result.put(PageParamType.BUSINESS_STATUS, -3);
				result.put(PageParamType.BUSINESS_MESSAGE, "当前集会不允许发言");
				return result;
			}
			if(speech.getType() == NVTermConstant.GESTURE_SIGN){
				speech.setContent("*"+speech.getCharacterName()+" "+speech.getContent());
			} else if(speech.getIsMute() == NVTermConstant.STAMMER){
				speech.setContent(TextUtil.Stammer(speech.getContent()));
			}
			speech.setCreateTime(new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(new Date()));
			assembleMapper.saveSpeech(speech);
			result.put(PageParamType.BUSINESS_STATUS, 1);
			result.put(PageParamType.BUSINESS_MESSAGE, "保存发言成功！");
			ThreadUtils.fixedPool.execute(new Runnable() {
				@Override
				public void run() {
					try {
						List<Long> users = userMapper.getUserIdListByGameId(speech.getGameId());
						speech.setMessage("speech");
						users = SessionUtils.pushMessageBatch(users, JacksonJSONUtils.beanToJSON(speech));
						if(!users.isEmpty()){
							Map<String, Object> map = new HashMap<String, Object>();
							map.put("speechId", speech.getId());
							map.put("users", users);
							map.put("newspaperId", speech.getNewspaperId());
							userMapper.saveOfflineSpeech(map);
						}
					} catch (Exception e) {
						logger.error(e.getMessage(), e);
					}
				}
			});		
		}catch(Exception e){
			logger.error(e.getMessage(), e);
			result.put(PageParamType.BUSINESS_STATUS, -1);
			result.put(PageParamType.BUSINESS_MESSAGE, "系统异常");
		}
		return result;
	}

	@Override
	public Map<String, Object> deleteSpeech(final DeleteSpeechDTO deleteSpeechDTO) {
		Map<String, Object> result = new HashMap<String, Object>();
		try{
			assembleMapper.deleteSpeech(deleteSpeechDTO);
			result.put(PageParamType.BUSINESS_STATUS, 1);
			result.put(PageParamType.BUSINESS_MESSAGE, "删除发言成功！");
			ThreadUtils.fixedPool.execute(new Runnable() {
				@Override
				public void run() {
					try {
						List<Long> users = userMapper.getUserIdListByGameId(deleteSpeechDTO.getGameId());
						deleteSpeechDTO.setMessage("delete");
						SessionUtils.pushMessageBatch(users, JacksonJSONUtils.beanToJSON(deleteSpeechDTO));
					} catch (Exception e) {
						logger.error(e.getMessage(), e);
					}
				}
			});		
		}catch(Exception e){
			result.put(PageParamType.BUSINESS_STATUS, -1);
			result.put(PageParamType.BUSINESS_MESSAGE, "系统异常");
		}
		return result;
	}

	@Override
	public Map<String, Object> submitOpreation(final SubmitOpreationDTO submitOpreationDTO) {
		final Map<String, Object> result = new HashMap<String, Object>();
		try{
			if(assembleMapper.submitOpreationDao(submitOpreationDTO)==1){
				result.put(PageParamType.BUSINESS_STATUS, 1);
				result.put(PageParamType.BUSINESS_MESSAGE, "提交操作成功！");
				ThreadUtils.fixedPool.execute(new Runnable() {
					@Override
					public void run() {
						try {
							List<Long> judgers = userMapper.getJudgerIdListByGameId(submitOpreationDTO.getGameId());
							result.put(PageParamType.BUSINESS_MESSAGE, "opreation");
							SessionUtils.pushMessageBatch(judgers, JacksonJSONUtils.beanToJSON(result));
						} catch (Exception e) {
							logger.error(e.getMessage(), e);
						}
					}
				});		
			} else {
				result.put(PageParamType.BUSINESS_STATUS, -3);
				result.put(PageParamType.BUSINESS_MESSAGE, "提交操作失败！");
			}
		} catch(Exception e){
			logger.error(e.getMessage(),e);
			result.put(PageParamType.BUSINESS_STATUS, -1);
			result.put(PageParamType.BUSINESS_MESSAGE, "系统异常");
		}
		return result;
	}

}
