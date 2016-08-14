package org.nv.dom.web.service;

import java.util.Map;

import org.nv.dom.domain.chat.ChatDetail;
import org.nv.dom.domain.chat.ChatInfo;

public interface UserService {
	
	public Map<String, Object> getConnectionInfo(ChatInfo chatInfo);
	
	public Map<String, Object> sendMessage(ChatDetail chatDetail);

}
