package com.bitbang.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bitbang.model.controller.Paging;
import com.bitbang.model.vo.CommunityVO;
import com.bitbang.model.vo.PagingVO;
import com.bitbang.mybatis.DBService;

public class CommunityDAO  {

	
	public List<CommunityVO> selectListPage() {

//		SqlSession ss = DBService.getFactory().openSession();
//		List<CommunityVO> list = ss.selectList("SelectCommunityPostList");
//		ss.close();

		return null;
	}

	public List<CommunityVO> selectListPage(Map<String, Integer> map) {
		SqlSession ss = DBService.getFactory().openSession();
		List<CommunityVO> list = ss.selectList("SelectCommunityPostList", map);
		ss.close();
		return list;
	}

	
	public CommunityVO selectOnePage(String seq) {
		SqlSession ss = DBService.getFactory().openSession();
		CommunityVO vo = ss.selectOne("SslectCommunityPostOne", seq);
		ss.close();
		return vo;
	}

	
	public int selectTotclCount() {
		SqlSession ss = DBService.getFactory().openSession();
		int count = ss.selectOne("SelectCommunityAllCount");
		ss.close();
		return count;
	}

	
	public int insertData() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public int insertData(CommunityVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		System.out.println("vo : " + vo.toString());
		int count = ss.insert("InsertCommunityPost", vo);
		ss.close();
		return count;
	}

}
