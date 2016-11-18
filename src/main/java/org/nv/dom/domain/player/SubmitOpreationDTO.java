package org.nv.dom.domain.player;

public class SubmitOpreationDTO {
	
	/** 游戏id */
	private long gameId;
	/** 玩家id */
	private long playerId;
	/** 行动 */
	private String action;
	/** 特权 */
	private String privilege;
	/** 投票 */
	private String vote;
	
	public long getGameId() {
		return gameId;
	}
	public void setGameId(long gameId) {
		this.gameId = gameId;
	}
	public long getPlayerId() {
		return playerId;
	}
	public void setPlayerId(long playerId) {
		this.playerId = playerId;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public String getPrivilege() {
		return privilege;
	}
	public void setPrivilege(String privilege) {
		this.privilege = privilege;
	}
	public String getVote() {
		return vote;
	}
	public void setVote(String vote) {
		this.vote = vote;
	}
	
	

}
