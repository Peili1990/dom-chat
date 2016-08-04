package org.nv.dom.websocket;

import java.io.IOException;

import javax.websocket.CloseReason;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import org.apache.log4j.Logger;
import org.nv.dom.websocket.util.SessionUtils;

@ServerEndpoint("/websocket/{userId}")
public class WebSocketChat {
	
	private static Logger logger = Logger.getLogger(WebSocketChat.class);

	@OnMessage
    public void onMessage(@PathParam("userId") long userId, String message, Session session) 
    	throws IOException, InterruptedException {
		
		// Print the client message for testing purposes
		System.out.println("Received: " + message);
		
		// Send the first message to the client
		session.getBasicRemote().sendText("This is the first server message");
		
		// Send 3 messages to the client every 5 seconds
		int sentMessages = 0;
		while(sentMessages < 3){
			Thread.sleep(5000);
			session.getBasicRemote().
				sendText("This is an intermediate server message. Count: " 
					+ sentMessages);
			sentMessages++;
		}
		
		// Send a final message to the client
		session.getBasicRemote().sendText("This is the last server message");
    }
	
	@OnOpen
    public void onOpen (@PathParam("userId") long userId, Session session) {
		logger.info("Websocket Start Connection:" + userId);
        SessionUtils.put(userId, session);
    }

    @OnClose
    public void onClose (@PathParam("userId") long userId, CloseReason closeReason, Session session) {
    	logger.info("Websocket Close Connection:" + userId);
    	SessionUtils.remove(userId);
    }
}
