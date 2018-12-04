package com.yc.bean;

public class ScenePhoto implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id;
	private long sid;
	private long cid;
	public long getCid() {
		return cid;
	}
	public void setCid(long cid) {
		this.cid = cid;
	}
	private String photo;
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
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public ScenePhoto(long id, long sid, long cid, String photo) {
		super();
		this.id = id;
		this.sid = sid;
		this.cid = cid;
		this.photo = photo;
	}
	public ScenePhoto() {
		super();
	}
	@Override
	public String toString() {
		return "ScenePhoto [id=" + id + ", sid=" + sid + ", photo=" + photo + "]";
	}
	
	

}
