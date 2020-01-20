package com.bitbang.model.command;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.bitbang.model.dao.resaleDAO;
import com.bitbang.model.vo.MemberVO;
import com.bitbang.model.vo.ResaleVO;

public class ResaleUpdateCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//String rs_seq = request.getParameter("rs_seq");
		List<String> originFileList = new ArrayList<String>();
		List<String> saveFileList = new ArrayList<String>();
		//해당 게시판 번호의 정보들을 select
		//ResaleVO rsVO = resaleDAO.selectDetail(rs_seq);
		ResaleVO rsVO = new ResaleVO();
		
		String imgName ="";   
		
	    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
	    
	if (isMultipart) {
	    DiskFileItemFactory factory = new DiskFileItemFactory();
	    ServletFileUpload upload = new ServletFileUpload(factory);
	    
	    List<FileItem> items;
		try {
			
			items = upload.parseRequest(request);
			Iterator<FileItem> iter = items.iterator();
		    
		    while(iter.hasNext()){
		        FileItem item = iter.next();
		        
	            if (item.isFormField()) { 
	                String name = item.getFieldName(); 
	                String value;
					try {
						value = item.getString("utf-8");
						System.out.println("일반 폼 필드 :" + name+ "-" + value);
						switch(name) {
											
							case("subject"): rsVO.setSubject(value); break;
							case("cate1"): rsVO.setCategory(value); break;
							case("cate2"): rsVO.setCategory_child(value); break;
							case("address"): rsVO.setAddress(value); break;
							case("price"): rsVO.setPrice(Integer.parseInt(value)); break;
							case("content"): rsVO.setContent(value); break;
							case("hashtags"): rsVO.setHash_tag(value); break;
							default: break;
							
						}
						
					} catch (UnsupportedEncodingException e) {
						e.printStackTrace();
					} 
	            }else{
	                String name = item.getFieldName(); //필드이름
	                String originFileName = item.getName();  //원본 파일 명
	                //String contentType = item.getContentType();
	                //boolean isInMemory = item.isInMemory();
	                //long sizeInBytes = item.getSize(); //파일 사이즈
	                
	                System.out.println("파일 이름 :" + originFileName);
	                System.out.println("필드 이름 :" + name);
	                
	                imgName = "resale_" + originFileName;
	                System.out.println("저장 이름 :" + imgName);
	                
	                //웹서비스에서 사용되는 저장 경로
	                //String uploadUri = "C:\\MyStudy\\BITBANG\\-BitCamp_Project02\\Code\\WebContent\\main\\resale\\resale_img";;

	                String dir = "C:/MyStudy/BITBANG/-BitCamp_Project02/Code/WebContent/images/resale";
	                System.out.println(dir+"의 물리적 경로 : "+ dir);
	                
	                originFileList.add(originFileName);
	                saveFileList.add(imgName);
	                try {
						item.write(new File(dir, imgName));
					} catch (Exception e) {
						e.printStackTrace();
					}
	                
	            }
		    }//while End
		} catch (FileUploadException e1) {
			e1.printStackTrace();
		}

	    }
	String session_id = (String)request.getSession().getAttribute("id");
	
	MemberVO mVO = resaleDAO.getMvo(session_id);
	
	rsVO.setId(mVO.getId());
	rsVO.setPwd(mVO.getPwd());
	rsVO.setName(mVO.getName());
	rsVO.setIp(request.getRemoteAddr());
	/*
	String file_name = saveFileList.get(0);
	String file_ori_name = saveFileList.get(0);
	rsVO.setFile_name(file_name);
	rsVO.setFile_ori_name(file_ori_name);
	resaleDAO.writeImg(originFileList, saveFileList);
	*/
	System.out.println("subject last : " + rsVO.getSubject());
	
	resaleDAO.updateVO(rsVO);
	
	
	return "RS_Redirect?type=list_go";
	}//exec End
}
