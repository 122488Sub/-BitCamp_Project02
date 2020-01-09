package com.bitbang.model.command;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.model.vo.ResaleVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


public class ResaleWriteCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Map<String, String[]> map = request.getParameterMap();
		//System.out.println("map : " + map);
		
		//------------------------------------------------------
		ResaleVO rsVO = new ResaleVO();
		List<String> fileList = new ArrayList<String>();
		List<String> fileOriList = new ArrayList<String>();
		
		 String path = "C:\\MyStudy\\BITBANG\\-BitCamp_Project02\\Code\\WebContent\\main\\resale\\resaleImg";
		 int size = 10*1024*1024; 

		 try {
			  // 파일 업로드. 폼에서 가져온 인자값을 얻기 위해request 객체 전달, 업로드 경로, 파일 최대 크기, 한글처리, 파일 중복처리
			  MultipartRequest multi = new MultipartRequest(request, 
					  		path, 
					  		size, 
					  		"UTF-8", 
					  		new DefaultFileRenamePolicy());
	  // 이전 페이지의 form에서 입력한 각각의 값을 가져온다.

	  //제목
	  String subject = multi.getParameter("subject");
	  String address = multi.getParameter("address");
	  String price = multi.getParameter("price");
	  String content = multi.getParameter("content");
	  String hash_tag = multi.getParameter("hashtags");
	  String cate1 = multi.getParameter("cate1");
	  String cate2 = multi.getParameter("cate2");
	  String ip = request.getRemoteAddr();
	  rsVO.setSubject(subject);
	  rsVO.setAddress(address);
	  rsVO.setCategory(cate1);
	  rsVO.setCategory_child(cate2);
	  rsVO.setContent(content);
	  rsVO.setIp(ip);
	  rsVO.setHash_tag(hash_tag);
	  //RS_IDX  x
	  //RS_SEQ  x
	  //MEMBER_IDX x
	  //ID x
	  //PWD x
	  //NAME x
	  //HIT  x
	  
	  

	  System.out.println("subject : " + subject);
	  System.out.println("address : " + address);
	  System.out.println("price : " + price);
	  System.out.println("content : " + content);
	  System.out.println("hashtags : " + hash_tag);
	  System.out.println("cate1 : " + cate1);
	  System.out.println("cate2 : " + cate2);
	  
	  
	  // 업로드한 파일들을 Enumeration 타입으로 반환

	  // Enumeration형은 데이터를 뽑아올때 유용한 인터페이스임.  Enumeration객체는 java.util 팩키지에 정의 되어있으므로

	  //java.util.Enumeration을 import 시켜야 함.

	  
	  //-------------------------------------------------------
	  
	  //여러개 파일에 대한 처리
	  Enumeration m = multi.getFileNames();
	  int cnt = 0;
	  while (m.hasMoreElements()) {
		  cnt++;
		  System.out.println("cnt : " + cnt);
		  
		  String fname = (String)m.nextElement();
		  //파일정보 표시
		  String oriFile = multi.getOriginalFileName(fname);
		  String file_name = multi.getFilesystemName(fname);
		  File file = multi.getFile(fname);
		  //file.getName()
		  //file.length()
		  
		  fileList.add(file_name);
		  fileOriList.add(oriFile);
	  };
	}catch(Exception e) {
	  // 예외처리

	  e.printStackTrace();

	 }
		
		 System.out.println("fileList : " + fileList);
		 System.out.println("fileOriList : " + fileOriList);
		 
		//result 값 
		// > RsaleVO객체, 파일이름 리스트, origin파일 이름 리스트  
		return "main/resale/multi_imgs.jsp";
	}
	
	
	
}
