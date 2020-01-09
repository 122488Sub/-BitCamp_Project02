package com.bitbang.model.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.command.Command;
import com.bitbang.model.command.CommunityInsertPostCommand;
import com.bitbang.model.command.CommunityPageCommand;
import com.bitbang.model.command.CommunityReadPostCommand;
import com.bitbang.model.command.CommunityWritePostCommand;

@WebServlet("/ControllerCommunity")
public class CommunityController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");

		String path="";
		Command comm = null;
		System.out.println("type : " + type);
		
		
		switch(type != null ? type : "list") {
		
		case "writepost" : comm = new CommunityWritePostCommand(); break;
		case "readpost" : comm = new CommunityReadPostCommand(); break;
		
		case "insertpost" : comm = new CommunityInsertPostCommand();
		default : 
		case "list" : comm = new CommunityPageCommand(); break;
		}
		
		path+=comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}








