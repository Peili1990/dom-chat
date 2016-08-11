package org.nv.dom.web.dao.user;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
	
	public List<Long> getUserIdListByGameId(long gameId);
	
	public int saveOfflineSpeech(Map<String, Object> map);
	
	public long getUserIdByPlayerId(long playerId);

}
