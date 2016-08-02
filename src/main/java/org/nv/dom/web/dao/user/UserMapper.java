package org.nv.dom.web.dao.user;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
	
	public List<Long> getUserIdListByGameId(long gameId);

}
