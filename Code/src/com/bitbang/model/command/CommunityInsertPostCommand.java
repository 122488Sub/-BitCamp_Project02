package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.CommunityDAO;
import com.bitbang.model.vo.CommunityVO;

public class CommunityInsertPostCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = (String) request.getSession().getAttribute("id");
		CommunityVO vo = new CommunityVO();
		vo.setmember_id(id);
		vo.setC_title(request.getParameter("c_title"));
		vo.setC_content(request.getParameter("c_content"));
		int count = new CommunityDAO().insertData(vo);
		
		return new CommunityPageCommand().exec(request, response);
	}

}
