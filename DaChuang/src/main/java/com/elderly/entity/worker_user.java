package com.elderly.entity;

public class worker_user {
	private String USER_NAME;	
	private String USER_SEX ;
	private String USER_PHONE ;
	private String USER_CHOSE ;
	private String USER_STATU ;
	private String USER_MASSAGE ;

	public worker_user(String uSER_NAME, String uSER_SEX, String uSER_PHONE, String uSER_CHOSE, String uSER_STATU,
			String uSER_MASSAGE) {
		super();
		USER_NAME = uSER_NAME;
		USER_SEX = uSER_SEX;
		USER_PHONE = uSER_PHONE;
		USER_CHOSE = uSER_CHOSE;
		USER_STATU = uSER_STATU;
		USER_MASSAGE = uSER_MASSAGE;
	}
	public String getUSER_NAME() {
		return USER_NAME;
	}
	public void setUSER_NAME(String uSER_NAME) {
		USER_NAME = uSER_NAME;
	}
	public String getUSER_SEX() {
		return USER_SEX;
	}
	public void setUSER_SEX(String uSER_SEX) {
		USER_SEX = uSER_SEX;
	}
	public String getUSER_PHONE() {
		return USER_PHONE;
	}
	public void setUSER_PHONE(String uSER_PHONE) {
		USER_PHONE = uSER_PHONE;
	}
	public String getUSER_CHOSE() {
		return USER_CHOSE;
	}
	public void setUSER_CHOSE(String uSER_CHOSE) {
		USER_CHOSE = uSER_CHOSE;
	}
	public String getUSER_STATU() {
		return USER_STATU;
	}
	public void setUSER_STATU(String uSER_STATU) {
		USER_STATU = uSER_STATU;
	}
	public String getUSER_MASSAGE() {
		return USER_MASSAGE;
	}
	public void setUSER_MASSAGE(String uSER_MASSAGE) {
		USER_MASSAGE = uSER_MASSAGE;
	}
	
}
