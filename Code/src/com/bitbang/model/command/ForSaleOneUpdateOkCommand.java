package com.bitbang.model.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.common.commonUtil;
import com.bitbang.model.dao.forsaleDAO;
import com.bitbang.model.vo.ForSaleOneVO;

public class ForSaleOneUpdateOkCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Map<String, String> map = new HashMap<String, String>();
	
		ForSaleOneVO fsovo = new ForSaleOneVO(
				request.getParameter("address"),
				request.getParameter("address_detail"),
				request.getParameter("room_category"),
				request.getParameter("monthly_value"),
				request.getParameter("floor"),
				request.getParameter("area"),
				request.getParameter("aircon"),
				request.getParameter("elevator"),
				request.getParameter("pet"),
				request.getParameter("balcony"),
				request.getParameter("loan"),
				request.getParameter("available_date"),
				request.getParameter("content")
				);
		fsovo.setImgscr(Integer.parseInt(request.getParameter("seq")));
		
		map.put("address", fsovo.getAddress());
		map.put("seq", (String)request.getSession().getAttribute("seq"));
		map.put("subject", request.getParameter("subject"));
		map.put("detail", fsovo.getAll());
		
		request.setAttribute("subject", request.getParameter("subject"));
		forsaleDAO.updateData(map);
		System.out.println(fsovo.getAll());
		request.getSession().setAttribute("FSoneVO", fsovo);
		
		return "main/forsale/ForSaleOne.jsp";
	}

}
