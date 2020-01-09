package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.CommunityDAO;
import com.bitbang.model.vo.CommunityVO;

public class CommunityReadPostCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CommunityVO vo = new CommunityDAO().selectOnePage(request.getParameter("seq"));
		request.setAttribute("vo", vo);
		return "CommunityRead.jsp";
	}

}
