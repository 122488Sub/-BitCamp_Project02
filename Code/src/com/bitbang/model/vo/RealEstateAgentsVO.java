package com.bitbang.model.vo;

public class RealEstateAgentsVO {
	
	int rea_idx;
	String rea_name, rea_company, rea_phone;
	
	public RealEstateAgentsVO() {
		// TODO Auto-generated constructor stub
	}
	
	public RealEstateAgentsVO(int rea_idx, String rea_name, String rea_company, String rea_phone) {
		super();
		this.rea_idx = rea_idx;
		this.rea_name = rea_name;
		this.rea_company = rea_company;
		this.rea_phone = rea_phone;
	}

	public int getRea_idx() {
		return rea_idx;
	}

	public void setRea_idx(int rea_idx) {
		this.rea_idx = rea_idx;
	}

	public String getRea_name() {
		return rea_name;
	}

	public void setRea_name(String rea_name) {
		this.rea_name = rea_name;
	}

	public String getRea_company() {
		return rea_company;
	}

	public void setRea_company(String rea_company) {
		this.rea_company = rea_company;
	}

	public String getRea_phone() {
		return rea_phone;
	}

	public void setRea_phone(String rea_phone) {
		this.rea_phone = rea_phone;
	}

	@Override
	public String toString() {
		return "RealEstateAgentsVO [rea_idx=" + rea_idx + ", rea_name=" + rea_name + ", rea_company=" + rea_company
				+ ", rea_phone=" + rea_phone + "]";
	}
	
	
	

}
