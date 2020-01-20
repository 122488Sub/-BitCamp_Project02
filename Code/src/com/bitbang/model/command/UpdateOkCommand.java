package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.DAO;
import com.bitbang.model.vo.sub_divisionVO;

public class UpdateOkCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer result = -1;
		sub_divisionVO vo = (sub_divisionVO)request.getSession().getAttribute("sub_divisionVO");
		String step = request.getParameter("step");
		String a_type = request.getParameter("a_type");
		String supply_type = request.getParameter("supply_type");
		String a_location = request.getParameter("a_location");
		String price = request.getParameter("price");
		String households = request.getParameter("households");
		String building_area = request.getParameter("building_area");
		String construction = request.getParameter("construction");
		String developer = request.getParameter("developer");
		String monopoly = request.getParameter("monopoly");
		String a_restrict = request.getParameter("a_restrict");
		String price_up = request.getParameter("price_up");
		String a_period = request.getParameter("a_period");
		String annoucement = request.getParameter("annoucement");
		String moving_in = request.getParameter("moving_in");

		if (vo != null) {
			vo.setStep(step);
			vo.setA_type(a_type);
			vo.setSupply_type(supply_type);
			vo.setA_location(a_location);
			vo.setPrice(price);
			vo.setHouseholds(households);
			vo.setBuilding_area(building_area);
			vo.setConstruction(construction);
			vo.setDeveloper(developer);
			vo.setMonopoly(monopoly);
			vo.setA_restrict(a_restrict);
			vo.setPrice_up(price_up);
			vo.setA_period(a_period);
			vo.setAnnoucement(annoucement);
			vo.setMoving_in(moving_in);

			result = DAO.updateGuestbook(vo);
		}
		
		String path = "update_ok.jsp?result=" + result;
		
		return path;
	}

}