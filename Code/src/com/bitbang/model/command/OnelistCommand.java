package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.DAO;
import com.bitbang.model.vo.sub_divisionVO;

public class OnelistCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idx = (String)request.getSession().getAttribute("idx");
		sub_divisionVO vo = new sub_divisionVO();
		vo = DAO.selectGuestbook(idx);
		//if (request.getSession().getAttribute("sub_divisionVO") == null
		//	|| request.getSession().getAttribute("sub_divisionVO").equals("")) {
			request.getSession().setAttribute("sub_divisionVO", vo);
	//	}
		return "detail.jsp";
	}

}
