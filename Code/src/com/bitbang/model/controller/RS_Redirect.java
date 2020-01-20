package com.bitbang.model.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.command.Command;
import com.bitbang.model.command.ResaleCommOKCommand;
import com.bitbang.model.command.ResaleListCommand;
import com.bitbang.model.command.ResaleWriteOKCommand;
import com.bitbang.model.command.ResalelistPageCommand;






@WebServlet("/RS_Redirect")
public class RS_Redirect extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		
		String type = request.getParameter("type");
		String path = "";
		Command comm = null;
		switch(type) {
        
	        case "list_go": comm = new ResaleWriteOKCommand();  break;
	        case "comm_ok": comm = new ResaleCommOKCommand();  break;
	        default: break;
		}
		

		path = comm.exec(request, response);
		response.sendRedirect(path);
		}
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
