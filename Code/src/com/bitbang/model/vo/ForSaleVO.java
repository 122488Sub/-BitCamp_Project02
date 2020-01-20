package com.bitbang.model.vo;

public class ForSaleVO {
	int forsale_seq, forsale_idx = 1;

	String  subject, address, detail;
	String regdate;
	public ForSaleVO() {
	}
	public ForSaleVO(String subject, 
			String address, String detail) 	{
		super();
		
		this.subject = subject;
		this.address = address;
		this.detail = detail;
		
	}
	
	public ForSaleVO(int forsale_seq, int forsale_idx, int rea_idx, String subject, 
			String address, String detail,double pos_x, double pos_y, String regdate) 	{
		super();
		this.forsale_seq = forsale_seq;
		this.forsale_idx = forsale_idx;
		this.subject = subject;
		this.address = address;
		this.detail = detail;
		this.regdate = regdate;
	}
	public int getForsale_seq() {
		return forsale_seq;
	}
	public void setForsale_seq(int forsale_seq) {
		this.forsale_seq = forsale_seq;
	}
	public int getForsale_idx() {
		return forsale_idx;
	}
	public void setForsale_idx(int forsale_idx) {
		this.forsale_idx = forsale_idx;
	}
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "ForSaleVO [forsale_seq=" + forsale_seq + ", forsale_idx=" + forsale_idx 
				+ ", subject=" + subject + ", address=" + address + ", detail=" + detail 
				+ ", regdate=" + regdate + "]";
	}

	
	

}
