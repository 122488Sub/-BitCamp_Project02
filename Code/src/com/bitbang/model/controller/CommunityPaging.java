package com.bitbang.model.controller;

import com.bitbang.model.dao.CommunityDAO;
import com.bitbang.model.vo.PagingVO;

public class CommunityPaging {
	public static void paging (int block) {
		PagingVO pagingVO = new PagingVO();
		pagingVO.setTotalRecord(new CommunityDAO().selectTotclCount());
		
	}
	
}
