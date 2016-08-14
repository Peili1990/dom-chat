package org.nv.dom.websocket.util;

import javax.websocket.Session;

import org.apache.log4j.Logger;

import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/**
 * 功能说明：用来存储业务定义的sessionId和连接的对应关系
 * 利用业务逻辑中组装的sessionId获取有效连接后进行后续操作
 * 作者：liuxing(2014-12-26 02:32)
*/
public class SessionUtils {

	private static Logger logger = Logger.getLogger(SessionUtils.class);
	
	public static Map<Long, Set<Session>> clients = new ConcurrentHashMap<>();

	public static void put(long userId, Session session) {
		Set<Session> sessions = clients.get(userId);
		if(sessions == null){
			sessions = new HashSet<>();
		}
		sessions.add(session);
		clients.put(userId, sessions);
	}

	public static Set<Session> get(long userId) {
		return clients.get(userId);
	}

	public static void remove(long userId, Session session) {
		Set<Session> sessions = clients.get(userId);
		if(sessions == null){
			return;
		}
		sessions.remove(session);
		if(sessions.isEmpty()){
			clients.remove(userId);
		}
	}

	/**
	 * 判断是否有连接
	 * 
	 * @param relationId
	 * @param userCode
	 * @return
	 */
	public static boolean hasConnection(long userId) {
		return clients.containsKey(userId);
	}
	/**
	 * 推送消息
	 * 
	 */
	public static boolean pushMessage(long userId, String content) {
		try {
			if (hasConnection(userId)) {
				for(Session session : get(userId)){
					session.getBasicRemote().sendText(content);		
				}
				return true;
			}
			return false;
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
			return false;
		}
	}
	
	/**
	 * 批量推送消息
	 * 
	 */
	public static List<Long> pushMessageBatch(List<Long> users, String content) {
		try {
			logger.info("批量推送消息开始");
			Iterator<Long> iter = users.iterator();
			while (iter.hasNext()) {
				Long userId = iter.next();
				if (hasConnection(userId)) {
					for(Session session : get(userId)){
						session.getBasicRemote().sendText(content);		
					}
					iter.remove();
				}
			}
			logger.info("批量推送消息结束");
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
		}
		return users;
	}
}
