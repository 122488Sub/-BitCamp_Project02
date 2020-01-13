package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.DAO;
import com.bitbang.model.vo.sub_divisionVO;

public class DeleteOkCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer result = 0;
		if (request.getParameter("a_location") == null 
			|| request.getParameter("a_location").equals("")) {
			result = -1;
		} else if (request.getSession().getAttribute("sub_divisionVO") == null
					|| request.getSession().getAttribute("sub_divisionVO").equals("") ) {
			result = -2;
		} else {
			String a_location = request.getParameter("a_location");
			sub_divisionVO vo = (sub_divisionVO)request.getSession().getAttribute("sub_divisionVO");
			if (!a_location.equals(vo.getA_location())) { // 위치/지역명 맞아야 삭제
				// 가독성을 위해서 길게 쓰이는 것을 else구문에 두는 것도 좋다
				result = -3;
			} else { // 위치/지역명 일치 삭제 처리
				result = DAO.deleteGuestbook(a_location, vo);
			}
		}
		return "delete_ok.jsp?result=" + result;
	}

}
