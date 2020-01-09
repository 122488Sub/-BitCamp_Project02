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
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>선택한 매물</title>
<link href="css/guestbook.css" rel="stylesheet" type="text/css">

</head>
<body>
	<div id="container">
		<h2>상세화면</h2>
		<hr>
		<p>
			<a href="ForSaleController?type=FsPage">[목록으로 이동]</a>
		</p>
		<form method="post">
			<table>
				<tbody>
					<tr>
						<th>제목</th>
						<td>${FSVo.subject } </td>
						<th>작성자</th>
						<td>${FSVo.name }</td>
					</tr>
					<tr>
						<th>주소</th>
						<td>${FSVo.address }  </td>
						<th>작성일시</th>
						<td>${FSVo.regdate } </td>
					</tr>
					<tr>
						<th colspan="4">내용</th>
					</tr>
					<tr>
						<td colspan="4">${FSVo.content }</td>
					</tr>
					<tr>
						<td colspan="4">
							<%
								request.setCharacterEncoding("UTF-8");
							%>
							<jsp:include page="map/kakaoMap.jsp">
								<jsp:param name="address" value="${FSVo.address }"/>
							</jsp:include>
						</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="4"><input type="button" value="수 정"
							onclick="update_go(this.form)"> <input type="button"
							value="삭 제 " onclick="delete_go(this.form)"></td>
					</tr>
				</tfoot>
				</table>
		</form>
	</div>
</html>