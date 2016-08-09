package org.nv.dom.dto.assemble;

public class DeleteSpeechDTO {
	
	private String message;
	private long gameId;
	private long newspaperId;
	private long speechId;
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public long getGameId() {
		return gameId;
	}
	public void setGameId(long gameId) {
		this.gameId = gameId;
	}
	public long getNewspaperId() {
		return newspaperId;
	}
	public void setNewspaperId(long newspaperId) {
		this.newspaperId = newspaperId;
	}
	public long getSpeechId() {
		return speechId;
	}
	public void setSpeechId(long speechId) {
		this.speechId = speechId;
	}

}
