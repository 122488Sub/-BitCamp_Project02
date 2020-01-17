package com.bitbang.model.vo;

import java.sql.Date;

public class MemberVO {
	private String name, id, pwd, phone, email;
	private int member_idx;
	private Date regdate;
	
	public MemberVO() {}


	public MemberVO(int member_idx, String name, String id , String pwd, String phone, String email, Date regdate) {
		super();
		this.name = name;
		this.id = id;
		this.pwd = pwd;
		this.phone = phone;
		this.email = email;
		this.member_idx = member_idx;
		this.regdate = regdate;
	}



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getMember_idx() {
		return member_idx;
	}

	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
	
	
}
