package com.bitbang.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bitbang.model.vo.CommunityVO;
import com.bitbang.mybatis.DBService;

public class CommunityDAO {

	public static List<CommunityVO> selectStartPaging() {
		SqlSession ss = DBService.getFactory().openSession();
		
		ss.selectOne("");
		return null;
	}
}
