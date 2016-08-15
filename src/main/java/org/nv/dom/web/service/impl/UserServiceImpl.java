package org.nv.dom.web.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.nv.dom.config.PageParamType;
import org.nv.dom.domain.chat.ChatDetail;
import org.nv.dom.domain.chat.ChatInfo;
import org.nv.dom.util.json.JacksonJSONUtils;
import org.nv.dom.web.dao.user.UserMapper;
import org.nv.dom.web.service.UserService;
import org.nv.dom.websocket.util.SessionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userServiceImpl")
public class UserServiceImpl implements UserService {
	
	private static Logger logger = Logger.getLogger(UserServiceImpl.class );
	
	@Autowired
	UserMapper userMapper;

	@Override
	public Map<String, Object> getConnectionInfo(ChatInfo chatInfo) {
		Map<String, Object> result = new HashMap<>();
		try{
			long fromUserId = chatInfo.getFromUserId();
			if(chatInfo.getToUserId()>0L){
				chatInfo = userMapper.getChatInfoByUserId(chatInfo.getToUserId());
			} else {
				chatInfo = userMapper.getChatInfoByPlayerId(chatInfo.getToPlayerId());
			}	
			long toUserId = chatInfo.getToUserId();
			String chatId = fromUserId > toUserId ? 
					String.valueOf(toUserId)+"-"+String.valueOf(fromUserId) : 
						String.valueOf(fromUserId)+"-"+String.valueOf(toUserId);
			chatInfo.setChatId(chatId);
			result.put("chatInfo", chatInfo);
			result.put(PageParamType.BUSINESS_STATUS, 1);
			result.put(PageParamType.BUSINESS_MESSAGE, "获取连接信息成功");
		}catch(Exception e){
			logger.error(e.getMessage(), e);
			result.put(PageParamType.BUSINESS_STATUS, -1);
			result.put(PageParamType.BUSINESS_MESSAGE, "系统异常");
		}
		return result;
	}

	@Override
	public Map<String, Object> sendMessage(ChatDetail chatDetail) {
		Map<String, Object> result = new HashMap<String, Object>();
		chatDetail.setCreateTime(new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(new Date()));
		try{
			chatDetail.setMessage("chat");
			if(!SessionUtils.pushMessage(chatDetail.getToUserId(),JacksonJSONUtils.beanToJSON(chatDetail))){
				userMapper.saveOfflineMessage(chatDetail);
			}
			result.put("chatDetail", chatDetail);
			result.put(PageParamType.BUSINESS_STATUS, 1);
			result.put(PageParamType.BUSINESS_MESSAGE, "消息发送成功");
		}catch(Exception e){
			logger.error(e.getMessage(), e);
			result.put(PageParamType.BUSINESS_STATUS, -1);
			result.put(PageParamType.BUSINESS_MESSAGE, "系统异常");
		}
		return result;
	}
	
	

}
