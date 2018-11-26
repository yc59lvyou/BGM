package com.yc.bean;

import java.sql.Timestamp;

public class Stratege implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id;
	private long uid;
	private String title;
	private String photo;
	private String author;
	private Timestamp releaseTime;
	private String content;
	private String status;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getUid() {
		return uid;
	}
	public void setUid(long uid) {
		this.uid = uid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Timestamp getReleaseTime() {
		return releaseTime;
	}
	public void setReleaseTime(Timestamp releaseTime) {
		this.releaseTime = releaseTime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Stratege(long id, long uid, String title, String photo, String author, Timestamp releaseTime, String content,
			String status) {
		super();
		this.id = id;
		this.uid = uid;
		this.title = title;
		this.photo = photo;
		this.author = author;
		this.releaseTime = releaseTime;
		this.content = content;
		this.status = status;
	}
	public Stratege() {
		super();
	}
	@Override
	public String toString() {
		return "Stratege [id=" + id + ", uid=" + uid + ", title=" + title + ", photo=" + photo + ", author=" + author
				+ ", releaseTime=" + releaseTime + ", content=" + content + ", status=" + status + "]";
	}
	
	
	
}
