package com.bitbang.model.vo;

import java.util.Date;

public class CommunityVO {
	private int c_index;
	private int c_seq;
	private int c_parent;
	private int c_depth;
	private int c_order;
	private String c_title;
	private String c_content;
	private int c_hit;
	private Date c_date;
	private String member_id;
	public CommunityVO() {
		super();
	}
	public CommunityVO(int c_index, int c_seq, int c_parent, int c_depth, int c_order, String c_title, String c_content,
			int c_hit, Date c_date, String member_id) {
		super();
		this.c_index = c_index;
		this.c_seq = c_seq;
		this.c_parent = c_parent;
		this.c_depth = c_depth;
		this.c_order = c_order;
		this.c_title = c_title;
		this.c_content = c_content;
		this.c_hit = c_hit;
		this.c_date = c_date;
		this.member_id = member_id;
	}
	public int getC_index() {
		return c_index;
	}
	public void setC_index(int c_index) {
		this.c_index = c_index;
	}
	public int getC_seq() {
		return c_seq;
	}
	public void setC_seq(int c_seq) {
		this.c_seq = c_seq;
	}
	public int getC_parent() {
		return c_parent;
	}
	public void setC_parent(int c_parent) {
		this.c_parent = c_parent;
	}
	public int getC_depth() {
		return c_depth;
	}
	public void setC_depth(int c_depth) {
		this.c_depth = c_depth;
	}
	public int getC_order() {
		return c_order;
	}
	public void setC_order(int c_order) {
		this.c_order = c_order;
	}
	public String getC_title() {
		return c_title;
	}
	public void setC_title(String c_title) {
		this.c_title = c_title;
	}
	public String getC_content() {
		return c_content;
	}
	public void setC_content(String c_content) {
		this.c_content = c_content;
	}
	public int getC_hit() {
		return c_hit;
	}
	public void setC_hit(int c_hit) {
		this.c_hit = c_hit;
	}
	public Date getC_date() {
		return c_date;
	}
	public void setC_date(Date c_date) {
		this.c_date = c_date;
	}
	public String getmember_id() {
		return member_id;
	}
	public void setmember_id(String member_id) {
		this.member_id = member_id;
	}
	@Override
	public String toString() {
		return "CommunityVO [c_index=" + c_index + ", c_seq=" + c_seq + ", c_parent=" + c_parent + ", c_depth="
				+ c_depth + ", c_order=" + c_order + ", c_title=" + c_title + ", c_content=" + c_content + ", c_hit="
				+ c_hit + ", c_date=" + c_date + ", member_id=" + member_id + "]";
	}
	
	
}
