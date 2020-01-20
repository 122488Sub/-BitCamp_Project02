package com.bitbang.model.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.command.Command;
import com.bitbang.model.command.IdCheckDBCommand;
import com.bitbang.model.command.LoginCommand;
import com.bitbang.model.command.LoginGoCommand;
import com.bitbang.model.command.Multi_imgCommand;
import com.bitbang.model.command.ResaleCommCommand;
import com.bitbang.model.command.ResaleDetailCommand;
import com.bitbang.model.command.ResaleListCommand;
import com.bitbang.model.command.ResaleNewPostCommand;
import com.bitbang.model.command.ResaleReCommCommand;
import com.bitbang.model.command.ResaleUpdateCommand;
import com.bitbang.model.command.ResaleWriteCommand;
import com.bitbang.model.command.ResalelistPageCommand;
import com.bitbang.model.command.SignupCommand;
import com.bitbang.model.command.SignupGoCommand;



@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		
		String type = request.getParameter("type");
		String path = "";
		Command comm = null;    
		
		switch(type) {
			case "login": comm = new LoginCommand(); break;
			case "login_fail": comm = new LoginCommand(); break;
			case "login_go": comm = new LoginGoCommand(); break;
			case "signup": comm = new SignupCommand(); break;
			case "signup_go": comm = new SignupGoCommand(); break;
			case "idCheck": comm = new IdCheckDBCommand(); break;
			
			default : break;
		}
		
		path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
