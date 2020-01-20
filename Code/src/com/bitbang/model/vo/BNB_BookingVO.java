package com.bitbang.model.vo;

import java.util.Date;

public class BNB_BookingVO {

	private int booking_num, guest_num;
	private String guest_name;
	private int host_num;
	private String host_name, host_phone;
	private int room_num;
	private String room_name, room_type, room_city, room_address, room_centerpoint;
	private Date bookingdate;
	private String booking_checkin, booking_checkout, booking_payment;
	private String guest_Id, booking_payment_disc;
	
	public int getBooking_num() {
		return booking_num;
	}
	public void setBooking_num(int booking_num) {
		this.booking_num = booking_num;
	}
	public int getGuest_num() {
		return guest_num;
	}
	public void setGuest_num(int guest_num) {
		this.guest_num = guest_num;
	}
	public String getGuest_name() {
		return guest_name;
	}
	public void setGuest_name(String guest_name) {
		this.guest_name = guest_name;
	}
	public int getHost_num() {
		return host_num;
	}
	public void setHost_num(int host_num) {
		this.host_num = host_num;
	}
	public String getHost_name() {
		return host_name;
	}
	public void setHost_name(String host_name) {
		this.host_name = host_name;
	}
	public String getHost_phone() {
		return host_phone;
	}
	public void setHost_phone(String host_phone) {
		this.host_phone = host_phone;
	}
	public int getRoom_num() {
		return room_num;
	}
	public void setRoom_num(int room_num) {
		this.room_num = room_num;
	}
	public String getRoom_name() {
		return room_name;
	}
	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}
	public String getRoom_type() {
		return room_type;
	}
	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}
	public String getRoom_city() {
		return room_city;
	}
	public void setRoom_city(String room_city) {
		this.room_city = room_city;
	}
	public String getRoom_address() {
		return room_address;
	}
	public void setRoom_address(String room_address) {
		this.room_address = room_address;
	}
	public String getRoom_centerpoint() {
		return room_centerpoint;
	}
	public void setRoom_centerpoint(String room_centerpoint) {
		this.room_centerpoint = room_centerpoint;
	}
	public Date getBookingdate() {
		return bookingdate;
	}
	public void setBookingdate(Date bookingdate) {
		this.bookingdate = bookingdate;
	}
	public String getBooking_checkin() {
		return booking_checkin;
	}
	public void setBooking_checkin(String booking_checkin) {
		this.booking_checkin = booking_checkin;
	}
	public String getBooking_checkout() {
		return booking_checkout;
	}
	public void setBooking_checkout(String booking_checkout) {
		this.booking_checkout = booking_checkout;
	}
	public String getBooking_payment() {
		return booking_payment;
	}
	public void setBooking_payment(String booking_payment) {
		this.booking_payment = booking_payment;
	}
	public String getGuest_Id() {
		return guest_Id;
	}
	public void setGuest_Id(String guest_Id) {
		this.guest_Id = guest_Id;
	}
	public String getBooking_payment_disc() {
		return booking_payment_disc;
	}
	public void setBooking_payment_disc(String booking_payment_disc) {
		this.booking_payment_disc = booking_payment_disc;
	}
	
	@Override
	public String toString() {
		return "BNB_BookingVO [booking_num=" + booking_num + ", guest_num=" + guest_num + ", guest_name=" + guest_name
				+ ", host_num=" + host_num + ", host_name=" + host_name + ", host_phone=" + host_phone + ", room_num="
				+ room_num + ", room_name=" + room_name + ", room_type=" + room_type + ", room_city=" + room_city
				+ ", room_address=" + room_address + ", room_centerpoint=" + room_centerpoint + ", bookingdate="
				+ bookingdate + ", booking_checkin=" + booking_checkin + ", booking_checkout=" + booking_checkout
				+ ", booking_payment=" + booking_payment + ", guest_Id=" + guest_Id + ", booking_payment_disc="
				+ booking_payment_disc + "]";
	}
	
	
	
}
