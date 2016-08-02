package org.nv.dom.websocket.util;

import javax.websocket.Session;

import org.apache.log4j.Logger;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * 功能说明：用来存储业务定义的sessionId和连接的对应关系
 * 利用业务逻辑中组装的sessionId获取有效连接后进行后续操作
 * 作者：liuxing(2014-12-26 02:32)
*/
public class SessionUtils {

	private static Logger logger = Logger.getLogger(SessionUtils.class);
	
	public static Map<Long, Session> clients = new ConcurrentHashMap<>();

	public static void put(long userId, Session session) {
		clients.put(userId, session);
	}

	public static Session get(long userId) {
		return clients.get(userId);
	}

	public static void remove(long userId) {
		clients.remove(userId);
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
					get(userId).getBasicRemote().sendText(content);
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
