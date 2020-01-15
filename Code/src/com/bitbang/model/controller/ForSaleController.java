package com.bitbang.model.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.command.Command;
import com.bitbang.model.command.ForSaleOnePageCommand;
import com.bitbang.model.command.ForSalePageCommand;

@WebServlet("/ForSaleController")
public class ForSaleController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		System.out.println(type);
		if(request.getParameter("x").equals("list")) {
			System.out.println("llliisstt");
			request.setAttribute("x","list");
		}else {
			System.out.println("돌아간다ㅏ"+request.getAttribute("x")+"::"+request.getAttribute("y")+"::"+request.getAttribute("lev"));
			
			request.setAttribute("x",request.getParameter("x"));
			request.setAttribute("y",request.getParameter("y"));
			request.setAttribute("lev",request.getParameter("lev"));
		}
		
		//String path="jsp/forsale/";
		String path="";
		Command comm=null;
		
		switch(type) {
		case "FsPage":		comm = new ForSalePageCommand(); break;
		case "FsOne":		comm = new ForSaleOnePageCommand(); break;
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








