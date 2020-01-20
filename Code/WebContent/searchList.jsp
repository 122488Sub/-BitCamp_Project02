<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색결과</title>
	<link href="css/price.css" rel="stylesheet" type="text/css"></link>
<%@ include file="main/navCssLink.html" %>

</head>

<c:choose>
	<c:when test="${not empty sessionScope.id}">
		<%@ include file="/main/navLogOutBody.html" %>
	</c:when>
	<c:otherwise>
		<%@ include file="/main/navBody.html" %>
	</c:otherwise>
</c:choose>

<body>
	<h2 class="review_h2">검색결과</h2>
	<table class="review_table">
		<colgroup>
			<col width="10%"></col>
			<col width="10%"></col>
			<col width="10%"></col>
			<col width="20%"></col>
			<col width="10%"></col>
			<col width="10%"></col>
			<col width="10%"></col>
			<col width="20%"></col>
		</colgroup>
		<thead>
			<tr class="review_step">
				<th class="review_step_txt">분양단계</th>
				<th class="review_step_txt">건물유형</th>
				<th class="review_step_txt">공급유형</th>
				<th class="review_step_txt">위치/단지명</th>
				<th class="review_step_txt">분양가</th>
				<th class="review_step_txt">세대수</th>
				<th class="review_step_txt">전용면적</th>
				<th class="review_step_txt">예상 이미지</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${not (empty list) }">
				<c:forEach var="vo" items="${list }">
					<tr class="review_step_contentBox">
						<td class="review_step_content">
							<c:if test="${vo.step eq '분양중'}">
								<p class="review_Astep detail_step">${vo.step }</p>
							</c:if>
							<c:if test="${vo.step eq '분양예정'}">
								<p class="review_Bstep detail_step">${vo.step }</p>
							</c:if>
						</td>
						<td class="review_step_content">${vo.a_type }</td>
						<td class="review_step_content">${vo.supply_type }</td>
						<td class="review_step_content">${vo.a_location }</td>
						<td class="review_step_content">${vo.price }</td>
						<td class="review_step_content">${vo.households }</td>
						<td class="review_step_content">${vo.building_area }</td>
						<td class="review_step_content">
							<img width="250px" height="150px" src="images/${vo.a_image }">
						</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${empty list }">
				<tr>
					<td colspan='4'>데이터가 없습니다.</td>
				</tr>
			</c:if>
		</tbody>
	</table>
	<p><a href="MyController?type=list">[목록으로 이동]</a></p>
</body>
</html>