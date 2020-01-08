package com.bitbang.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.forsaleDAO;
import com.bitbang.model.vo.ForSaleVO;

public class ForSalePageCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//List 반환 DAO
		List<ForSaleVO> list = new forsaleDAO().selectListPage();
		request.setAttribute("FSList", list);
		return "ForSale.jsp";
		//return null;
	}

}
