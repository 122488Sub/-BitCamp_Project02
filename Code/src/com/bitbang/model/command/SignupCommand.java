package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.LoginDAO;
import com.bitbang.model.vo.MemberVO;

public class SignupCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		
		System.out.println("email : " + email);
		System.out.println("name : " + name);
		System.out.println("phone : " + phone);
		System.out.println("password : " + password);
		MemberVO mVO = new MemberVO();
		mVO.setEmail(email);
		mVO.setId(email);
		mVO.setPhone(phone);
		mVO.setPwd(password);
		mVO.setName(name);
		
		
		int insert = LoginDAO.insertMVO(mVO);
		
		//if(insert == 1) {}
			
	
		return "LoginController?type=login_go";
	}
}
