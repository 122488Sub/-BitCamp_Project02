<%@page import="com.bitbang.model.vo.ForSaleOneVO"%>
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
<style type="text/css">
</style>
<%@ include file="main/navCssLink.html"%>
</head>
<%@ include file="main/navBody.html"%>
<%
	System.out.println("도착");
%>
<style>
#container table tbody td {
	text-align: center;
}

#reaInfo {
	font-size: 0.7em; width : 512px;
	margin: auto;
	width: 512px;
}

#reaInfo table {
	width: 140px;
	margin: auto 0px auto 360px;
	border: 0px solid black;
	border-collapse: collapse;
}


#reaInfo th {
	border: 0px solid black;
	text-align: right;
}

#reaInfo td {
	text-align: left;
	padding: 0px 10px;
	border: 0px solid black;
}
</style>
<div id="reaInfo">
	<table>
		<colgroup>

		</colgroup>

		<thead>
			<tr>
				<th>중개사</th>
				<td>${REAVO.rea_name}</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th>회사</th>
				<td>${REAVO.rea_company }</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<th>연락처</th>
				<td>${REAVO.rea_phone }</td>
			</tr>
		</tfoot>
	</table>
</div>
<br>
<div id="container">
	<table>
		<colgroup>

		</colgroup>
		<thead>
			<tr>
				<th>주소</th>
				<th>${FSoneVO.room_category }</th>
				<th>전용면적</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${FSoneVO.address }<br>${FSoneVO.address_detail }</td>
				<td>${FSoneVO.monthly_value}</td>
				<td>${FSoneVO.area}</td>
			</tr>
		</tbody>
	</table>
	${FSVO }
	<hr>
	<table>
		<colgroup>

		</colgroup>
		<tbody>
			<tr>
				<td>해당층/건물층</td>
				<td>${FSoneVO.floor}</td>
				<td>난방종류</td>
				<td>${FSoneVO.aircon }</td>
				<td>엘리베이터</td>
				<td>${FSoneVO.elevator}</td>
			</tr>
			<tr>
				<td>반려동물</td>
				<td>${FSoneVO.pet}</td>
				<td>베란다/발코니</td>
				<td>${FSoneVO.balcony }</td>
				<td>전세자금대출</td>
				<td>${FSoneVO.loan }</td>
			</tr>
			<tr>
				<td>입주가능일</td>
				<td>${FSoneVO.available_date }</td>
				<td colspan="4"></td>
			</tr>
		</tbody>
	</table>
	<div>이미지예정</div>
</div>

</html>