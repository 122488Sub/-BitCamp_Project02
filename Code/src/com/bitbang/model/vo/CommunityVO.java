package com.bitbang.model.vo;

import java.util.Date;

public class CommunityVO {
	private int C_INDEX;
	private int C_SEQ;
	private int C_PARENT;
	private int C_DEPTH;
	private int C_ORDER;
	private String C_TITLE;
	private String C_CONTENT;
	private int C_HIT;
	private Date C_DATE;
	private String USER_ID;
	public CommunityVO(int c_INDEX, int c_SEQ, int c_PARENT, int c_DEPTH, int c_ORDER, String c_TITLE, String c_CONTENT,
			int c_HIT, Date c_DATE, String uSER_ID) {
		super();
		C_INDEX = c_INDEX;
		C_SEQ = c_SEQ;
		C_PARENT = c_PARENT;
		C_DEPTH = c_DEPTH;
		C_ORDER = c_ORDER;
		C_TITLE = c_TITLE;
		C_CONTENT = c_CONTENT;
		C_HIT = c_HIT;
		C_DATE = c_DATE;
		USER_ID = uSER_ID;
	}
	public CommunityVO() {
		super();
	}
	public int getC_INDEX() {
		return C_INDEX;
	}
	public void setC_INDEX(int c_INDEX) {
		C_INDEX = c_INDEX;
	}
	public int getC_SEQ() {
		return C_SEQ;
	}
	public void setC_SEQ(int c_SEQ) {
		C_SEQ = c_SEQ;
	}
	public int getC_PARENT() {
		return C_PARENT;
	}
	public void setC_PARENT(int c_PARENT) {
		C_PARENT = c_PARENT;
	}
	public int getC_DEPTH() {
		return C_DEPTH;
	}
	public void setC_DEPTH(int c_DEPTH) {
		C_DEPTH = c_DEPTH;
	}
	public int getC_ORDER() {
		return C_ORDER;
	}
	public void setC_ORDER(int c_ORDER) {
		C_ORDER = c_ORDER;
	}
	public String getC_TITLE() {
		return C_TITLE;
	}
	public void setC_TITLE(String c_TITLE) {
		C_TITLE = c_TITLE;
	}
	public String getC_CONTENT() {
		return C_CONTENT;
	}
	public void setC_CONTENT(String c_CONTENT) {
		C_CONTENT = c_CONTENT;
	}
	public int getC_HIT() {
		return C_HIT;
	}
	public void setC_HIT(int c_HIT) {
		C_HIT = c_HIT;
	}
	public Date getC_DATE() {
		return C_DATE;
	}
	public void setC_DATE(Date c_DATE) {
		C_DATE = c_DATE;
	}
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	@Override
	public String toString() {
		return "CommunityVO [C_INDEX=" + C_INDEX + ", C_SEQ=" + C_SEQ + ", C_PARENT=" + C_PARENT + ", C_DEPTH="
				+ C_DEPTH + ", C_ORDER=" + C_ORDER + ", C_TITLE=" + C_TITLE + ", C_CONTENT=" + C_CONTENT + ", C_HIT="
				+ C_HIT + ", C_DATE=" + C_DATE + ", USER_ID=" + USER_ID + "]";
	}
	
	
}
