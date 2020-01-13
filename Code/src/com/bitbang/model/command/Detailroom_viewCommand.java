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
		
		System.out.println("상세페이지로 이동");
		
		String rSerial = request.getParameter("room_serial");
		
		System.out.println("rSerial : " + rSerial);
		BNB_ROOM_INFOVO rinfo = BNB_DAO.getOneList(rSerial);
		request.setAttribute("rinfo", rinfo);
	
		
		return "detailroom_view.jsp";
	}

}
