package com.bitbang.model.dao;

import java.util.List;

public interface DAO {
	public List<?> selectListPage();
	public Object selectOnePage();
	public int selectTotclCount();
	public int insertData();
}
