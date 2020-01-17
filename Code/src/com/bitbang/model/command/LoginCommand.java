package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.LoginDAO;

public class LoginCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.println("id : " + id);
		System.out.println("pwd : " + pwd);
		
		boolean login_ok = LoginDAO.compareIdPwd(id, pwd);
		
		if(login_ok) {
			request.getSession().setAttribute("id", id);
			request.getSession().setAttribute("pwd", pwd);
			return "LoginRedirect?type=index";
		} else {
			return "/main/login/login_fail.jsp";
		}
		
	}
}
