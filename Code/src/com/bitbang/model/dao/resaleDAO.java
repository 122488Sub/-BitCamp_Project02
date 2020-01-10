package com.bitbang.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bitbang.model.vo.ResaleVO;
import com.bitbang.mybatis.DBService;

public class resaleDAO {
	public static int writeVO(ResaleVO rsVO) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int insertVO = ss.insert("writeVO", rsVO);
		ss.close();
		
		return insertVO;
	}
	
	public static int writeImg(List<String> originFileList, List<String> saveFileList) {
		
		
		SqlSession ss = DBService.getFactory().openSession(true);
		
		int cnt = 0;
		int insertImg=0;
		for (String origin : originFileList) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("originFile", origin);
			map.put("saveFile", saveFileList.get(cnt));
			cnt++;
			
			insertImg = ss.insert("writeImg", map);
		}
		ss.close();
		return insertImg;
	}
}
