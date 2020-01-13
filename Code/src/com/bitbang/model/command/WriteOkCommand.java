package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.DAO;
import com.bitbang.model.vo.sub_divisionVO;

public class WriteOkCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		sub_divisionVO vo = new sub_divisionVO();
		vo.setStep(request.getParameter("step"));
		vo.setA_type(request.getParameter("a_type"));
		vo.setSupply_type(request.getParameter("supply_type"));
		vo.setA_location(request.getParameter("a_location"));
		vo.setPrice(request.getParameter("price"));
		vo.setHouseholds(request.getParameter("households"));
		vo.setBuilding_area(request.getParameter("building_area"));
		vo.setConstruction(request.getParameter("construction"));
		vo.setDeveloper(request.getParameter("developer"));
		vo.setMonopoly(request.getParameter("monopoly"));
		vo.setA_restrict(request.getParameter("a_restrict"));
		vo.setPrice_up(request.getParameter("price_up"));
		vo.setA_period(request.getParameter("a_period"));
		vo.setAnnoucement(request.getParameter("annoucement"));
		vo.setMoving_in(request.getParameter("moving_in"));
		vo.setA_image(request.getParameter("a_image"));
		vo.setA_images(request.getParameter("a_images"));
		int result = 0;
		if (vo.getStep() == null || vo.getStep().equals("") ||
			vo.getA_type() == null || vo.getA_type().equals("") ||
			vo.getSupply_type() == null || vo.getSupply_type().equals("") ||
			vo.getA_location() == null || vo.getA_location().equals("") ||
			vo.getPrice() == null || vo.getPrice().equals("") ||
			vo.getHouseholds() == null || vo.getHouseholds().equals("") ||
			vo.getBuilding_area() == null || vo.getBuilding_area().equals("") ||
			vo.getConstruction() == null || vo.getConstruction().equals("") || 
			vo.getDeveloper() == null || vo.getDeveloper().equals("") || 
			vo.getMonopoly() == null || vo.getMonopoly().equals("") || 
			vo.getA_restrict() == null || vo.getA_restrict().equals("") || 
			vo.getPrice_up() == null || vo.getPrice_up().equals("") || 
			vo.getA_period() == null || vo.getA_period().equals("") || 
			vo.getAnnoucement() == null || vo.getAnnoucement().equals("") || 
			vo.getMoving_in() == null || vo.getMoving_in().equals("") || 
			vo.getA_image() == null || vo.getA_image().equals("") || 
			vo.getA_images() == null || vo.getA_images().equals("")) {
				
			result = -1;			
		} else {
			result = DAO.guestbookInsert(vo);			
		}
		
		return "write_ok.jsp?result="+ result;
	}

}
