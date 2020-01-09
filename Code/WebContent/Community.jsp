<%@page import="com.bitbang.model.vo.ForSaleVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>커뮤니티 게시판</title>

</head>
<body>

	<div id="container">
		<h2>판매글</h2>
		<hr>
		<p>
			<a href="ControllerCommunity?type=writepost">[게시판 쓰기]</a>
		</p>

		<table border="1">
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
					<c:when test="${not empty list}">
						<%--choose~when대신 if가능 --%>
						<c:forEach var="vo" items="${list}">
							<tr>
								<td><a href="ControllerCommunity?type=readpost&seq=${vo.c_seq}">${vo.c_seq}</a></td>
								<td>${vo.member_id }</td>
								<td>
								<c:if test="${vo.c_depth >= 1 }">
									<c:forEach var="i" begin="1" end="${vo.c_depth }">
										L
									</c:forEach>
								</c:if>
								<a href="ControllerCommunity?type=readpost&seq=${vo.c_seq}">${vo.c_title }</a></td>
								<td><fmt:formatDate value="${vo.c_date }" pattern="yy.MM.dd-hh:mm:ss"/></td>
							</tr>
						</c:forEach>
					</c:when>
				</c:choose>

			</tbody>
			<tfoot>
				<tr>
					<td colspan="5">
						<c:if test="${not empty paging }">
							<c:forEach var="i" begin="${paging.beginPage }"
								end="${paging.endPage }" step="1">
								<c:choose>
									<c:when test="${i != paging.nowPage }">
										<a href="ControllerCommunity?type=list&index=${i }">
										 ${i } 
										</a>
									</c:when>
									<c:otherwise>
										<a> ${i } </a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</c:if>
					</td>
				<tr>
			</tfoot>
		</table>
	</div>
</body>
</html>