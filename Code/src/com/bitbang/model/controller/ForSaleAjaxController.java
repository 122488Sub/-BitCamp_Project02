package com.bitbang.model.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.forsaleDAO;
import com.bitbang.model.vo.ForSaleVO;

/**
 * Servlet implementation class AjaxForSaleController
 */
@WebServlet("/ForSaleAjax")
public class ForSaleAjaxController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		List<ForSaleVO> aList =new forsaleDAO().selectListPage();
		
		String result = "{\"list\": [";
		
		for(ForSaleVO vo : aList) {
			result += "{";
			result += "\"forsale_seq\" : \""+ vo.getForsale_seq() +"\"," + 
					  "\"forsale_idx\" : \""+ vo.getForsale_idx()+"\"," + 
					 
					  "\"subject\" : \"" + vo.getSubject()+"\","+
					  "\"address\" : \""+vo.getAddress()+"\"," +
					  "\"detail\" : \""+vo.getDetail()+"\"," +
				
					  "\"regdate\" : \""+vo.getRegdate()+"\"";
			result += "},";
		}
		result = result.substring(0,result.length()-1);
		result+="]}";
			System.out.println(result);
		out.print(result);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
