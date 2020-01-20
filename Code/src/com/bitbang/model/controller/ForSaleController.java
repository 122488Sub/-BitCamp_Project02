package com.bitbang.model.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.common.commonUtil;
import com.bitbang.model.command.Command;
import com.bitbang.model.command.ForSaleInputCommand;
import com.bitbang.model.command.ForSaleInsertCommand;
import com.bitbang.model.command.ForSaleOnePageCommand;
import com.bitbang.model.command.ForSaleOneUpdateCommand;
import com.bitbang.model.command.ForSaleOneUpdateOkCommand;
import com.bitbang.model.command.ForSalePageCommand;

@WebServlet("/ForSaleController")
public class ForSaleController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		System.out.println(type);
		
		String path="";
		Command comm=null;
		boolean bool=false;
		switch(type) {
		case "FsInput":
			comm = new ForSaleInputCommand(); 
			break;
		case "FsInsert":
			comm = new ForSaleInsertCommand();
			bool=true;
			break;
		case "FsPageRe":
			commonUtil.fs_Bool=false;
		case "FsPage":	
			comm = new ForSalePageCommand(); 
			break;
		case "FsOne":	
			commonUtil.fs_Bool=true;
			commonUtil.fs_x=Double.parseDouble(request.getParameter("x"));
			commonUtil.fs_y=Double.parseDouble(request.getParameter("y"));
			commonUtil.fs_level=Integer.parseInt(request.getParameter("lev"));
			//comm = new ForSaleOnePageCommand();
			//break;
		case "FsOneRe":	
			comm = new ForSaleOnePageCommand();
			break;
		case "FsOneUpdate":
			comm = new ForSaleOneUpdateCommand();
			break;
		case "FsOneUpdateOk":
			comm = new ForSaleOneUpdateOkCommand();
			break;
		}
		
		path=comm.exec(request, response);
		System.out.println(path);
		if(bool) {
			response.sendRedirect(path);
		}else {
			request.getRequestDispatcher(path).forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}








