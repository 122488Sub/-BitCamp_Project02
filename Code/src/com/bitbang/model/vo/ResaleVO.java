package com.bitbang.model.vo;

import java.sql.Date;

public class ResaleVO { 
	private Date reg_date;
	private String id, pwd, name, subject, address, category, category_child, 
				   filename, file_ori_name, ip, hash_tag, content;
	private int rs_idx,	rs_seq, member_idx, hit, price;
	public ResaleVO() {}
	public ResaleVO(Date reg_date, String content,String id, String pwd, String name, String subject, String address, String category,
			String category_child, String filename, String file_ori_name, String ip, String hash_tag, int rs_idx,
			int rs_seq, int member_idx, int hit, int price) {
		super();
		this.reg_date = reg_date;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.subject = subject;
		this.address = address;
		this.category = category;
		this.category_child = category_child;
		this.filename = filename;
		this.file_ori_name = file_ori_name;
		this.ip = ip;
		this.hash_tag = hash_tag;
		this.rs_idx = rs_idx;
		this.rs_seq = rs_seq;
		this.member_idx = member_idx;
		this.hit = hit;
		this.content = content;
		this.price = price;
	}
	
	
	//------------------GETER/SETTER------------------
	
	
	public Date getReg_date() {
		return reg_date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
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
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getCategory_child() {
		return category_child;
	}
	public void setCategory_child(String category_child) {
		this.category_child = category_child;
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
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getHash_tag() {
		return hash_tag;
	}
	public void setHash_tag(String hash_tag) {
		this.hash_tag = hash_tag;
	}
	public int getRs_idx() {
		return rs_idx;
	}
	public void setRs_idx(int rs_idx) {
		this.rs_idx = rs_idx;
	}
	public int getRs_seq() {
		return rs_seq;
	}
	public void setRs_seq(int rs_seq) {
		this.rs_seq = rs_seq;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
}
