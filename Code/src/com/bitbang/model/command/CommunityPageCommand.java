package com.bitbang.model.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.controller.CommunityPaging;
import com.bitbang.model.dao.CommunityDAO;
import com.bitbang.model.vo.CommunityVO;
import com.bitbang.model.vo.PagingVO;

public class CommunityPageCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PagingVO pagingVO= CommunityPaging.paging(0);
		Map<String, Integer> map = new HashMap<>();
		map.put("BEGIN", pagingVO.getBegin());
		map.put("END", pagingVO.getEnd());
		List<CommunityVO> list = new CommunityDAO().selectListPage(map);
		request.setAttribute("paging", pagingVO);
		request.setAttribute("list", list);
		System.out.println(list);
		return "Community.jsp";
	}

}
