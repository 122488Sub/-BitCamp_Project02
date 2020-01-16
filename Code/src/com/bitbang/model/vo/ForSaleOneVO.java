package com.bitbang.model.vo;

public class ForSaleOneVO {
	
	/*
	 주소			address
	상세주소		address_detail
	방구분		room_category
	월세값		monthly_value
	층			floor
	면적			area
	난방여부		aircon
	엘리베이터		elevator
	반려동물		pet
	베란다		balcony
	전세자금대출		loan
	입주가능일		available_date
	내용			content
	이미지		imgscr
	 */
	String address,address_detail,
		room_category,monthly_value,floor,area,aircon,
		elevator, pet,balcony,loan,
		available_date,content;
	String [] imgscr= new String[5];
	public ForSaleOneVO() {
	
	}
	public ForSaleOneVO(String address, String address_detail, String room_category, String monthly_value, String floor,
			String area, String aircon, String elevator, String pet, String balcony, String loan, String available_date,
			String content) {
		super();
		this.address = address;
		this.address_detail = address_detail;
		this.room_category = room_category;
		this.monthly_value = monthly_value;
		this.floor = floor;
		this.area = area;
		this.aircon = aircon;
		this.elevator = elevator;
		this.pet = pet;
		this.balcony = balcony;
		this.loan = loan;
		this.available_date = available_date;
		this.content = content;
	}
	public ForSaleOneVO(String []details) {
		this.address = details[0];
		this.address_detail = details[1];
		this.room_category = details[2];
		this.monthly_value = details[3];
		this.floor = details[4];
		this.area = details[5];
		this.aircon = details[6];
		this.elevator = details[7];
		this.pet = details[8];
		this.balcony = details[9];
		this.loan = details[10];
		this.available_date = details[11];
		this.content = details[12];
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddress_detail() {
		return address_detail;
	}
	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}
	public String getRoom_category() {
		return room_category;
	}
	public void setRoom_category(String room_category) {
		this.room_category = room_category;
	}
	public String getMonthly_value() {
		return monthly_value;
	}
	public void setMonthly_value(String monthly_value) {
		this.monthly_value = monthly_value;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getElevator() {
		return elevator;
	}
	public void setElevator(String elevator) {
		this.elevator = elevator;
	}
	public String getPet() {
		return pet;
	}
	public void setPet(String pet) {
		this.pet = pet;
	}
	public String getBalcony() {
		return balcony;
	}
	public void setBalcony(String balcony) {
		this.balcony = balcony;
	}
	public String getLoan() {
		return loan;
	}
	public void setLoan(String loan) {
		this.loan = loan;
	}
	public String getAvailable_date() {
		return available_date;
	}
	public void setAvailable_date(String available_date) {
		this.available_date = available_date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	public String [] getImgscr() {
		return imgscr;
	}
	public void setImgscr(String [] imgscr) {
		this.imgscr = imgscr;
	}
	public void setImgscr(int seq) {
		int index=seq%6;
		this.imgscr[0]="images/forsale/big0"+index+".PNG";
		
		for (int i=1 ; i<=4;i++) {
			this.imgscr[i]="images/forsale/small0"+index+"_"+i+".PNG";
		}
	}
	
	
	public String getAircon() {
		return aircon;
	}
	public void setAircon(String aircon) {
		this.aircon = aircon;
	}
	
	
	
	@Override
	public String toString() {
		return "ForSaleOneVO [address=" + address + ", address_detail=" + address_detail + ", room_category="
				+ room_category + ", monthly_value=" + monthly_value + ", floor=" + floor + ", area=" + area
				+ ", aircon=" + aircon + ", elevator=" + elevator + ", pet=" + pet + ", balcony=" + balcony + ", loan="
				+ loan + ", available_date=" + available_date + ", content=" + content + ", imgscr=" + imgscr + "]";
	}
	public String getAll() {
		return address +";"+ address_detail + ";"
				+ room_category + ";" + monthly_value + ";" + floor + ";" + area+";"+aircon
				+ ";" + elevator + ";" + pet + ";" + balcony + ";" + loan
				+ ";" + available_date + ";" + content+";";
	}
}
