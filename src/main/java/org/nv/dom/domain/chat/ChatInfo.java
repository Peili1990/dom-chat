package org.nv.dom.domain.chat;

public class ChatInfo {
	
	private String chatId;
	private long fromUserId;
	private long toUserId;
	private long toPlayerId;
	public String getChatId() {
		return chatId;
	}
	public void setChatId(String chatId) {
		this.chatId = chatId;
	}
	public long getFromUserId() {
		return fromUserId;
	}
	public void setFromUserId(long fromUserId) {
		this.fromUserId = fromUserId;
	}
	public long getToUserId() {
		return toUserId;
	}
	public void setToUserId(long toUserId) {
		this.toUserId = toUserId;
	}
	public long getToPlayerId() {
		return toPlayerId;
	}
	public void setToPlayerId(long toPlayerId) {
		this.toPlayerId = toPlayerId;
	}
	
	

}
