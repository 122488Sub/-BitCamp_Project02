package com.bitbang.model.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.resaleDAO;

public class ResaleReCommCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int groups = Integer.parseInt(request.getParameter("groups"));
		int step = Integer.parseInt(request.getParameter("step"));  
		int lev = Integer.parseInt(request.getParameter("lev"));
		int rs_seq = Integer.parseInt(request.getParameter("rs_seq"));
		
		// 댓글은 일단 lev, step 을 증가
		// 3 1 1
		lev ++;
		step ++;
		
		// DB는 groups, lev 사용 해서 업데이트를 함 
		Map<String,Integer> map = new HashMap<String,Integer>();
		map.put("groups", groups);
		map.put("lev", lev);
		
		resaleDAO.resaleUpdateLev(map);
		
		
		return null;
	}
}
