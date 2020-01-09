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
		<h2>판매글</h2>
		<hr>
		<p>
			<a href="ForSaleController?type=FsSelect">[판매글 쓰기]</a>
		</p>

		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>작성자</th>
					<th>제목</th>
					<th>작성일시</th>
				</tr>
			</thead>
			<tbody>
					<c:choose>
						<%--choose~when대신 if가능 --%>
						<c:when test="${not empty FSList}">
							<%--choose~when대신 if가능 --%>
							<c:forEach var="vo" items="${FSList}">
							<tr>
								<td><a href="ForSaleController?type=FsOne&idx=${vo.forsale_seq}">${vo.forsale_seq}</a></td>
								<td>${vo.name }</td>
								<td><a href="ForSaleController?type=FsOne&idx=${vo.forsale_seq}">${vo.subject }</a></td>
								<td>${vo.regdate }</td>
							</tr>
						</c:forEach>
						</c:when>
					</c:choose>

			</tbody>
		</table>
	</div>
</body>
</html>