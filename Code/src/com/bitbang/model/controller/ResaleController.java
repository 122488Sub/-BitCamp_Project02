package com.bitbang.model.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.command.Command;
import com.bitbang.model.command.Multi_imgCommand;
import com.bitbang.model.command.ResaleCommCommand;
import com.bitbang.model.command.ResaleDetailCommand;
import com.bitbang.model.command.ResaleListCommand;
import com.bitbang.model.command.ResaleNewPostCommand;
import com.bitbang.model.command.ResaleReCommCommand;
import com.bitbang.model.command.ResaleWriteCommand;
import com.bitbang.model.command.ResalelistPageCommand;



@WebServlet("/ResaleController")
public class ResaleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		
		String type = request.getParameter("type");
		String path = "";
		Command comm = null;
		
		switch(type) {
			case "write_ok": comm = new ResaleListCommand(); break;
			default: break;
		}
		if(comm != null) {
			path = comm.exec(request, response);
			response.sendRedirect(path);
		}else {
		
		switch(type) {
			case "write": comm = new ResaleWriteCommand(); break;
			case "list": comm = new ResaleListCommand(); break;
			case "listPage": comm = new ResalelistPageCommand(); break;
			case "detail": comm = new ResaleDetailCommand(); break;
			case "comm": comm = new ResaleCommCommand(); break;
			case "reComm": comm = new ResaleReCommCommand(); break;
			case "newPost": comm = new ResaleNewPostCommand(); break;
			default : break;
		}

		path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
