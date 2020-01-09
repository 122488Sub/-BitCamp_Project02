package com.bitbang.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bitbang.model.controller.Paging;
import com.bitbang.model.vo.CommunityVO;
import com.bitbang.model.vo.PagingVO;
import com.bitbang.mybatis.DBService;

public class CommunityDAO implements DAO {

	@Override
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
	@Override
	public Object selectOnePage() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectTotclCount() {
		SqlSession ss = DBService.getFactory().openSession();
		int count = ss.selectOne("SelectCommunityAllCount");
		ss.close();
		return count;
	}

	@Override
	public int insertData() {
		// TODO Auto-generated method stub
		return 0;
	}

}
