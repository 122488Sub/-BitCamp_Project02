package com.bitbang.model.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bitbang.model.command.AllListCommand;
import com.bitbang.model.command.Command;
import com.bitbang.model.command.DeleteCommand;
import com.bitbang.model.command.DeleteOkCommand;
import com.bitbang.model.command.OnelistCommand;
import com.bitbang.model.command.SearchCommand;
import com.bitbang.model.command.UpdateCommand;
import com.bitbang.model.command.UpdateOkCommand;
import com.bitbang.model.command.WriteCommand;
import com.bitbang.model.command.WriteOkCommand;


@WebServlet("/MyController")
public class MyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청에 대한 처리
		String type = request.getParameter("type");
		Command comm = null;
		String path = null;
		
		//전체 리스트
		if (type.toString().equals("list")) {
			//request.getSession().invalidate();
			comm = new AllListCommand();
			path =comm.exec(request, response);
		}
		
		//세부사항
		if (type.toString().equals("onelist")) {
			//if (request.getSession().getAttribute("idx") == null 
			//	|| ((String)request.getSession().getAttribute("idx")).trim().equals("")) {
				String idx = request.getParameter("idx"); 
				request.getSession().setAttribute("idx", idx);
			//}
			comm = new OnelistCommand();
			path = comm.exec(request, response);
		}
		
		//입력
		if (type.toString().equals("write")) {
			comm = new WriteCommand();
			path = comm.exec(request, response);
		}
		if (type.toString().equals("write_ok")) {
			comm = new WriteOkCommand();
			path = comm.exec(request, response);
		}
		
		//삭제
		if (type.toString().equals("delete")) {
			comm = new DeleteCommand();
			path = comm.exec(request, response);
		}
		if (type.toString().equals("delete_ok")) {
			comm = new DeleteOkCommand();
			path = comm.exec(request, response);
		}
		
		//수정
		if (type.toString().equals("update")) {
			comm = new UpdateCommand();
			path = comm.exec(request, response);
		}
		if (type.toString().equals("update_ok")) {
			comm = new UpdateOkCommand();
			path = comm.exec(request, response);
		}
		
		//검색
		if ("search".equals(type)) {
			comm = new SearchCommand();
			path = comm.exec(request, response);
		}
		
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
