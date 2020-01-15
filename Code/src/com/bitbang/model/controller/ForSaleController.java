package com.bitbang.model.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.common.commonUtil;
import com.bitbang.model.command.Command;
import com.bitbang.model.command.ForSaleOnePageCommand;
import com.bitbang.model.command.ForSalePageCommand;

@WebServlet("/ForSaleController")
public class ForSaleController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		System.out.println(type);
		
		String path="";
		Command comm=null;
		
		switch(type) {
		case "FsPageRe":
			commonUtil.fs_Bool=false;
		case "FsPage":	
			comm = new ForSalePageCommand(); break;
		case "FsOne":	
			commonUtil.fs_Bool=true;
			commonUtil.fs_x=Double.parseDouble(request.getParameter("x"));
			commonUtil.fs_y=Double.parseDouble(request.getParameter("y"));
			commonUtil.fs_level=Integer.parseInt(request.getParameter("lev"));
			comm = new ForSaleOnePageCommand(); break;
		}
		
		path=comm.exec(request, response);
		System.out.println(path);
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}








