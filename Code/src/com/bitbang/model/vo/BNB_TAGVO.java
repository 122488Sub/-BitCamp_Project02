package com.bitbang.model.vo;

import java.util.Date;

public class BNB_TAGVO {
	private int tag_num;
	private String room_num, tag_cont, guest_name;
	private Date write_date;
	private double total_cn, facility_cn, host_cn, clean_cn, communication_cn, location_cn, accuracy_cn;
	private String guest_pic;
	private int tag_count;
	
	public int getTag_count() {
		return tag_count;
	}
	public void setTag_count(int tag_count) {
		this.tag_count = tag_count;
	}
	public int getTag_num() {
		return tag_num;
	}
	public void setTag_num(int tag_num) {
		this.tag_num = tag_num;
	}
	public String getRoom_num() {
		return room_num;
	}
	public void setRoom_num(String room_num) {
		this.room_num = room_num;
	}
	public String getTag_cont() {
		return tag_cont;
	}
	public void setTag_cont(String tag_cont) {
		this.tag_cont = tag_cont;
	}
	public String getGuest_name() {
		return guest_name;
	}
	public void setGuest_name(String guest_name) {
		this.guest_name = guest_name;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	public double getTotal_cn() {
		return total_cn;
	}
	public void setTotal_cn(double total_cn) {
		this.total_cn = total_cn;
	}
	public double getFacility_cn() {
		return facility_cn;
	}
	public void setFacility_cn(double facility_cn) {
		this.facility_cn = facility_cn;
	}
	public double getHost_cn() {
		return host_cn;
	}
	public void setHost_cn(double host_cn) {
		this.host_cn = host_cn;
	}
	public double getClean_cn() {
		return clean_cn;
	}
	public void setClean_cn(double clean_cn) {
		this.clean_cn = clean_cn;
	}
	public double getCommunication_cn() {
		return communication_cn;
	}
	public void setCommunication_cn(double communication_cn) {
		this.communication_cn = communication_cn;
	}
	public double getLocation_cn() {
		return location_cn;
	}
	public void setLocation_cn(double location_cn) {
		this.location_cn = location_cn;
	}
	public double getAccuracy_cn() {
		return accuracy_cn;
	}
	public void setAccuracy_cn(double accuracy_cn) {
		this.accuracy_cn = accuracy_cn;
	}
	public String getGuest_pic() {
		return guest_pic;
	}
	public void setGuest_pic(String guest_pic) {
		this.guest_pic = guest_pic;
	}
	@Override
	public String toString() {
		return "BNB_TAGVO [tag_num=" + tag_num + ", room_num=" + room_num + ", tag_cont=" + tag_cont + ", guest_name="
				+ guest_name + ", write_date=" + write_date + ", total_cn=" + total_cn + ", facility_cn=" + facility_cn
				+ ", host_cn=" + host_cn + ", clean_cn=" + clean_cn + ", communication_cn=" + communication_cn
				+ ", location_cn=" + location_cn + ", accuracy_cn=" + accuracy_cn + ", guest_pic=" + guest_pic
				+ ", tag_count=" + tag_count + "]";
	}
	
	
	
	
}
