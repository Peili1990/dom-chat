package org.nv.dom.domain.speech;

public class Speech {
	
	private long newspaperId;
	private long playerId;
	private long characterId;
	private String characterName;
	private String avatar;
	private Integer type;
	private long content;
	private String createTime;
	
	public long getNewspaperId() {
		return newspaperId;
	}
	public void setNewspaperId(long newspaperId) {
		this.newspaperId = newspaperId;
	}
	public long getPlayerId() {
		return playerId;
	}
	public void setPlayerId(long playerId) {
		this.playerId = playerId;
	}
	public long getCharacterId() {
		return characterId;
	}
	public void setCharacterId(long characterId) {
		this.characterId = characterId;
	}
	public String getCharacterName() {
		return characterName;
	}
	public void setCharacterName(String characterName) {
		this.characterName = characterName;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public long getContent() {
		return content;
	}
	public void setContent(long content) {
		this.content = content;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	
}
