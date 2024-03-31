package com.elderly.entity;

public class service_user {
		private String SERVICE_NAME;
		private String SERVICE_AGE;
		private String SERVICE_PHONE;
		private String SERVICE_TYPE;
		private String SERVICE_WHAT;
		public service_user(String sERVICE_NAME, String sERVICE_AGE, String sERVICE_PHONE, String sERVICE_TYPE,
				String sERVICE_WHAT) {
			super();
			SERVICE_NAME = sERVICE_NAME;
			SERVICE_AGE = sERVICE_AGE;
			SERVICE_PHONE = sERVICE_PHONE;
			SERVICE_TYPE = sERVICE_TYPE;
			SERVICE_WHAT = sERVICE_WHAT;
		}
		public String getSERVICE_NAME() {
			return SERVICE_NAME;
		}
		public void setSERVICE_NAME(String sERVICE_NAME) {
			SERVICE_NAME = sERVICE_NAME;
		}
		public String getSERVICE_AGE() {
			return SERVICE_AGE;
		}
		public void setSERVICE_AGE(String sERVICE_AGE) {
			SERVICE_AGE = sERVICE_AGE;
		}
		public String getSERVICE_PHONE() {
			return SERVICE_PHONE;
		}
		public void setSERVICE_PHONE(String sERVICE_PHONE) {
			SERVICE_PHONE = sERVICE_PHONE;
		}
		public String getSERVICE_TYPE() {
			return SERVICE_TYPE;
		}
		public void setSERVICE_TYPE(String sERVICE_TYPE) {
			SERVICE_TYPE = sERVICE_TYPE;
		}
		public String getSERVICE_WHAT() {
			return SERVICE_WHAT;
		}
		public void setSERVICE_WHAT(String sERVICE_WHAT) {
			SERVICE_WHAT = sERVICE_WHAT;
		}
	
		
		
}
