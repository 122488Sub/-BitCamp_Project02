package com.bitbang.model.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.resaleDAO;

public class ResaleDeleteCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String in_userID = (String)request.getSession().getAttribute("id");
		String postId = request.getParameter("postId");
		String rs_seq = request.getParameter("rs_seq");
		System.out.println("in_userID : " + in_userID);
		System.out.println("postId : " + postId);

		Map<String, String> map = new HashMap<String, String>();
		map.put("rs_seq", rs_seq);
		map.put("id", postId);
		
		if(in_userID.equals(postId)) {
			
			resaleDAO.rs_delete_img(Integer.parseInt(rs_seq));
			resaleDAO.rs_delete_post(map);
			return "RS_Redirect?type=list_go";
		} else {
			return "/main/resale/delete_fail.jsp";
		}

	}
}
