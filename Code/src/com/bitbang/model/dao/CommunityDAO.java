package com.bitbang.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bitbang.model.vo.CommunityVO;
import com.bitbang.mybatis.DBService;

public class CommunityDAO implements DAO {

	@Override
	public List<CommunityVO> selectListPage() {
		SqlSession ss = DBService.getFactory().openSession();
		List<CommunityVO> list = ss.selectList("");
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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertData() {
		// TODO Auto-generated method stub
		return 0;
	}

}
