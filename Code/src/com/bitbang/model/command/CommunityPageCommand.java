package com.bitbang.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.CommunityDAO;
import com.bitbang.model.vo.CommunityVO;

public class CommunityPageCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<CommunityVO> list = CommunityDAO.selectStartPaging();
		request.setAttribute("list", list);
		return "Community.jsp";
	}

}
