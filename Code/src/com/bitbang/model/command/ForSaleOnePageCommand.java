package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.forsaleDAO;
import com.bitbang.model.vo.ForSaleOneVO;
import com.bitbang.model.vo.ForSaleVO;
import com.bitbang.model.vo.RealEstateAgentsVO;

public class ForSaleOnePageCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		request.setAttribute("FSVo", fsvo);
		request.setAttribute("FSoneVO", fsoneVO);
		request.setAttribute("REAVO", reaVO);
	
		System.out.println(fsvo);
		System.out.println(fsoneVO);
		System.out.println(reaVO);
	
		
		return "ForSaleOne.jsp";
	}

}
