package com.bitbang.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bitbang.model.vo.sub_divisionVO;
import com.bitbang.mybatis.DBService;

public class DAO {
	//페이징처리
	public int selectTotalCount() {
		SqlSession ss = DBService.getFactory().openSession();
		int count = ss.selectOne("AllCount");
		ss.close();
		return count;
	}
	
	//전체 데이터 조회
	public static List<sub_divisionVO> selectGuestList(Map<String, Integer> map) {
		SqlSession ss= DBService.getFactory().openSession();
		List<sub_divisionVO> list = ss.selectList("all", map);
		ss.close();
		return list;
	}
	
	//세부사항 조회
	public static sub_divisionVO selectGuestbook(String idx) {
		SqlSession ss = DBService.getFactory().openSession();
		sub_divisionVO vo = new sub_divisionVO();
		vo = (sub_divisionVO)ss.selectOne("one", idx);
		ss.close();
		return vo;
	}
	
	//게시글 작성
	public static int guestbookInsert(sub_divisionVO sub_divisionVO) {
		SqlSession ss = DBService.getFactory().openSession(true);
		Integer result = null;
		try {
			result = ss.insert("sub_division.insert", sub_divisionVO);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (ss != null)ss.close();
		}
		return result;
	}
	
	//게시글 삭제
	public static int deleteGuestbook(String a_location, sub_divisionVO vo) {
		Integer result = 0;
		SqlSession ss = DBService.getFactory().openSession();
		try {
			result = ss.delete("delete", vo.getIdx());
			if (result > 0) {
				ss.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
			result = -4;
		} finally {
			if (ss != null) ss.close();
		}
		return result;
	}
	
	//게시글 수정
	public static int updateGuestbook(sub_divisionVO vo) {
		SqlSession ss = DBService.getFactory().openSession();
		int result = 0;
		if (vo.getIdx() != null) {
			try {
				result = ss.update("sub_division.update", vo);
				if (result > 0) {
					ss.commit();
				}
			} catch (Exception e) {
				e.printStackTrace();
				result = -1;
			} finally {
				try {
					if (ss != null) ss.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}
	
	//동적검색
	public static List<sub_divisionVO> getSearch(String idx, String keyword) {
		SqlSession ss = DBService.getFactory().openSession(true);
		Map<String, String> map = new HashMap<>();
		map.put("idx", idx);
		map.put("keyword", keyword);
		List<sub_divisionVO> list = ss.selectList("search", map);
		ss.close();
		return list;
	}
}




















