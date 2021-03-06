package com.yc.bean;

import java.sql.Timestamp;

public class ComboOrder implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id;
	private long cid;
	private long uid;
	private String dtel;
	private String address;
	private String dshow;
	private Timestamp stattime;
	private Timestamp systime;
	private long number;
	private String truename;
	private String mailbox;
	private double dprice;
	public String getTruename() {
		return truename;
	}
	public void setTruename(String truename) {
		this.truename = truename;
	}
	public String getMailbox() {
		return mailbox;
	}
	public void setMailbox(String mailbox) {
		this.mailbox = mailbox;
	}
	public double getDprice() {
		return dprice;
	}
	public void setDprice(double dprice) {
		this.dprice = dprice;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getCid() {
		return cid;
	}
	public void setCid(long cid) {
		this.cid = cid;
	}
	public long getUid() {
		return uid;
	}
	public void setUid(long uid) {
		this.uid = uid;
	}
	public String getDtel() {
		return dtel;
	}
	public void setDtel(String dtel) {
		this.dtel = dtel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDshow() {
		return dshow;
	}
	public void setDshow(String dshow) {
		this.dshow = dshow;
	}
	public Timestamp getStattime() {
		return stattime;
	}
	public void setStattime(Timestamp stattime) {
		this.stattime = stattime;
	}
	public Timestamp getSystime() {
		return systime;
	}
	public void setSystime(Timestamp systime) {
		this.systime = systime;
	}
	public long getNumber() {
		return number;
	}
	public void setNumber(long number) {
		this.number = number;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public ComboOrder() {
		super();
	}
	public ComboOrder(long id, long cid, long uid, String dtel, String address, String dshow, Timestamp stattime,
			Timestamp systime, long number, String leavecity, String truename, String mailbox, double dprice) {
		super();
		this.id = id;
		this.cid = cid;
		this.uid = uid;
		this.dtel = dtel;
		this.address = address;
		this.dshow = dshow;
		this.stattime = stattime;
		this.systime = systime;
		this.number = number;
		this.truename = truename;
		this.mailbox = mailbox;
		this.dprice = dprice;
	}
	@Override
	public String toString() {
		return "ComboOrder [id=" + id + ", cid=" + cid + ", uid=" + uid + ", dtel=" + dtel + ", address=" + address
				+ ", dshow=" + dshow + ", stattime=" + stattime + ", systime=" + systime + ", number=" + number
				+ ", truename=" + truename + ", mailbox=" + mailbox + ", dprice=" + dprice + "]";
	}
	
	
	
	
	

}
