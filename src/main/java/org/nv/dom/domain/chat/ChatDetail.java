package org.nv.dom.domain.chat;

public class ChatDetail {
	
	private String message;
	private String chatId;
	private long toUserId;
	private String content;
	private String createTime;
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getChatId() {
		return chatId;
	}
	public void setChatId(String chatId) {
		this.chatId = chatId;
	}
	public long getToUserId() {
		return toUserId;
	}
	public void setToUserId(long toUserId) {
		this.toUserId = toUserId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	
	
	
	

}
