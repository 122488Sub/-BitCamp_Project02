package com.bitbang.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bitbang.model.vo.BNB_PAGEVO;
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
	
	// 페이지에 표시할 게시글 조회(검색어 기준)
	public static List<BNB_ROOM_INFOVO> getList(BNB_PAGEVO bnb_pvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<BNB_ROOM_INFOVO> roomlist = ss.selectList("roomlist", bnb_pvo);
		System.out.println("룸리스트 : " + roomlist);
		ss.close();
		return roomlist;
	}
	
	public static BNB_ROOM_INFOVO getOneList(String rSerial) {
		SqlSession ss = DBService.getFactory().openSession(true);
		BNB_ROOM_INFOVO rvoinfo = ss.selectOne("rone", rSerial);
		ss.close();
		return rvoinfo;
	}
	
	public static int getHostInsert(BNB_ROOM_INFOVO hvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int getHostInsert = ss.insert("hinsert", hvo);
		
		List<Integer> hostlist=ss.selectList("current");
		/*
		for(int i : hostlist) {
			System.out.println(i);
		}
		System.out.println("내가마지막 "+hostlist.get(0) );*/
		ss.close();
		return hostlist.get(0);
	}
	
	public static int getRoomInsert(BNB_ROOM_INFOVO rvo) {
		System.out.println("rvo 저장준비1");
		SqlSession ss = DBService.getFactory().openSession(true);
		System.out.println("rvo 저장준비2");
		int getRoomInsert = ss.insert("rinsert", rvo);
		System.out.println("rvo 저장준비3");
		ss.close();
		return getRoomInsert;
	}
	
	
	
}
