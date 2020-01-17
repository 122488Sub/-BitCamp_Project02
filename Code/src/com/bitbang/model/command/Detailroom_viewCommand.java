package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.BNB_DAO;
import com.bitbang.model.vo.BNB_ROOM_INFOVO;

public class Detailroom_viewCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String rSerial = request.getParameter("room_serial");
		String checkin = request.getParameter("checkin");
		String checkout = request.getParameter("checkout");
		
		
		System.out.println(checkin);
		
		System.out.println("rSerial : " + rSerial);
		BNB_ROOM_INFOVO rinfo = BNB_DAO.getOneList(rSerial);
		request.setAttribute("rinfo", rinfo);
	
		request.setAttribute("checkin", checkin);
		request.setAttribute("checkout", checkout);
		
		
		return "detailroom_view.jsp";
	}

}
