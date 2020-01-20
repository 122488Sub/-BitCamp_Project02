package com.bitbang.model.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.command.BNB_HroomregistCommand;
import com.bitbang.model.command.BNB_Reserv_confirmCommand;
import com.bitbang.model.command.BNB_Reserv_resultCommand;
import com.bitbang.model.command.BNB_hostjoinCommand;
import com.bitbang.model.command.Command;
import com.bitbang.model.command.Detailroom_viewCommand;
import com.bitbang.model.command.SearchResultCommand;

@WebServlet("*.do")
public class BnbFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BnbFrontController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doAction(request, response);
	}
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		Command command = null;
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String comm = uri.substring(conPath.length());
		
		if(comm.equals("/searchresult.do")) {
			command = new SearchResultCommand();
		} else if(comm.equals("/detailroom_view.do")) {
			command = new Detailroom_viewCommand();
		} else if(comm.equals("/bnb_hostjoin.do")) {
			command = new BNB_hostjoinCommand();
		} else if(comm.equals("/hroomregist.do")) {
			command = new BNB_HroomregistCommand();
		} else if(comm.equals("/reserv_confirm.do")) {
			command = new BNB_Reserv_confirmCommand();
		} else if(comm.equals("/BNB_reserv_result.do")) {
			command = new BNB_Reserv_resultCommand();
		}
		
		String path = command.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}

}
