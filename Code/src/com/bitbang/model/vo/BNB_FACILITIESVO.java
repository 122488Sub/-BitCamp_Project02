package com.bitbang.model.vo;

public class BNB_FACILITIESVO {
	private int fac_num;
	private String  wifi, tv, elevator, airconditioner, laundry, kitchen, refrigerator, breakfast;
	
	public BNB_FACILITIESVO() {
		super();
	}

	public int getFac_num() {
		return fac_num;
	}

	public void setFac_num(int fac_num) {
		this.fac_num = fac_num;
	}

	public String getWifi() {
		return wifi;
	}

	public void setWifi(String wifi) {
		this.wifi = wifi;
	}

	public String getTv() {
		return tv;
	}

	public void setTv(String tv) {
		this.tv = tv;
	}

	public String getElevator() {
		return elevator;
	}

	public void setElevator(String elevator) {
		this.elevator = elevator;
	}

	public String getAirconditioner() {
		return airconditioner;
	}

	public void setAirconditioner(String airconditioner) {
		this.airconditioner = airconditioner;
	}

	public String getLaundry() {
		return laundry;
	}

	public void setLaundry(String laundry) {
		this.laundry = laundry;
	}

	public String getKitchen() {
		return kitchen;
	}

	public void setKitchen(String kitchen) {
		this.kitchen = kitchen;
	}

	public String getRefrigerator() {
		return refrigerator;
	}

	public void setRefrigerator(String refrigerator) {
		this.refrigerator = refrigerator;
	}

	public String getBreakfast() {
		return breakfast;
	}

	public void setBreakfast(String breakfast) {
		this.breakfast = breakfast;
	}

	@Override
	public String toString() {
		return "BNB_FACILITIESVO [fac_num=" + fac_num + ", wifi=" + wifi + ", tv=" + tv + ", elevator=" + elevator
				+ ", airconditioner=" + airconditioner + ", laundry=" + laundry + ", kitchen=" + kitchen
				+ ", refrigerator=" + refrigerator + ", breakfast=" + breakfast + "]";
	}
	
	
}
