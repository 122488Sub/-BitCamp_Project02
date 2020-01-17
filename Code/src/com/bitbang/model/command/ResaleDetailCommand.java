package com.bitbang.model.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.dao.resaleDAO;
import com.bitbang.model.vo.ResaleCommVO;
import com.bitbang.model.vo.ResaleImgVO;
import com.bitbang.model.vo.ResaleVO;

public class ResaleDetailCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rs_seq = Integer.parseInt(request.getParameter("rs_seq"));
		String cPage = request.getParameter("cPage");


		//1. 게시글 조회 수 1 증가 처리(실습)
		//해당 인덱스의 게시글의 hit + 1 
		resaleDAO.resaleHIT(rs_seq); //id="hit"
		
		//2. 게시글(b_idx) 데이터 조회  후 화면 표시(HTML 작성)
		ResaleVO rsVO = resaleDAO.resaleDetailOne(rs_seq); //id="one"
		System.out.println("클릭 후 게시글 데이터 조회 : " + rsVO);
		
		
		
		//3. 게시글(b_idx)에 딸린 댓글이 있으면 화면 표시
		List<ResaleCommVO> c_list = resaleDAO.resaleCommList(rs_seq); //id="comm"
		System.out.println("rs_seq : " + rs_seq);
		System.out.println("클릭 후 댓글 데이터 조회 : " + c_list);
		
		//4. 이미지 파일 저장
		List<ResaleImgVO> imgList = resaleDAO.resaleImgList(rs_seq);
		
		
		//EL, JSTL 사용을 위한 속성 등록
		request.setAttribute("imgList", imgList);
		request.setAttribute("rsVO", rsVO);
		request.setAttribute("cPage", cPage); // 작업중 페이지로 이동 시 사용 해당 페이지를 가진 리스트 페이지를 호출
		request.setAttribute("c_list", c_list); //바꿈
		
		return "main/resale/resaleDetail.jsp";
	}
}
