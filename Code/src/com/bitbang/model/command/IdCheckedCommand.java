package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IdCheckedCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String check_id = (String) request.getSession().getAttribute("check_id");
		String idNo = (String) request.getSession().getAttribute("idNo");
		boolean isId = (boolean) request.getSession().getAttribute("isId");
		System.out.println("isId red : " + isId);
		System.out.println("id red : " + check_id);
		System.out.println("======================");
		
		return "LoginController?type=signup_go&check_id="+ check_id + "&isId=" + isId + "&idNo=" + idNo;
	}
}
