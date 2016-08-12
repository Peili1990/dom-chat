package org.nv.dom.web.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.nv.dom.config.PageParamType;
import org.nv.dom.domain.chat.ChatInfo;
import org.nv.dom.web.dao.user.UserMapper;
import org.nv.dom.web.service.UserService;
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
			chatInfo = userMapper.getChatInfoByPlayerId(chatInfo.getToPlayerId());
			long fromUserId = chatInfo.getFromUserId();
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
	
	

}
