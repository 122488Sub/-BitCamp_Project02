package com.bitbang.model.controller;


import com.bitbang.model.dao.DAO;
import com.bitbang.model.vo.PagingVO;

public class Paging {
	public static PagingVO paging (int block) {
		PagingVO pagingVO = new PagingVO();
		pagingVO.setTotalRecord(new DAO().selectTotalCount());
		pagingVO.setTotalPage();
		
		
		pagingVO.setNowPage(block);// 현제페이지 번호 넣기 추후 수정 요청
		
		pagingVO.setBegin((pagingVO.getNowPage() - 1) * pagingVO.getNumPerPage() + 1);
		pagingVO.setEnd((pagingVO.getBegin() - 1) + pagingVO.getNumPerPage());
		
		pagingVO.setBeginPage(1 + pagingVO.getPagePerBlock() * 
				(int)((pagingVO.getNowPage() - 1)/pagingVO.getPagePerBlock()));
		
		pagingVO.setEndPage(pagingVO.getBeginPage() + pagingVO.getPagePerBlock() - 1);
		
		if(pagingVO.getEndPage() > pagingVO.getTotalPage()) 
				pagingVO.setEndPage(pagingVO.getTotalPage());
		

		
		return pagingVO;
	}
	
}
