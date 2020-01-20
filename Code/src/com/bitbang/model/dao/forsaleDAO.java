package com.bitbang.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bitbang.model.vo.ForSaleVO;
import com.bitbang.model.vo.RealEstateAgentsVO;
import com.bitbang.mybatis.DBService;

public class forsaleDAO {

	public List<ForSaleVO> selectListPage() {

		SqlSession ss = DBService.getFactory().openSession(true);
		List<ForSaleVO> list = ss.selectList("FSList");
		// for(ForSaleVO vo : list) {
		// System.out.println(vo);
		// }
		ss.close();
		return list;
	}

	public ForSaleVO selectOnePage() {
		return null;
	}

	public ForSaleVO selectOnePage(String seq) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ForSaleVO vo = ss.selectOne("FSOne", seq);
		ss.close();
		return vo;
	}

	public int selectTotclCount() {
		SqlSession ss = DBService.getFactory().openSession(true);
		int count = ss.selectOne("");
		ss.close();
		return count;
	}

	static public int insertData(ForSaleVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("FSInsert", vo);
		ss.close();

		return result;
	}
	static public int selectCurrentSeq() {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.selectOne("FSSeclectCurrentSeq");
		ss.close();

		return result;
	}
	
	public static int updateData(Map<String, String> map) {

		SqlSession ss = DBService.getFactory().openSession();
		int result = 0;

		try {
			result = ss.update("ForSale.FSUpdate", map);
			if (result > 0) {
				ss.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
			result = -1;
		} finally {
			try {
				if (ss != null)
					ss.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			System.out.println(result + " ::업데이트유무");
		}

		return result;

	}

}
