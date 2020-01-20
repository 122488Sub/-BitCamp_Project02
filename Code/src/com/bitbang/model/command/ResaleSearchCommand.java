package com.bitbang.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.DAO;
import com.bitbang.model.dao.resaleDAO;
import com.bitbang.model.vo.ResaleVO;
import com.bitbang.model.vo.sub_divisionVO;

public class ResaleSearchCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idx = request.getParameter("idx");
		String keyword = request.getParameter("keyword");
		
		//단순 페이지 전환인지, DB데이터 조회처리를 해야 하는지 결정
		if (keyword == null || keyword.equals("")) {
			//request.getRequestDispatcher("search.jsp").forward(request, response);
			return "search_fail.jsp";
		} else {//DB 데이터 조회 처리 후 결과페이지 이동
			//DB데이터 조회처리(idx, keyword사용)
			List<ResaleVO> list = resaleDAO.getRsSearch(idx, keyword);
			
			//동적검색 형태 확인
			String title = "";
			switch (idx) {
				case "0" : title = "제목"; break;
				case "1" : title = "내용"; break;
				case "2" : title = "제목+내용"; break;
				
			}
			
			//조회 데이터 응답 페이지로 전달
			request.setAttribute("list", list);
			request.setAttribute("title", title);
			
			return "main/resale/resaleSearchList.jsp";
		}
	}

}
