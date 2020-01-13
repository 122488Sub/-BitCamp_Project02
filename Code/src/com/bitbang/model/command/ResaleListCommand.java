package com.bitbang.model.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.controller.Paging;
import com.bitbang.model.dao.CommunityDAO;
import com.bitbang.model.dao.resaleDAO;
import com.bitbang.model.vo.CommunityVO;
import com.bitbang.model.vo.PagingVO;
import com.bitbang.model.vo.ResaleVO;

public class ResaleListCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 페이지 처리를 위한  Paging 객체 생성해서 값 설정
		PagingVO p = new PagingVO();

		//1. 전체 페이지의 수를 구하기
		p.setTotalRecord(resaleDAO.getTotalCount());
		
		p.setTotalPage();
		
		// 수 확인
		System.out.println("> 전체 게시글 수 : " + p.getTotalRecord());
		System.out.println("> 전체 페이지 수 : " + p.getTotalPage());
		//2. 현재 페이지 구하기(default : 1)
		String cPage = request.getParameter("cPage");
		System.out.println("cPage : " + cPage);
		if(cPage != null) {//넘겨받은 데이터가 있으면
			System.out.println("Integer.parseInt(cPage) : " + Integer.parseInt(cPage));
			p.setNowPage(Integer.parseInt(cPage));
			
		}
		
		//3. 현재 페이지(nowPage)의 시작번호(begin) 끝번호(end) 구하기
		p.setEnd(p.getNowPage() * p.getNumPerPage());  //현재 페이지 * 한페이지 당 게시글 수 = 현재 페이지의 마지막 번호 
		p.setBegin(p.getEnd() - p.getNumPerPage() + 1);
		
		System.out.println("---------------------");
		System.out.println("현재페이지 : " + p.getNowPage());
		System.out.println("시작번호 : " + p.getBegin());
		System.out.println("끝번호 : " + p.getEnd());
		
		//-------------블록(block) 계산하기---------------
		//4. 블록의 시작페이지, 끝 페이지 구하기(현재페이지 번호 사용)
		int nowPage = p.getNowPage();
				
		//--- 현재 페이지  - 1 / 한 블록에 페이지 개수 * 한 블록에 페이지 개수  + 1 == 시작 페이지 번호
		int beginPage = (nowPage - 1) / p.getPagePerBlock() * p.getPagePerBlock() + 1; 
		p.setBeginPage(beginPage);
		p.setEndPage(p.getBeginPage() + p.getPagePerBlock() - 1); //시작페이지 + 한 블록에 페이지 개수 - 1 = 끝페이지
	 
				
		//4-1 끝페이지(endPage)가 전체 페이지 수(totalPage) 보다 크면
				if (p.getEndPage() > p.getTotalPage()) {
					p.setEndPage(p.getTotalPage());
				}
		
		//---------------------------------
		//현재페이지 기준으로 게시글 가져오기
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin",p.getBegin());
		map.put("end",p.getEnd());
		
		
		List<ResaleVO> list = resaleDAO.selectList(map);
		
		request.setAttribute("pvo", p);
		request.setAttribute("list", list);
		
		for(ResaleVO vo : list) {
			System.out.println(vo.getName());
		}
		System.out.println(list);
		
		
		
		return "main/resale/resaleList.jsp";
	}
}
