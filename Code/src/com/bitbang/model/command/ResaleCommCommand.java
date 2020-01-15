package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.resaleDAO;
import com.bitbang.model.vo.ResaleCommVO;

public class ResaleCommCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rs_seq = Integer.parseInt(request.getParameter("rs_seq"));
		String cPage = request.getParameter("cPage");
		String comment = request.getParameter("inComm");
		System.out.println("comment : " + comment);
		String id = "rexypark";
		String pwd = "1234";
		String name = "im_rex";
		String ip = request.getRemoteAddr();
		ResaleCommVO commVO = new ResaleCommVO(); 
		
		
		commVO.setRs_seq(rs_seq);
		commVO.setContent(comment);
		commVO.setId(id);
		commVO.setPwd(pwd);
		commVO.setName(name);
		commVO.setIp(ip);
		resaleDAO.insertComm(commVO);

		
		return "RS_Redirect?type=comm_ok&rs_seq="+rs_seq+"&cPage="+cPage;

	}
}
