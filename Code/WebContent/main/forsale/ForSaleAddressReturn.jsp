<%@page import="com.bitbang.common.commonUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%request.setCharacterEncoding("UTF-8");%>
<%
	commonUtil.fs_x=Double.parseDouble(request.getParameter("x"));
	commonUtil.fs_y=Double.parseDouble(request.getParameter("y"));
	System.out.println("반환 좌표값 : "+commonUtil.fs_x+":::"+commonUtil.fs_y);
	
%>