package com.bitbang.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bitbang.model.vo.ResaleVO;
import com.bitbang.mybatis.DBService;

public class resaleDAO {
	//텍스트 파일 insert
	public static int writeVO(ResaleVO rsVO) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int insertVO = ss.insert("writeVO", rsVO);
		ss.close();
		
		return insertVO;
	}
	
	//이미지 파일 insert
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
	// 게시글 번호 입력시 해당 번호 상세페이지 정보 select 
	public static ResaleVO selectDetail(String rs_seq) {
		SqlSession ss = DBService.getFactory().openSession(true);
		
		ResaleVO rsVO = ss.selectOne("detail", rs_seq);
		
		ss.close();
		return rsVO;
	}
	//게시판에 있는 모든 정보 select
	public static List<ResaleVO> selectList(Map<String, Integer> map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		
		List<ResaleVO> list = ss.selectList("getList", map);
		
		ss.close();
		return list;
	}
	//게시판에 있는 모든 정보 select
	public static int getTotalCount() {
		SqlSession ss = DBService.getFactory().openSession(true);
		
		int total = ss.selectOne("totalCount");
		
		ss.close();
		return total;
	}
}
