package org.nv.dom.web.dao.user;

import java.util.List;
import java.util.Map;

import org.nv.dom.domain.chat.ChatDetail;
import org.nv.dom.domain.chat.ChatInfo;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
	
	public List<Long> getUserIdListByGameId(long gameId);
	
	public int saveOfflineSpeech(Map<String, Object> map);
	
	public ChatInfo getChatInfoByPlayerId(long playerId);
	
	public ChatInfo getChatInfoByUserId(long userId);
	
	public int saveOfflineMessage(ChatDetail chatDetail);

}
