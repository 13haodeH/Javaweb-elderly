package com.elderly.entity;

public class register_user {
		private String USER_NAME;
		private String USER_PASSWORD;
		private String USER_REPASSWORD;
		private String USER_PHONE;
		public register_user(String uSER_NAME, String uSER_PASSWORD, String uSER_REPASSWORD, String uSER_PHONE) {
			super();
			USER_NAME = uSER_NAME;
			USER_PASSWORD = uSER_PASSWORD;
			USER_REPASSWORD = uSER_REPASSWORD;
			USER_PHONE = uSER_PHONE;
		}
		public String getUSER_NAME() {
			return USER_NAME;
		}
		public void setUSER_NAME(String uSER_NAME) {
			USER_NAME = uSER_NAME;
		}
		public String getUSER_PASSWORD() {
			return USER_PASSWORD;
		}
		public void setUSER_PASSWORD(String uSER_PASSWORD) {
			USER_PASSWORD = uSER_PASSWORD;
		}
		public String getUSER_REPASSWORD() {
			return USER_REPASSWORD;
		}
		public void setUSER_REPASSWORD(String uSER_REPASSWORD) {
			USER_REPASSWORD = uSER_REPASSWORD;
		}
		public String getUSER_PHONE() {
			return USER_PHONE;
		}
		public void setUSER_PHONE(String uSER_PHONE) {
			USER_PHONE = uSER_PHONE;
		}
		
}
