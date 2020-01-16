package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.LoginDAO;

public class IdCheckDBCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String check_id = request.getParameter("id");
		System.out.println("check_id : " + check_id);
		
		boolean isId = LoginDAO.idCheck(check_id);
		
		if(isId == false) {
			request.getSession().setAttribute("isFalse", 0);
		} 
		request.getSession().setAttribute("check_id", check_id);
		request.getSession().setAttribute("isId", isId);
		request.getSession().setAttribute("idNo", check_id);


		System.out.println("isId idcheckDb : " + isId);
		if(isId) {
			return "LoginRedirect?type=idChecked&isId="+ isId + "&check_id=" + check_id;
		}
		return "LoginRedirect?type=idChecked&isId="+ isId + "&idNo=" + check_id;
	}

}
