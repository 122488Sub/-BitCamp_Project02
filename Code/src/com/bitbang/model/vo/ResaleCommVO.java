package com.bitbang.model.vo;

import java.sql.Date;

public class ResaleCommVO {
	private int rs_seq, c_idx, groups, step, lev;
	private String id, pwd, name, content, ip;
	private Date write_date;
	
	public ResaleCommVO() {}

	public ResaleCommVO(int rs_seq, int c_idx, int groups, int step, int lev, String id, String pwd, String name,
			String content, String ip, Date write_date) {
		super();
		this.rs_seq = rs_seq;
		this.c_idx = c_idx;
		this.groups = groups;
		this.step = step;
		this.lev = lev;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.content = content;
		this.ip = ip;
		this.write_date = write_date;
	}
	
	//---------------GETTER//SETTER----------------------
	public int getRs_seq() {
		return rs_seq;
	}

	public void setRs_seq(int rs_seq) {
		this.rs_seq = rs_seq;
	}

	public int getC_idx() {
		return c_idx;
	}

	public void setC_idx(int c_idx) {
		this.c_idx = c_idx;
	}

	public int getGroups() {
		return groups;
	}

	public void setGroups(int groups) {
		this.groups = groups;
	}

	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}

	public int getLev() {
		return lev;
	}

	public void setLev(int lev) {
		this.lev = lev;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public Date getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}

	@Override
	public String toString() {
		return "ResaleCommVO [rs_seq=" + rs_seq + ", c_idx=" + c_idx + ", groups=" + groups + ", step=" + step
				+ ", lev=" + lev + ", id=" + id + ", pwd=" + pwd + ", name=" + name + ", content=" + content + ", ip="
				+ ip + ", write_date=" + write_date + "]";
	}

	
	
	
	
	
}
