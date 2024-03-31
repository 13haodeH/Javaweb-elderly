package com.elderly.entity;

public class drug_user {
		private String DRUG_ID;
		private String DRUG_NAME;
		private String DRUG_USE;
		private String DRUG_PRICE;
		private String DRUG_NUM;
		public drug_user(String dRUG_ID, String dRUG_NAME, String dRUG_USE, String dRUG_PRICE, String dRUG_NUM) {
			super();
			DRUG_ID = dRUG_ID;
			DRUG_NAME = dRUG_NAME;
			DRUG_USE = dRUG_USE;
			DRUG_PRICE = dRUG_PRICE;
			DRUG_NUM = dRUG_NUM;
		}
		public String getDRUG_ID() {
			return DRUG_ID;
		}
		public void setDRUG_ID(String dRUG_ID) {
			DRUG_ID = dRUG_ID;
		}
		public String getDRUG_NAME() {
			return DRUG_NAME;
		}
		public void setDRUG_NAME(String dRUG_NAME) {
			DRUG_NAME = dRUG_NAME;
		}
		public String getDRUG_USE() {
			return DRUG_USE;
		}
		public void setDRUG_USE(String dRUG_USE) {
			DRUG_USE = dRUG_USE;
		}
		public String getDRUG_PRICE() {
			return DRUG_PRICE;
		}
		public void setDRUG_PRICE(String dRUG_PRICE) {
			DRUG_PRICE = dRUG_PRICE;
		}
		public String getDRUG_NUM() {
			return DRUG_NUM;
		}
		public void setDRUG_NUM(String dRUG_NUM) {
			DRUG_NUM = dRUG_NUM;
		}
		
		
}
