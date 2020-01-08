package com.bitbang.model.vo;

public class ForSaleVO {
	int forsale_seq, forsale_idx = 1, hit;

	String member_id, name, subject, address, content, filename, file_ori_name, regdate;

	public ForSaleVO(int forsale_seq, int forsale_idx, String member_id, String name, String subject,
			String address, String content, String filename, String file_ori_name, String regdate, int hit) {
		super();
		this.forsale_seq = forsale_seq;
		this.forsale_idx = forsale_idx;
		this.member_id = member_id;
		this.name = name;
		this.subject = subject;
		this.address = address;
		this.content = content;
		this.filename = filename;
		this.file_ori_name = file_ori_name;
		this.regdate = regdate;
		this.hit = hit;
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

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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
		return "ForSaleVO [forsale_seq=" + forsale_seq + ", forsale_idx=" + forsale_idx + ", hit=" + hit
				+ ", member_id=" + member_id + ", name=" + name + ", subject=" + subject + ", address=" + address
				+ ", content=" + content + ", filename=" + filename + ", file_ori_name=" + file_ori_name + ", regdate="
				+ regdate + "]";
	}
	
	
	

}
