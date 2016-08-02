package org.nv.dom.web.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.nv.dom.config.PageParamType;
import org.nv.dom.domain.speech.Speech;
import org.nv.dom.util.json.FastJSONUtils;
import org.nv.dom.util.json.JSONConvert;
import org.nv.dom.util.json.JacksonJSONUtils;
import org.nv.dom.web.dao.assemble.AssembleMapper;
import org.nv.dom.web.dao.user.UserMapper;
import org.nv.dom.web.service.AssembleService;
import org.nv.dom.websocket.util.SessionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;

@Service("assembleServiceImpl")
public class AssembleServiceImpl implements AssembleService {
	
	Logger logger = Logger.getLogger(AssembleServiceImpl.class);
	
	@Autowired
	AssembleMapper assembleMapper;
	
	@Autowired
	UserMapper userMapper;

	@Override
	public Map<String, Object> saveSpeech(Speech speech) {
		Map<String, Object> result = new HashMap<String, Object>();
		try{
			assembleMapper.saveSpeech(speech);
			result.put(PageParamType.BUSINESS_STATUS, 1);
			result.put(PageParamType.BUSINESS_MESSAGE, "保存发言成功！");
			List<Long> users = userMapper.getUserIdListByGameId(speech.getGameId());
		}catch(Exception e){
			result.put(PageParamType.BUSINESS_STATUS, -1);
			result.put(PageParamType.BUSINESS_MESSAGE, "系统异常");
		}
		return result;
	}

}
