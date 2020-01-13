package com.bitbang.model.vo;

public class ResaleImgVO {
	
	private int rs_seq; 
	private String rs_file_ori, rs_file_name;
	
	public ResaleImgVO () {}

	public ResaleImgVO(int rs_seq, String rs_file_ori, String rs_file_name) {
		super();
		this.rs_seq = rs_seq;
		this.rs_file_ori = rs_file_ori;
		this.rs_file_name = rs_file_name;
	}

	public int getRs_seq() {
		return rs_seq;
	}

	public void setRs_seq(int rs_seq) {
		this.rs_seq = rs_seq;
	}

	public String getRs_file_ori() {
		return rs_file_ori;
	}

	public void setRs_file_ori(String rs_file_ori) {
		this.rs_file_ori = rs_file_ori;
	}

	public String getRs_file_name() {
		return rs_file_name;
	}

	public void setRs_file_name(String rs_file_name) {
		this.rs_file_name = rs_file_name;
	}

	@Override
	public String toString() {
		return "ImgVO [rs_seq=" + rs_seq + ", rs_file_ori=" + rs_file_ori + ", rs_file_name=" + rs_file_name + "]";
	}
	
	
}
