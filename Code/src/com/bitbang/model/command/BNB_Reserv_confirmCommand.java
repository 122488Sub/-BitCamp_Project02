package com.bitbang.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.BNB_DAO;
import com.bitbang.model.vo.BNB_BookingVO;
import com.bitbang.model.vo.BNB_ROOM_INFOVO;
import com.bitbang.model.vo.MemberVO;

public class BNB_Reserv_confirmCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String rSerial = request.getParameter("room_serial");
		BNB_ROOM_INFOVO rinfo = BNB_DAO.getOneList(rSerial);
		
		 String id = request.getParameter("id");
		 MemberVO mvo = BNB_DAO.getIdInfo(id);
		 
		 
		BNB_BookingVO bbvo = new BNB_BookingVO();
		    bbvo.setGuest_num(mvo.getMember_idx());
		    bbvo.setGuest_name(mvo.getName());
		    bbvo.setHost_num(rinfo.getH_num());
		    bbvo.setHost_name(rinfo.getH_name());
		    bbvo.setHost_phone(rinfo.getH_phone());
		    bbvo.setRoom_num(Integer.parseInt(rSerial));
		    bbvo.setRoom_name(rinfo.getH_name());
		    bbvo.setRoom_type(rinfo.getRoom_type());
		    bbvo.setRoom_city (rinfo.getCity_name());
		    bbvo.setRoom_address(rinfo.getAddress());
		    bbvo.setRoom_centerpoint(rinfo.getCenterpoint());
		    bbvo.setBooking_checkin(request.getParameter("checkin"));
		    bbvo.setBooking_checkout(request.getParameter("checkout"));
		    bbvo.setBooking_payment(request.getParameter("total_payment"));
		    bbvo.setBooking_payment_disc(request.getParameter("total_payment_disc"));
		    bbvo.setGuest_Id(id);
	
		    System.out.println(bbvo);
		
		    BNB_DAO.getBookingInset(bbvo);
		    
		    
		
		return ("BNB_reserv_result.do?id="+id);
		
	}

}
