package org.nv.dom.web.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.nv.dom.config.NVTermConstant;
import org.nv.dom.config.PageParamType;
import org.nv.dom.domain.speech.Speech;
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
			speech.setContent(speech.getType() == NVTermConstant.GESTURE_SIGN ? "*"+speech.getCharacterName()+" "+speech.getContent() : speech.getContent());
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
						Map<String, Object> map = new HashMap<String, Object>();
						map.put("speechId", speech.getId());
						map.put("users", users);
						map.put("newspaperId", speech.getNewspaperId());
						userMapper.saveOfflineSpeech(map);
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

}
