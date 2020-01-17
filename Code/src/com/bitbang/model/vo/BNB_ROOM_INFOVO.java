package com.bitbang.model.vo;

import java.util.Date;

public class BNB_ROOM_INFOVO {
	private int r_num; //ROWNUM 정보 저장
	private int bnb_idx, room_serial;
	private String r_name, r_info, checkin_time, checkout_time;
	private String r_price, discount_price;
	private double total_eq; 
	private int facility_eq, host_eq, clean_eq, communication_eq, location_eq, accuracy_eq;
	private String r_pic1, r_pic2, r_pic3, r_pic4, r_pic5;
	private int bed_cn;
	private String room_type, address;
	private int room_cn, person_cn;
	private String facility, city_name, centerpoint;
	
	private String id;
	private int h_num;
	private String h_name, h_phone;
	private Date h_joindate;
	private String h_intro;
	public int getR_num() {
		return r_num;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
	}
	public int getBnb_idx() {
		return bnb_idx;
	}
	public void setBnb_idx(int bnb_idx) {
		this.bnb_idx = bnb_idx;
	}
	public int getRoom_serial() {
		return room_serial;
	}
	public void setRoom_serial(int room_serial) {
		this.room_serial = room_serial;
	}
	public String getR_name() {
		return r_name;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
	public String getR_info() {
		return r_info;
	}
	public void setR_info(String r_info) {
		this.r_info = r_info;
	}
	public String getCheckin_time() {
		return checkin_time;
	}
	public void setCheckin_time(String checkin_time) {
		this.checkin_time = checkin_time;
	}
	public String getCheckout_time() {
		return checkout_time;
	}
	public void setCheckout_time(String checkout_time) {
		this.checkout_time = checkout_time;
	}
	public String getR_price() {
		return r_price;
	}
	public void setR_price(String r_price) {
		this.r_price = r_price;
	}
	public String getDiscount_price() {
		return discount_price;
	}
	public void setDiscount_price(String discount_price) {
		this.discount_price = discount_price;
	}
	public double getTotal_eq() {
		return total_eq;
	}
	public void setTotal_eq(double total_eq) {
		this.total_eq = total_eq;
	}
	public int getFacility_eq() {
		return facility_eq;
	}
	public void setFacility_eq(int facility_eq) {
		this.facility_eq = facility_eq;
	}
	public int getHost_eq() {
		return host_eq;
	}
	public void setHost_eq(int host_eq) {
		this.host_eq = host_eq;
	}
	public int getClean_eq() {
		return clean_eq;
	}
	public void setClean_eq(int clean_eq) {
		this.clean_eq = clean_eq;
	}
	public int getCommunication_eq() {
		return communication_eq;
	}
	public void setCommunication_eq(int communication_eq) {
		this.communication_eq = communication_eq;
	}
	public int getLocation_eq() {
		return location_eq;
	}
	public void setLocation_eq(int location_eq) {
		this.location_eq = location_eq;
	}
	public int getAccuracy_eq() {
		return accuracy_eq;
	}
	public void setAccuracy_eq(int accuracy_eq) {
		this.accuracy_eq = accuracy_eq;
	}
	public String getR_pic1() {
		return r_pic1;
	}
	public void setR_pic1(String r_pic1) {
		this.r_pic1 = r_pic1;
	}
	public String getR_pic2() {
		return r_pic2;
	}
	public void setR_pic2(String r_pic2) {
		this.r_pic2 = r_pic2;
	}
	public String getR_pic3() {
		return r_pic3;
	}
	public void setR_pic3(String r_pic3) {
		this.r_pic3 = r_pic3;
	}
	public String getR_pic4() {
		return r_pic4;
	}
	public void setR_pic4(String r_pic4) {
		this.r_pic4 = r_pic4;
	}
	public String getR_pic5() {
		return r_pic5;
	}
	public void setR_pic5(String r_pic5) {
		this.r_pic5 = r_pic5;
	}
	public int getBed_cn() {
		return bed_cn;
	}
	public void setBed_cn(int bed_cn) {
		this.bed_cn = bed_cn;
	}
	public String getRoom_type() {
		return room_type;
	}
	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getRoom_cn() {
		return room_cn;
	}
	public void setRoom_cn(int room_cn) {
		this.room_cn = room_cn;
	}
	public int getPerson_cn() {
		return person_cn;
	}
	public void setPerson_cn(int person_cn) {
		this.person_cn = person_cn;
	}
	public String getFacility() {
		return facility;
	}
	public void setFacility(String facility) {
		this.facility = facility;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	public String getCenterpoint() {
		return centerpoint;
	}
	public void setCenterpoint(String centerpoint) {
		this.centerpoint = centerpoint;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getH_num() {
		return h_num;
	}
	public void setH_num(int h_num) {
		this.h_num = h_num;
	}
	public String getH_name() {
		return h_name;
	}
	public void setH_name(String h_name) {
		this.h_name = h_name;
	}
	public String getH_phone() {
		return h_phone;
	}
	public void setH_phone(String h_phone) {
		this.h_phone = h_phone;
	}
	public Date getH_joindate() {
		return h_joindate;
	}
	public void setH_joindate(Date h_joindate) {
		this.h_joindate = h_joindate;
	}
	public String getH_intro() {
		return h_intro;
	}
	public void setH_intro(String h_intro) {
		this.h_intro = h_intro;
	}
	@Override
	public String toString() {
		return "BNB_ROOM_INFOVO [r_num=" + r_num + ", bnb_idx=" + bnb_idx + ", room_serial=" + room_serial + ", r_name="
				+ r_name + ", r_info=" + r_info + ", checkin_time=" + checkin_time + ", checkout_time=" + checkout_time
				+ ", r_price=" + r_price + ", discount_price=" + discount_price + ", total_eq=" + total_eq
				+ ", facility_eq=" + facility_eq + ", host_eq=" + host_eq + ", clean_eq=" + clean_eq
				+ ", communication_eq=" + communication_eq + ", location_eq=" + location_eq + ", accuracy_eq="
				+ accuracy_eq + ", r_pic1=" + r_pic1 + ", r_pic2=" + r_pic2 + ", r_pic3=" + r_pic3 + ", r_pic4="
				+ r_pic4 + ", r_pic5=" + r_pic5 + ", bed_cn=" + bed_cn + ", room_type=" + room_type + ", address="
				+ address + ", room_cn=" + room_cn + ", person_cn=" + person_cn + ", facility=" + facility
				+ ", city_name=" + city_name + ", centerpoint=" + centerpoint + ", id=" + id + ", h_num=" + h_num
				+ ", h_name=" + h_name + ", h_phone=" + h_phone + ", h_joindate=" + h_joindate + ", h_intro=" + h_intro
				+ "]";
	}
	
	
	
	
}