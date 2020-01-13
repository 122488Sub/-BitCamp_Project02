package com.bitbang.model.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
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
		String personNum = request.getParameter("personNum");
		System.out.println("city_search : " + city_search);
		System.out.println("checkin : " + checkin);
		System.out.println("checkout : " + checkout);
		System.out.println("personNum : " + personNum);
		
		BNB_PAGEVO  bnb_pvo = new BNB_PAGEVO();
		
		// 1. 총 게시물의 수(검색어 기준)
		bnb_pvo.setTotalRecord(BNB_DAO.getTotalCount(city_search));
		
		System.out.println("1"+ bnb_pvo);
		
		// 1-1 전체 페이지 갯수 
		bnb_pvo.setTotalPage();
		
		System.out.println("2"+ bnb_pvo);
		
		// 2. 현재 페이지 구하기
		String cPage = request.getParameter("cPage");
		if(cPage != null) {
			bnb_pvo.setNowPage(Integer.parseInt(cPage));
		}
		
		
		
		// 3. 현재 페이지의 시작번호와 끝 번호를 구하기
		bnb_pvo.setBegin((bnb_pvo.getNowPage()-1 )* bnb_pvo.getNumPerPage() + 1);
		bnb_pvo.setEnd((bnb_pvo.getBegin() -1 ) + bnb_pvo.getNumPerPage());
		
		// 4. 현재 페이지를 이용한 블록의 시작번호화 끝번호
		bnb_pvo.setBeginPage((int) (((bnb_pvo.getNowPage() - 1) / bnb_pvo.getPagePerBlock()) * bnb_pvo.getPagePerBlock() + 1));
		bnb_pvo.setEndPage(bnb_pvo.getBeginPage() + bnb_pvo.getPagePerBlock() - 1);
		
		// 주의 사항 : endPage가 totalPage 보다 클 수 있으므로 endPage를 totalPage에 맞춰줌
		if(bnb_pvo.getEndPage() > bnb_pvo.getTotalPage()) {
			bnb_pvo.setEndPage(bnb_pvo.getTotalPage());
		}
		
		// 여러개의 파라미터 값을 DTO와 상관없이 매개변수로 사용하는 방법 : map 형식
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", bnb_pvo.getBegin());
		map.put("end", bnb_pvo.getEnd());
		
		
		List<BNB_ROOM_INFOVO> roomlist = BNB_DAO.getList(map);
		
		
		System.out.println(roomlist);
		
		request.setAttribute("rlist", roomlist);
		request.setAttribute("cSearch", city_search);
		request.setAttribute("checkin", checkin);
		request.setAttribute("checkout", checkout);
		request.setAttribute("pNum", personNum);
		
		return "searchresult.jsp";
	}

}
