package com.bitbang.model.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.command.Command;
import com.bitbang.model.command.Multi_imgCommand;
import com.bitbang.model.command.ResaleMainCommand;
import com.bitbang.model.command.ResaleWriteCommand;



@WebServlet("/ResaleController")
public class ResaleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		
		String type = request.getParameter("type");
		String path = "";
		Command comm = null;
		
		switch(type) {
		case "resale": comm = new ResaleMainCommand(); break;
		case "write": comm = new ResaleWriteCommand(); break;
				
		}

		path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
