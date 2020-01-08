package com.bitbang.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.forsaleDAO;
import com.bitbang.model.vo.ForSaleVO;

public class ForSaleOnePageCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//List 반환 DAO
		ForSaleVO vo = new forsaleDAO().selectOnePage(request.getParameter("idx"));
		request.setAttribute("FSVo", vo);
		System.out.println(vo);
		return "ForSaleOne.jsp";
	}

}
