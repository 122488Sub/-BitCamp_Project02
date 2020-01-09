package com.bitbang.model.vo;

public class ForSaleVO {
	int forsale_seq, forsale_idx = 1, rea_idx;

	String  subject, address, detail, filename, file_ori_name, regdate;
	public ForSaleVO() {
	}
	public ForSaleVO(int forsale_seq, int forsale_idx, int rea_idx, String subject, 
			String address, String detail,String filename, String file_ori_name, String regdate) 	{
		super();
		this.forsale_seq = forsale_seq;
		this.forsale_idx = forsale_idx;
		this.rea_idx = rea_idx;
		this.subject = subject;
		this.address = address;
		this.detail = detail;
		this.filename = filename;
		this.file_ori_name = file_ori_name;
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
	public int getRea_idx() {
		return rea_idx;
	}
	public void setRea_idx(int rea_idx) {
		this.rea_idx = rea_idx;
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
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFile_ori_name() {
		return file_ori_name;
	}
	public void setFile_ori_name(String file_ori_name) {
		this.file_ori_name = file_ori_name;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "ForSaleVO [forsale_seq=" + forsale_seq + ", forsale_idx=" + forsale_idx + ", rea_idx=" + rea_idx
				+ ", subject=" + subject + ", address=" + address + ", detail=" + detail + ", filename=" + filename
				+ ", file_ori_name=" + file_ori_name + ", regdate=" + regdate + "]";
	}

	
	

}
