package com.bitbang.model.command;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.BNB_DAO;
import com.bitbang.model.vo.BNB_PAGEVO;
import com.bitbang.model.vo.BNB_ROOM_INFOVO;

public class SearchResultCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String city_search = request.getParameter("city_search");
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
		
		String personNum = request.getParameter("personNum");
		System.out.println("city_search : " + city_search);
		System.out.println("checkin : " + checkin);
		System.out.println("checkout : " + checkout);
		System.out.println("personNum : " + personNum);
		
		BNB_PAGEVO  bnb_pvo = new BNB_PAGEVO();
		
		// 1. 총 게시물의 수
		bnb_pvo.setTotalRecord(BNB_DAO.getTotalCount(city_search));
		
		
		// 1-1 전체 페이지 갯수 
		bnb_pvo.setTotalPage();
		
		
		// 2. 현재 페이지 구하기
		String cPage = request.getParameter("cPage");
		if(cPage != null) {
			bnb_pvo.setNowPage(Integer.parseInt(cPage));
		}
		
		
		// 3. 현재 페이지의 시작번호와 끝 번호를 구하기
		bnb_pvo.setBegin((bnb_pvo.getNowPage()-1 )* bnb_pvo.getNumPerPage() + 1);
		bnb_pvo.setEnd((bnb_pvo.getBegin() -1 ) + bnb_pvo.getNumPerPage());
		
		
		// 4. 현재 페이지를 이용한 블록의 시작번호화 끝번호
		bnb_pvo.setBeginPage((int)(((bnb_pvo.getNowPage() - 1) / bnb_pvo.getPagePerBlock()) * bnb_pvo.getPagePerBlock() + 1));
		bnb_pvo.setEndPage(bnb_pvo.getBeginPage() + bnb_pvo.getPagePerBlock() - 1);
		
		// 주의 사항 : endPage가 totalPage 보다 클 수 있으므로 endPage를 totalPage에 맞춰줌
		if(bnb_pvo.getEndPage() > bnb_pvo.getTotalPage()) {
			bnb_pvo.setEndPage(bnb_pvo.getTotalPage());
		}
		
		
		// 여러개의 파라미터 값을 DTO와 상관없이 매개변수로 사용하는 방법 : map 형식
//		Map<String, Integer> map = new HashMap<String, Integer>();
//		map.put("begin", bnb_pvo.getBegin());
//		map.put("end", bnb_pvo.getEnd());
		
		bnb_pvo.setCity_name(city_search);
		
		
		List<BNB_ROOM_INFOVO> roomlist = BNB_DAO.getList(bnb_pvo);
		
		for (BNB_ROOM_INFOVO vo : roomlist) {
			System.out.println(vo.getFacility());
			String []tmp =vo.getFacility().split("\\.");
			
			for( String t : tmp) {
				System.out.println(t);
			}
			
		}
		
		
		String centerpoint = BNB_DAO.getCenterpoint(city_search);
		System.out.println(centerpoint);
		request.setAttribute("ctp", centerpoint);
		

		request.setAttribute("diffdate", calDateDays);
		request.setAttribute("rlist", roomlist);
		request.setAttribute("cSearch", city_search);
		request.setAttribute("checkin", checkin);
		request.setAttribute("checkout", checkout);
		
		request.setAttribute("pNum", personNum);
		request.setAttribute("bnb_pvo", bnb_pvo);		
		request.setAttribute("cPage", cPage);
		
			    }
		        catch(ParseException e)
		        {
		            // 예외 처리
		        }
		
		return "searchresult.jsp";
	}

}
