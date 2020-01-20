package com.bitbang.model.command;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.BNB_DAO;
import com.bitbang.model.vo.BNB_ROOM_INFOVO;
import com.bitbang.model.vo.BNB_TAGVO;

public class Detailroom_viewCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String rSerial = request.getParameter("room_serial");
		String checkin = request.getParameter("checkin");
		String checkout = request.getParameter("checkout");
		
		 try{ // String Type을 Date Type으로 캐스팅하면서 생기는 예외로 인해 여기서 예외처리 해주지 않으면 컴파일러에서 에러가 발생해서 컴파일을 할 수 없다.
		        SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
		        // date1, date2 두 날짜를 parse()를 통해 Date형으로 변환.
		        Date FirstDate = format.parse(checkin);
		        Date SecondDate = format.parse(checkout);
		        
		        // Date로 변환된 두 날짜를 계산한 뒤 그 리턴값으로 long type 변수를 초기화 하고 있다.
		        // 연산결과 -950400000. long type 으로 return 된다.
		        long calDate = FirstDate.getTime() - SecondDate.getTime(); 
		        
		        // Date.getTime() 은 해당날짜를 기준으로1970년 00:00:00 부터 몇 초가 흘렀는지를 반환해준다. 
		        // 이제 24*60*60*1000(각 시간값에 따른 차이점) 을 나눠주면 일수가 나온다.
		        long calDateDays = calDate / ( 24*60*60*1000); 
		 
		        calDateDays = Math.abs(calDateDays);
		        
		        System.out.println("두 날짜의 날짜 차이: "+calDateDays);
		        
		        
		
		System.out.println(checkin);
		
		System.out.println("rSerial : " + rSerial);
		
		//room 정보 가져오기
		BNB_ROOM_INFOVO rinfo = BNB_DAO.getOneList(rSerial);
		request.setAttribute("rinfo", rinfo);
		
		
		request.setAttribute("diffdate", calDateDays);
		request.setAttribute("checkin", checkin);
		request.setAttribute("checkout", checkout);
		String room_num = rSerial;
		
		List<BNB_TAGVO> btvo_list = BNB_DAO.getTagList(room_num);
		request.setAttribute("tag_list", btvo_list);
		
	
		int tag_cn = BNB_DAO.getTagCount(room_num);
		request.setAttribute("tag_cn", tag_cn);
		
		double facility_cn =0;
		double host_cn = 0;
		double clean_cn = 0;
		double communication_cn = 0;
		double location_cn = 0;
		double accuracy_cn = 0;
		
		
		
		for(int i = 0; i < tag_cn; i++) {
			facility_cn += btvo_list.get(i).getFacility_cn();
			host_cn += btvo_list.get(i).getHost_cn();
			clean_cn += btvo_list.get(i).getClean_cn();
			communication_cn += btvo_list.get(i).getCommunication_cn();
			location_cn += btvo_list.get(i).getLocation_cn();
			accuracy_cn += btvo_list.get(i).getAccuracy_cn();
			
		}
		
		double fc_eq = (Math.round((facility_cn/tag_cn)*100)/100.0);
		double h_eq = (Math.round((host_cn/tag_cn)*100)/100.0);
		double cl_eq = (Math.round((clean_cn/tag_cn)*100)/100.0);
		double cm_eq = (Math.round((communication_cn/tag_cn)*100)/100.0);
		double lo_eq = (Math.round((location_cn/tag_cn)*100)/100.0);
		double ac_eq = (Math.round((accuracy_cn/tag_cn)*100)/100.0);
		double total_cn = (Math.round(((fc_eq+h_eq+cl_eq+cm_eq+lo_eq+ac_eq)/6)*100)/100.0);
		
		request.setAttribute("fc_eq",fc_eq);
		request.setAttribute("h_eq",h_eq);
		request.setAttribute("cl_eq",cl_eq);
		request.setAttribute("cm_eq",cm_eq);
		request.setAttribute("lo_eq",lo_eq);
		request.setAttribute("ac_eq",ac_eq);
		request.setAttribute("total_cn", total_cn);
		
		
		BNB_ROOM_INFOVO hinfoOne = BNB_DAO.getHostinfo(rSerial);
		
		System.out.println(hinfoOne);
		
		request.setAttribute("hinfo", hinfoOne);
		
		
		
		   }
	        catch(ParseException e)
	        {
	            // 예외 처리
	        }
	
		
		
		return "detailroom_view.jsp";
	}

}
