package com.bitbang.model.command;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.BNB_DAO;
import com.bitbang.model.vo.BNB_ROOM_INFOVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;



public class BNB_HroomregistCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		System.out.println(id);
		
		
		
		//파일을 저장할 위치 지정(bnbupload)
				String path = "D:\\jsp&servlet\\jsp_practice\\-BitCamp_Project02\\-BitCamp_Project02\\Code\\WebContent\\bnbupload";
		
		//MultipartRequest 객체 생성
		MultipartRequest mr = new MultipartRequest(
				request, path, 10 * 1024 * 1024, "UTF-8", new DefaultFileRenamePolicy()	
				);
		
		BNB_ROOM_INFOVO rvo = new BNB_ROOM_INFOVO();
		rvo.setRoom_serial(Integer.parseInt(request.getParameter("r_serial")));
		rvo.setR_name(mr.getParameter("r_name"));
		rvo.setRoom_type(mr.getParameter("room_type"));
		rvo.setR_info(mr.getParameter("r_info"));
		rvo.setR_price(mr.getParameter("r_price"));
		rvo.setDiscount_price(mr.getParameter("discount_price"));
		
		
		rvo.setR_pic1(mr.getFilesystemName("r_pic1"));
		rvo.setR_pic2(mr.getFilesystemName("r_pic2"));
		rvo.setR_pic3(mr.getFilesystemName("r_pic3"));
		rvo.setR_pic4(mr.getFilesystemName("r_pic4"));
		rvo.setR_pic5(mr.getFilesystemName("r_pic5"));
		
		rvo.setRoom_cn(Integer.parseInt(mr.getParameter("room_cn")));
		rvo.setBed_cn(Integer.parseInt(mr.getParameter("bed_cn")));
		rvo.setPerson_cn(Integer.parseInt(mr.getParameter("person_cn")));
		rvo.setCheckin_time(mr.getParameter("checkin_time"));
		rvo.setCheckout_time(mr.getParameter("checkout_time"));
		
		String[] farr = mr.getParameterValues("facility");
		String facility = "";
		for(int i = 0; i <farr.length; i++) {
			System.out.println("facility : " + farr[i]);
			facility += farr[i] + ".";
		}
		rvo.setFacility(facility);
		
		rvo.setCity_name(mr.getParameter("city_name"));
		rvo.setAddress(mr.getParameter("address"));
		
		String center = mr.getParameter("centerpoint");
		String centerpoint = center.substring(1, center.length()-1);
		System.out.println("centerpoint"+centerpoint);
		rvo.setCenterpoint(centerpoint);
		
	
		/*
		
		// 업로드 파일에 대한 처리(여러개)
		
		while(m.hasMoreElements()) {
			String fname = (String)m.nextElement();
			
			System.out.println(fname);
			System.out.println( mr.getOriginalFileName(fname));
			System.out.println( mr.getFilesystemName(fname));
			System.out.println(mr.getContentType(fname));

			//실제 파일 정보 확인
			File file = mr.getFile(fname);
			System.out.println(file.getName());
			System.out.println(file.length() );
			
		}
		*/
		System.out.println("rvo저장해줘");
		BNB_DAO.getRoomInsert(rvo);
		
		return "bnb_main.jsp";
	}

}
