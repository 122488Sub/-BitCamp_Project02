package com.bitbang.model.command;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CommunityWritePostCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = "TEST"; //아이디 임의 지정
		HttpSession session = request.getSession();
		session.setAttribute("id", id);
		return "CommunityWrite.jsp";
	}

}
