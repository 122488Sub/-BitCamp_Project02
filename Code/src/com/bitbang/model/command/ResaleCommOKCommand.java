package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ResaleCommOKCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int rs_seq = Integer.parseInt(request.getParameter("rs_seq"));
		String cPage = request.getParameter("cPage");
		
		return "ResaleController?type=detail&rs_seq="+rs_seq+"&cPage="+cPage;
	}										
}
