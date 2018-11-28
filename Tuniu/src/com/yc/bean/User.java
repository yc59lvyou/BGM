package com.yc.bean;

import java.sql.Timestamp;

public class User implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private long id;
	private String name;
	private String account;
	private String pwd;
	private String tel;
	private Timestamp createDate;
	private String status;
	private long failNumber;
	private String mailbox;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Timestamp getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public long getFailNumber() {
		return failNumber;
	}
	public void setFailNumber(long failNumber) {
		this.failNumber = failNumber;
	}
	public String getMailbox() {
		return mailbox;
	}
	public void setMailbox(String mailbox) {
		this.mailbox = mailbox;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public User(long id, String name, String account, String pwd, String tel, Timestamp createDate, String status,
			long failNumber, String mailbox) {
		super();
		this.id = id;
		this.name = name;
		this.account = account;
		this.pwd = pwd;
		this.tel = tel;
		this.createDate = createDate;
		this.status = status;
		this.failNumber = failNumber;
		this.mailbox = mailbox;
	}
	public User() {
		super();
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", account=" + account + ", pwd=" + pwd + ", tel=" + tel
				+ ", createDate=" + createDate + ", status=" + status + ", failNumber=" + failNumber + ", mailbox="
				+ mailbox + "]";
	}
	
	
	

	
}
