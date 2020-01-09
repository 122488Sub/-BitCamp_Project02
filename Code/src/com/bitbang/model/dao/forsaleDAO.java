package com.bitbang.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bitbang.model.vo.ForSaleVO;
import com.bitbang.mybatis.DBService;

public class forsaleDAO implements DAO{

	@Override
	public List<ForSaleVO> selectListPage() {
		
		SqlSession ss = DBService.getFactory().openSession(true);
		List<ForSaleVO> list = ss.selectList("FSList");
		//for(ForSaleVO vo : list) {
		//	System.out.println(vo);
		//}
		ss.close();
		return list;
	}

	@Override
	public ForSaleVO selectOnePage() {return null;}
	
	public ForSaleVO selectOnePage(String seq) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ForSaleVO vo= ss.selectOne("FSOne",seq);
		ss.close();
		return vo;
	}
	
	@Override
	public int selectTotclCount() {
		SqlSession ss = DBService.getFactory().openSession(true);
		int count= ss.selectOne("");
		ss.close();
		return count;
	}

	@Override
	public int insertData() {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result= ss.selectOne("");
		ss.close();

		return result;
	}
}
