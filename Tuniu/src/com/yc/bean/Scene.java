package com.yc.bean;

public class Scene implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id;
	private String place;
	private String photo;
	private String show;
	private long saynum;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getShow() {
		return show;
	}
	public void setShow(String show) {
		this.show = show;
	}
	public long getSaynum() {
		return saynum;
	}
	public void setSaynum(long saynum) {
		this.saynum = saynum;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Scene(long id, String place, String photo, String show, long saynum) {
		super();
		this.id = id;
		this.place = place;
		this.photo = photo;
		this.show = show;
		this.saynum = saynum;
	}
	public Scene() {
		super();
	}
	@Override
	public String toString() {
		return "Scene [id=" + id + ", place=" + place + ", photo=" + photo + ", show=" + show + ", saynum=" + saynum
				+ "]";
	}
	
	
	
	

}
