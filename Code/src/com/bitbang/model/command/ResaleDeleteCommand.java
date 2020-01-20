package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.resaleDAO;

public class ResaleDeleteCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String in_userID = (String)request.getSession().getAttribute("id");
		String postId = request.getParameter("postId");
		System.out.println("in_userID : " + in_userID);
		System.out.println("postId : " + postId);
		
		if(in_userID.equals(postId)) {
			resaleDAO.deletePost(in_userID);
			return "RS_Redirect?type=list_go";
		} else {
			return "/main/resale/delete_fail.jsp";
		}
		
		
		
		
	}
}
