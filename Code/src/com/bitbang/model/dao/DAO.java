package com.bitbang.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bitbang.model.vo.ForSaleVO;
import com.bitbang.mybatis.DBService;

public interface DAO {
	public List<?> selectListPage();
	public Object selectOnePage();
	public int selectTotclCount();
	public int insertData();
}
