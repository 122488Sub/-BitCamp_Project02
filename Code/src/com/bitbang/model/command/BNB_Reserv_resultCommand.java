package com.bitbang.model.command;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.BNB_DAO;
import com.bitbang.model.vo.BNB_BookingVO;

public class BNB_Reserv_resultCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		System.out.println("예약확인페이지입니다.");
		
		
		String guest_Id = request.getParameter("id");
		BNB_BookingVO bbinfo = BNB_DAO.getBooking_Info(guest_Id);
		request.setAttribute("bk", bbinfo);
		
		String checkin = bbinfo.getBooking_checkin();
		String checkout = bbinfo.getBooking_checkout();
		System.out.println(checkin);
		System.out.println(checkout);
		
		try{ 
	        SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
	       
	        Date FirstDate = format.parse(checkin);
	        Date SecondDate = format.parse(checkout);
	        
	        
	        long calDate = FirstDate.getTime() - SecondDate.getTime(); 

	        long calDateDays = calDate / ( 24*60*60*1000); 
	 
	        calDateDays = Math.abs(calDateDays);
	        
	        System.out.println("두 날짜의 날짜 차이: "+calDateDays);
		
	        request.setAttribute("diffdate", calDateDays);
	       
	        
		 }
        catch(ParseException e)
        {
            
        }

		
		return "BNB_reserv_confirm.jsp";
	}

}
