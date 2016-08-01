package org.nv.dom.web.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.nv.dom.config.PageParamType;
import org.nv.dom.domain.speech.Speech;
import org.nv.dom.web.dao.assemble.AssembleMapper;
import org.nv.dom.web.service.AssembleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("assembleServiceImpl")
public class AssembleServiceImpl implements AssembleService {
	
	Logger logger = Logger.getLogger(AssembleServiceImpl.class);
	
	@Autowired
	AssembleMapper assembleMapper;

	@Override
	public Map<String, Object> saveSpeech(Speech speech) {
		Map<String, Object> result = new HashMap<String, Object>();
		try{
			assembleMapper.saveSpeech(speech);
			result.put(PageParamType.BUSINESS_STATUS, 1);
			result.put(PageParamType.BUSINESS_MESSAGE, "保存发言成功！");
		}catch(Exception e){
			result.put(PageParamType.BUSINESS_STATUS, -1);
			result.put(PageParamType.BUSINESS_MESSAGE, "系统异常");
		}
		return result;
	}

}
