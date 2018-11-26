package com.yc.bean;

import java.sql.Timestamp;

public class TravelLine implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id;
	private long sid;
	private Timestamp journeytime;
	private String line;
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
	public Timestamp getJourneytime() {
		return journeytime;
	}
	public void setJourneytime(Timestamp journeytime) {
		this.journeytime = journeytime;
	}
	public String getLine() {
		return line;
	}
	public void setLine(String line) {
		this.line = line;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public TravelLine(long id, long sid, Timestamp journeytime, String line) {
		super();
		this.id = id;
		this.sid = sid;
		this.journeytime = journeytime;
		this.line = line;
	}
	public TravelLine() {
		super();
	}
	@Override
	public String toString() {
		return "TravelLine [id=" + id + ", sid=" + sid + ", journeytime=" + journeytime + ", line=" + line + "]";
	}
	
	
	
}
