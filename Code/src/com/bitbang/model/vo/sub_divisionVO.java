package com.bitbang.model.vo;

public class sub_divisionVO {
	private String idx, step, a_type, supply_type, a_location, 
    			   price, households, building_area, construction, developer,
    			   monopoly, a_restrict, price_up, a_period, annoucement,
    			   moving_in, a_image, a_images, a_map;
	
	//기본생성자, 전체데이터 입력생성자
	public sub_divisionVO() {}

	public sub_divisionVO(String idx, String step, String a_type, String supply_type, String a_location, String price,
			String households, String building_area, String construction, String developer, String monopoly,
			String a_restrict, String price_up, String a_period, String annoucement, String moving_in, String a_image,
			String a_images, String a_map) {
		super();
		this.idx = idx;
		this.step = step;
		this.a_type = a_type;
		this.supply_type = supply_type;
		this.a_location = a_location;
		this.price = price;
		this.households = households;
		this.building_area = building_area;
		this.construction = construction;
		this.developer = developer;
		this.monopoly = monopoly;
		this.a_restrict = a_restrict;
		this.price_up = price_up;
		this.a_period = a_period;
		this.annoucement = annoucement;
		this.moving_in = moving_in;
		this.a_image = a_image;
		this.a_images = a_images;
		this.a_map = a_map;
	}

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getStep() {
		return step;
	}

	public void setStep(String step) {
		this.step = step;
	}

	public String getA_type() {
		return a_type;
	}

	public void setA_type(String a_type) {
		this.a_type = a_type;
	}

	public String getSupply_type() {
		return supply_type;
	}

	public void setSupply_type(String supply_type) {
		this.supply_type = supply_type;
	}

	public String getA_location() {
		return a_location;
	}

	public void setA_location(String a_location) {
		this.a_location = a_location;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getHouseholds() {
		return households;
	}

	public void setHouseholds(String households) {
		this.households = households;
	}

	public String getBuilding_area() {
		return building_area;
	}

	public void setBuilding_area(String building_area) {
		this.building_area = building_area;
	}

	public String getConstruction() {
		return construction;
	}

	public void setConstruction(String construction) {
		this.construction = construction;
	}

	public String getDeveloper() {
		return developer;
	}

	public void setDeveloper(String developer) {
		this.developer = developer;
	}

	public String getMonopoly() {
		return monopoly;
	}

	public void setMonopoly(String monopoly) {
		this.monopoly = monopoly;
	}

	public String getA_restrict() {
		return a_restrict;
	}

	public void setA_restrict(String a_restrict) {
		this.a_restrict = a_restrict;
	}

	public String getPrice_up() {
		return price_up;
	}

	public void setPrice_up(String price_up) {
		this.price_up = price_up;
	}

	public String getA_period() {
		return a_period;
	}

	public void setA_period(String a_period) {
		this.a_period = a_period;
	}

	public String getAnnoucement() {
		return annoucement;
	}

	public void setAnnoucement(String annoucement) {
		this.annoucement = annoucement;
	}

	public String getMoving_in() {
		return moving_in;
	}

	public void setMoving_in(String moving_in) {
		this.moving_in = moving_in;
	}

	public String getA_image() {
		return a_image;
	}

	public void setA_image(String a_image) {
		this.a_image = a_image;
	}

	public String getA_images() {
		return a_images;
	}

	public void setA_images(String a_images) {
		this.a_images = a_images;
	}

	public String getA_map() {
		return a_map;
	}

	public void setA_map(String a_map) {
		this.a_map = a_map;
	}

	@Override
	public String toString() {
		return "sub_divisionVO [idx=" + idx + ", step=" + step + ", a_type=" + a_type + ", supply_type=" + supply_type
				+ ", a_location=" + a_location + ", price=" + price + ", households=" + households + ", building_area="
				+ building_area + ", construction=" + construction + ", developer=" + developer + ", monopoly="
				+ monopoly + ", a_restrict=" + a_restrict + ", price_up=" + price_up + ", a_period=" + a_period
				+ ", annoucement=" + annoucement + ", moving_in=" + moving_in + ", a_image=" + a_image + ", a_images="
				+ a_images + ", a_map=" + a_map + "]";
	}	
}
	












