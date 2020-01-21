package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.BNB_DAO;
import com.bitbang.model.vo.BNB_ROOM_INFOVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BNB_hostjoinCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		//파일을 저장할 위치 지정(bnbupload)
		String path = "D:\\jsp&servlet\\jsp_practice\\-BitCamp_Project02\\Code\\WebContent\\bnbupload\\hostpic";

		//MultipartRequest 객체 생성
		MultipartRequest mr = new MultipartRequest(
				request, path, 10 * 1024 * 1024, "UTF-8", new DefaultFileRenamePolicy()	
				);



		BNB_ROOM_INFOVO hvo = new BNB_ROOM_INFOVO();
		hvo.setId(mr.getParameter("id"));
		hvo.setH_name(mr.getParameter("h_name"));
		hvo.setH_phone(mr.getParameter("h_phone"));
		hvo.setH_intro(mr.getParameter("h_intro"));
		hvo.setH_pic(mr.getFilesystemName("host_pic"));


		int h_num=BNB_DAO.getHostInsert(hvo);

		System.out.println("반환받았어: "+h_num);
		String id = request.getParameter("id");
		

		request.setAttribute("h_num", h_num);

		request.setAttribute("id", id);
		return "hroomregist.jsp?id="+id;
	}

}
