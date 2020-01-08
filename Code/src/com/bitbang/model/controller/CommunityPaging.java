package com.bitbang.model.controller;

import java.util.HashMap;
import java.util.Map;

import com.bitbang.model.dao.CommunityDAO;
import com.bitbang.model.vo.PagingVO;

public class CommunityPaging {
	public static Map<String, Integer> paging (int block) {
		PagingVO pagingVO = new PagingVO();
		pagingVO.setTotalRecord(new CommunityDAO().selectTotclCount());
		pagingVO.setTotalPage();
		
		
		pagingVO.setNowPage(1);// 현제페이지 번호 넣기 추후 수정 요청
		
		pagingVO.setBegin((pagingVO.getNowPage() - 1) * pagingVO.getNumPerPage() + 1);
		pagingVO.setEnd((pagingVO.getBegin() - 1) + pagingVO.getNumPerPage());
		
		pagingVO.setBeginPage(1 + pagingVO.getPagePerBlock() * 
				(int)((pagingVO.getNowPage() - 1)/pagingVO.getPagePerBlock()));
		
		pagingVO.setEndPage(pagingVO.getBeginPage() + pagingVO.getPagePerBlock() - 1);
		
		if(pagingVO.getEndPage() > pagingVO.getTotalPage()) 
				pagingVO.setEndPage(pagingVO.getTotalPage());
		Map<String, Integer> map = new HashMap<>();
		
		map.put("begin", pagingVO.getBegin());
		map.put("end", pagingVO.getEnd());
		
		return map;
	}
	
}
