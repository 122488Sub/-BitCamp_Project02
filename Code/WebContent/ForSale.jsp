<%@page import="com.bitbang.model.vo.ForSaleVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>판매 게시판</title>
<link href="css/guestbook.css" rel="stylesheet" type="text/css">
<%@ include file="main/navCssLink.html" %>
</head>
<body>
<%@ include file="main/navBody.html" %>	
	<div id="container">
		<jsp:include page="map/kakaoMapMultiForSale.jsp">
			<jsp:param name="fslist" value="${FSList}"/>
		</jsp:include>
	</div>
</body>
</html>