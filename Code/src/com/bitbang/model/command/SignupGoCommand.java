package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SignupGoCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("check_id");
		String idNo = request.getParameter("idNo");
		String isId = request.getParameter("isId");
		System.out.println("id : " + id);
		System.out.println("idNo : " + idNo);
		System.out.println("isId : " + isId);
		
		int ok = 0;
		
		if(isId == null) {
			ok = 1;
		} else if(isId.equals("true")) {
			ok = 2;
		}
		request.setAttribute("ok", ok);
		request.setAttribute("returnID", id);
		request.setAttribute("idNo", idNo);
		request.setAttribute("isId", isId);
		request.setAttribute("isId", isId);
		
		return "main/signup/join.jsp?id=" + id + "&isId="+isId + "&idNo=" + idNo + "&ok=" + ok;
	}
}
