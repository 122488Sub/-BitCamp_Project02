package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.BNB_DAO;
import com.bitbang.model.vo.BNB_ROOM_INFOVO;

public class BNB_hostjoinCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		BNB_ROOM_INFOVO hvo = new BNB_ROOM_INFOVO();
		hvo.setId(request.getParameter("id"));
		hvo.setH_name(request.getParameter("h_name"));
		hvo.setH_phone(request.getParameter("h_phone"));
		hvo.setH_intro(request.getParameter("h_intro"));
		
	
		int h_num=BNB_DAO.getHostInsert(hvo);
		
		System.out.println("반환받았어: "+h_num);
		String id = request.getParameter("id");
		
		
		request.setAttribute("h_num", h_num);
		
		request.setAttribute("id", id);
		return "hroomregist.jsp";
	}

}
