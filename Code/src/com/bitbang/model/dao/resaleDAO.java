package com.bitbang.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bitbang.model.vo.MemberVO;
import com.bitbang.model.vo.ResaleCommVO;
import com.bitbang.model.vo.ResaleImgVO;
import com.bitbang.model.vo.ResaleVO;
import com.bitbang.mybatis.DBService;

public class resaleDAO {
	
	//--------------------------------select-----------------------------------------
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
		
		List<ResaleVO> list = ss.selectList("resaleList", map);
		System.out.println("list.size() : " + list.size());
		ss.close();
		return list;
	}
	//게시판에 있는 모든 정보 select
	public static int resaleTotal() {
		SqlSession ss = DBService.getFactory().openSession(true);
		
		int total = ss.selectOne("totalResale");
		System.out.println("total : " + total);
		ss.close();
		return total;
	}
	// 해당 시퀀스 번호의 게시글 정보를 select
	public static ResaleVO resaleDetailOne(int rs_seq) {
		SqlSession ss = DBService.getFactory().openSession(true);
		
		ResaleVO rsVO = ss.selectOne("detailOne", rs_seq);
		
		ss.close();
		return rsVO;
	}
	// 해당 시퀀스 번호의 댓글 정보를 selelct
	public static List<ResaleCommVO> resaleCommList(int rs_seq) {
		SqlSession ss = DBService.getFactory().openSession(true);

		List<ResaleCommVO> commVO = ss.selectList("resaleCommList", rs_seq);

		ss.close();
		return commVO;
	}
	
	//이미지 리스트 불러오기
	public static List<ResaleImgVO> resaleImgList(int rs_seq) {
		SqlSession ss = DBService.getFactory().openSession(true);

		List<ResaleImgVO> imgList = ss.selectList("imgList", rs_seq);

		ss.close();
		return imgList;
	}
	//게시판에 해당 인덱스에 맞는 이미지 불러오기
	public static List<ResaleImgVO> resaleBoardImg(Map<String, Integer> map) {
		SqlSession ss = DBService.getFactory().openSession(true);

		List<ResaleImgVO> imgList = ss.selectList("resaleBoardImg", map);

		ss.close();
		return imgList;
	}
	//해당 아이디가 가진 멤버 정보 불러오기
	public static MemberVO getMvo(String session_id) {
		SqlSession ss = DBService.getFactory().openSession(true);

		MemberVO mvo = ss.selectOne("getMvo", session_id);

		ss.close();
		return mvo;
	}
	public static ResaleVO getPostInfo(int rs_seq) {
		SqlSession ss = DBService.getFactory().openSession(true);
		
		ResaleVO rsVO = ss.selectOne("getPostInfo", rs_seq);
		
		ss.close();
		return rsVO;
	}
	//--------------------------------select End-----------------------------------------
	
	
	
	//--------------------------------insert---------------------------------------------
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
	
	public static void insertComm(ResaleCommVO commVO) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int insertVO = ss.insert("insertComm", commVO);
		ss.close();
		
	}
	
	//--------------------------------insert End-----------------------------------------
	
	
	
	//--------------------------------update---------------------------------------------
	public static void resaleHIT(int rs_seq) {
		
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.update("resaleHit", rs_seq);
		ss.close();
	}
	public static void resaleUpdateLev(Map<String, Integer> map) {
		
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.update("resaleUpdateLev", map);
		ss.close();
	}
	public static void updateVO(ResaleVO rsVO) {
		SqlSession ss = DBService.getFactory().openSession(true);
		System.out.println("subject dao : " + rsVO.getSubject());
		ss.update("updateVO", rsVO);
		ss.close();
		
	}

	
	//--------------------------------update End-----------------------------------------
	//--------------------------------delete-----------------------------------------
	
	public static void deletePost(String in_userId) {
		
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.delete("in_userId", in_userId);
		ss.close();
	}
	
	//--------------------------------delete End-----------------------------------------
}
