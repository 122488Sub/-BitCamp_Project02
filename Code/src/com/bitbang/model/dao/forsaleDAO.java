package com.bitbang.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bitbang.model.vo.ForSaleVO;
import com.bitbang.model.vo.RealEstateAgentsVO;
import com.bitbang.mybatis.DBService;

public class forsaleDAO {

	
	public List<ForSaleVO> selectListPage() {
		
		SqlSession ss = DBService.getFactory().openSession(true);
		List<ForSaleVO> list = ss.selectList("FSList");
		//for(ForSaleVO vo : list) {
		//	System.out.println(vo);
		//}
		ss.close();
		return list;
	}

	
	public ForSaleVO selectOnePage() {return null;}
	
	public ForSaleVO selectOnePage(String seq) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ForSaleVO vo= ss.selectOne("FSOne",seq);
		ss.close();
		return vo;
	}
	public RealEstateAgentsVO selectOneREA(int rea_idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		RealEstateAgentsVO vo= ss.selectOne("REAOne",rea_idx);
		ss.close();
		return vo;
	}
	
	
	
	public int selectTotclCount() {
		SqlSession ss = DBService.getFactory().openSession(true);
		int count= ss.selectOne("");
		ss.close();
		return count;
	}

	
	public int insertData() {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result= ss.selectOne("");
		ss.close();

		return result;
	}

	
}
