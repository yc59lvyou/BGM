package com.yc.bean;

public class Combo implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id;
	private long sid;
	private String type;
	private String tname;
	private String tphoto;
	private double price;
	private String arrange;
	private String description;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTphoto() {
		return tphoto;
	}
	public void setTphoto(String tphoto) {
		this.tphoto = tphoto;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getArrange() {
		return arrange;
	}
	public void setArrange(String arrange) {
		this.arrange = arrange;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Combo(long id, long sid, String type, String tname, String tphoto, double price, String arrange,
			String description) {
		super();
		this.id = id;
		this.sid = sid;
		this.type = type;
		this.tname = tname;
		this.tphoto = tphoto;
		this.price = price;
		this.arrange = arrange;
		this.description = description;
	}
	public Combo() {
		super();
	}
	@Override
	public String toString() {
		return "Combo [id=" + id + ", sid=" + sid + ", type=" + type + ", tname=" + tname + ", tphoto=" + tphoto
				+ ", price=" + price + ", arrange=" + arrange + ", description=" + description + "]";
	}
	
	
	
}
