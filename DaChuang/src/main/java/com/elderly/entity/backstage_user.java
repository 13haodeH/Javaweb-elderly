package com.elderly.entity;

public class backstage_user {

		private String USER_NAME;
		private String USER_PASSWORD;
		public backstage_user(String uSER_NAME, String uSER_PASSWORD) {
			super();
			USER_NAME = uSER_NAME;
			USER_PASSWORD = uSER_PASSWORD;
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
		
}
