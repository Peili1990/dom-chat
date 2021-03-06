package org.nv.dom.web.dao.user;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.nv.dom.domain.chat.ChatDetail;
import org.nv.dom.domain.chat.ChatInfo;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
	
	public List<Long> getUserIdListByGameId(long gameId);
	
	public List<Long> getJudgerIdListByGameId(long gameId);
	
	public int saveOfflineSpeech(Map<String, Object> map);
	
	public int updateOfflineChat(@Param("chatId")String chatId, @Param("createTime")String createTime);
	
	public ChatInfo getChatInfoByPlayerId(long playerId);
	
	public ChatInfo getChatInfoByUserId(long userId);
	
	public int saveMessage(ChatDetail chatDetail);
	
	public int saveMessageBatch(List<ChatDetail> chatDetails);

}
