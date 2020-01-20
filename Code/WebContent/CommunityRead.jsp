<%@page import="java.net.URLEncoder"%>
<%@page import="com.bitbang.model.vo.ForSaleVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.bitbang.model.dao.forsaleDAO"%>
<%@page import="com.bitbang.model.vo.PagingVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<%@ include file="main/navCssLink.html"%>
<head>
<%@ include file="main/navBody.html"%>
<meta charset=UTF-8>
<title>글내용</title>

</head>
<body>
	<div style="margin: 0 40px 0 40px" id="container">
		<h2 style="">${vo.c_title }</h2>
		<hr>
		<p>
			<a href="ControllerCommunity">[목록으로 이동]</a>
		</p>
		<p><div class="container"><span style="margin-left: 10%;">작성자 : ${vo.member_id }</span><span style="margin-left: 10%;">조회수 : ${vo.c_hit }</span><span style="margin-left: 10%;">작성일시 : <fmt:formatDate value="${vo.c_date }" pattern="M월d일h시mm분ss초" /></span></div></p>
		<div>${vo.c_content }</div>
						
						<input style="margin: 10px" class="btn btn-warning" type="button" value="수 정" onclick="update_go(this.form)"> 
						<input style="margin: 10px" class="btn btn-danger" type="button" value="삭 제 " onclick="delete_go(this.form)">
						<input style="margin: 10px" class="btn btn-info" type="button" value="답 글" onclick="location.href='ControllerCommunity?type=writepost&seq=${vo.c_seq }'">
	</div>
</html>