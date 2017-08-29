package org.nv.dom.web.service;

import java.util.List;
import java.util.Map;

import org.nv.dom.domain.chat.ChatDetail;
import org.nv.dom.domain.chat.ChatInfo;
import org.nv.dom.domain.chat.OfflineChat;
import org.nv.dom.domain.settlement.Settlement;
import org.nv.dom.domain.speech.OfflineMessage;

public interface UserService {
	
	public Map<String, Object> getConnectionInfo(ChatInfo chatInfo);
	
	public Map<String, Object> sendMessage(ChatDetail chatDetail);
	
	public Map<String, Object> sendMessageBatch(List<ChatDetail> chatDetails);

	public Map<String, Object> sendOnlineSettlement(Settlement settlement);

	public Map<String, Object> saveOfflineSpeech(OfflineMessage offlineMessage);

	public Map<String, Object> saveOfflineChat(OfflineChat offlineChat);

}
