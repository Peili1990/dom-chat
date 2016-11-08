package org.nv.dom.websocket;

import java.io.IOException;

import javax.websocket.OnClose;
import javax.websocket.OnError;
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
		logger.info("Received: " + message);
		
    }
	
	@OnOpen
    public void onOpen (@PathParam("userId") long userId, Session session) throws IOException {
		logger.info("Websocket Start Connection:" + userId);
        SessionUtils.put(userId, session);
    }

    @OnClose
    public void onClose (@PathParam("userId") long userId,Session session) {
    	logger.info("Websocket Close Connection:" + userId);
    	SessionUtils.remove(userId, session);
    }
    
    @OnError
    public void onError(@PathParam("userId") long userId,Session session,Throwable error) {
    	logger.info("An error occurred.");
    	logger.error(error.getMessage(),error);
    }
}
