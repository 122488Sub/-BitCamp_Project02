package com.bitbang.model.vo;

public class BNB_LOCATIONVO {
	private int location_serial;
	private String city_name;
	
	public BNB_LOCATIONVO() {
		super();
	}

	public int getLocation_serial() {
		return location_serial;
	}

	public void setLocation_serial(int location_serial) {
		this.location_serial = location_serial;
	}

	public String getCity_name() {
		return city_name;
	}

	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}

	@Override
	public String toString() {
		return "BNB_LOCATIONVO [location_serial=" + location_serial + ", city_name=" + city_name + "]";
	}
	
	
	
}
