package com.yc.bean;

import java.sql.Timestamp;

public class Review implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id;
	private long sid;
	private long uid1;
	private long uid2;
	private String message;
	private Timestamp reviewTime;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getSid() {
		return sid;
	}
	public void setSid(long sid) {
		this.sid = sid;
	}
	public long getUid1() {
		return uid1;
	}
	public void setUid1(long uid1) {
		this.uid1 = uid1;
	}
	public long getUid2() {
		return uid2;
	}
	public void setUid2(long uid2) {
		this.uid2 = uid2;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Timestamp getReviewTime() {
		return reviewTime;
	}
	public void setReviewTime(Timestamp reviewTime) {
		this.reviewTime = reviewTime;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Review(long id, long sid, long uid1, long uid2, String message, Timestamp reviewTime) {
		super();
		this.id = id;
		this.sid = sid;
		this.uid1 = uid1;
		this.uid2 = uid2;
		this.message = message;
		this.reviewTime = reviewTime;
	}
	public Review() {
		super();
	}
	@Override
	public String toString() {
		return "Review [id=" + id + ", sid=" + sid + ", uid1=" + uid1 + ", uid2=" + uid2 + ", message=" + message
				+ ", reviewTime=" + reviewTime + "]";
	}
	
	

}
