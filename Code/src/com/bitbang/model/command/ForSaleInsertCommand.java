package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.forsaleDAO;
import com.bitbang.model.vo.ForSaleOneVO;
import com.bitbang.model.vo.ForSaleVO;

public class ForSaleInsertCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
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
		ForSaleVO fsvo = new ForSaleVO(
				request.getParameter("subject"), 
				request.getParameter("address"), 
				fsovo.getAll());
		
		forsaleDAO.insertData(fsvo);
		int seq=forsaleDAO.selectCurrentSeq();
		
		fsvo=new forsaleDAO().selectOnePage(""+seq);
		
		fsovo.setImgscr(seq);
		
		request.getSession().setAttribute("seq", seq);
		request.getSession().setAttribute("FSoneVO", fsovo);
		request.getSession().setAttribute("FSVo", fsvo);
		request.setAttribute("subject", fsvo.getSubject());

		return "ForSaleController?type=FsPageRe";
		
		
		/*
		//List 반환 DAO
		ForSaleVO fsvo = new forsaleDAO().selectOnePage(request.getParameter("idx"));
		
		
		String []details=fsvo.getDetail().split(";");
		
		ForSaleOneVO fsoneVO=new ForSaleOneVO(details);
		
		fsoneVO.setImgscr(fsvo.getForsale_seq());
		
		RealEstateAgentsVO reaVO= new forsaleDAO().selectOneREA(fsvo.getRea_idx());
		System.out.println("---");
		for(String str: fsoneVO.getImgscr()) {
			System.out.println(str);
		}
		System.out.println("---");
		
		request.getSession().setAttribute("FSVo", fsvo);
		request.getSession().setAttribute("FSoneVO", fsoneVO);
		request.setAttribute("REAVO", reaVO);
		request.getSession().setAttribute("seq", request.getParameter("idx"));
		
		System.out.println(fsvo);
		System.out.println(fsoneVO);
		System.out.println(reaVO);
	
		
		return "main/forsale/ForSaleOne.jsp";*/
	}

}
