package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.resaleDAO;
import com.bitbang.model.vo.ResaleVO;

public class ResaleEditCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String post_id = request.getParameter("postId");
		int rs_seq = Integer.parseInt(request.getParameter("rs_seq"));
		String in_userID = (String)request.getSession().getAttribute("id");
		
		if(in_userID.equals(post_id)) {
			request.setAttribute("rsVO", resaleDAO.getPostInfo(rs_seq));
			return "/main/resale/resaleEdit.jsp";
		} else {
			return "/main/resale/resaleEdit_fail.jsp";
		}

	}
}

