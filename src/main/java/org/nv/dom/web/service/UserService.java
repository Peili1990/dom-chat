package org.nv.dom.web.service;

import java.util.Map;

import org.nv.dom.domain.chat.ChatDetail;
import org.nv.dom.domain.chat.ChatInfo;
import org.nv.dom.domain.settlement.Settlement;

public interface UserService {
	
	public Map<String, Object> getConnectionInfo(ChatInfo chatInfo);
	
	public Map<String, Object> sendMessage(ChatDetail chatDetail);

	public Map<String, Object> sendOnlineSettlement(Settlement settlement);

}
