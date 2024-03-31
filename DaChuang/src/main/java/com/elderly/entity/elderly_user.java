package com.elderly.entity;

public class elderly_user {

	private String USER_ID; 
	private String USER_NAME ;
	private String USER_SEX ;
	private String USER_NUM ;
	private String USER_HEALTH ;
	public elderly_user(String uSER_ID, String uSER_NAME, String uSER_SEX, String uSER_NUM, String uSER_HEALTH) {
		super();
		USER_ID = uSER_ID;
		USER_NAME = uSER_NAME;
		USER_SEX = uSER_SEX;
		USER_NUM = uSER_NUM;
		USER_HEALTH = uSER_HEALTH;
	}
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
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
	public String getUSER_NUM() {
		return USER_NUM;
	}
	public void setUSER_NUM(String uSER_NUM) {
		USER_NUM = uSER_NUM;
	}
	public String getUSER_HEALTH() {
		return USER_HEALTH;
	}
	public void setUSER_HEALTH(String uSER_HEALTH) {
		USER_HEALTH = uSER_HEALTH;
	}
	
	 
	
}
