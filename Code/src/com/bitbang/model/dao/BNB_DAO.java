package com.bitbang.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bitbang.model.vo.BNB_ROOM_INFOVO;
import com.bitbang.mybatis.DBService;

public class BNB_DAO {

	// 게시글의 전체 건수 조회(검색어 기준)
	public static int getTotalCount(String city_search) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int totalCount = ss.selectOne("bang3.totalCount", city_search);
		ss.close();
		return totalCount;
	}
	
	// 페이지에 표시할 게시글 조회
	public static List<BNB_ROOM_INFOVO> getList(Map<String, Integer> map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<BNB_ROOM_INFOVO> roomlist = ss.selectList("roomlist", map);
		System.out.println(roomlist);
		ss.close();
		return roomlist;
	}
	
	public static BNB_ROOM_INFOVO getOneList(String rSerial) {
		SqlSession ss = DBService.getFactory().openSession(true);
		BNB_ROOM_INFOVO rvoinfo = ss.selectOne("rone", rSerial);
		ss.close();
		return rvoinfo;
	}
	
	
	
	
}
