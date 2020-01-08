package com.bitbang.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.bitbang.mybatis.DBService;


public interface DAO {
	static public void inertVO() {
		SqlSession ss = DBService.getFactory().openSession(true);
	}
}
