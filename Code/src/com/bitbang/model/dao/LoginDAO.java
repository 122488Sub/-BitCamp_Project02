package com.bitbang.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.bitbang.model.vo.MemberVO;
import com.bitbang.model.vo.ResaleVO;
import com.bitbang.mybatis.DBService;

public class LoginDAO {

	public static boolean idCheck(String id) {
		boolean result = false;
		SqlSession ss = DBService.getFactory().openSession(true);
		System.out.println("id dao : " + id);
		int isId = ss.selectOne("idCheck", id);
		System.out.println("isId : " + isId);
		
		if(isId == 1) {
			return true;
		}
		ss.close();

		return result;
	}
	
	public static void insertMVO(MemberVO mVO) {
		SqlSession ss = DBService.getFactory().openSession(true);

		int isId = ss.insert("insertMVO", mVO);
		ss.close();
	}
}
