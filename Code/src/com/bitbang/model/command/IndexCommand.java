package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = (String) request.getSession().getAttribute("id");	
		String pwd = (String) request.getSession().getAttribute("pwd");	
		System.out.println("id : " + id);
		System.out.println("pwd : " + pwd);
		System.out.println();
			return "index.jsp";
	}
}

