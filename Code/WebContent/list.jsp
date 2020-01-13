<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체목록</title>
<link href="css/price.css" rel="stylesheet" type="text/css"></link>
</head>
<body>
	<div id="container">
		<h2 class="review_h2">분양정보</h2>
		<div class="selectbox_div">
			<div class="selectbox">
				<lable for="ex_select" class="ex_select_tit">전국</lable>
				<select id="ex_select">
					<option>서울특별시</option>
					<option>부산광역시</option>
					<option>대구광역시</option>
					<option>인천광역시</option>
					<option>광주광역시</option>
					<option>대전광역시</option>
					<option>울산광역시</option>
					<option>세종특별자치시</option>
					<option>경기도</option>
					<option>강원도</option>
					<option>충청북도</option>
					<option>충청남도</option>
					<option>전라북도</option>
					<option>전라남도</option>
					<option>경상북도</option>
					<option>경상남도</option>
					<option>제주특별자치시</option>
				</select>
			</div>
			<div class="selectbox">
				<lable for="ex_select" class="ex_select_tit">건물유형</lable>
				<select id="ex_select">
					<option>전체</option>
					<option>아파트</option>
					<option>오피스텔</option>
					<option>도시형생활주택</option>
				</select>
			</div>
			<div class="selectbox">
				<lable for="ex_select" class="ex_select_tit">분양단계</lable>
				<select id="ex_select">
					<option>전체</option>
					<option>분양예정</option>
					<option>분양중</option>
					<option>입주모집</option>
				</select>
			</div>
			<div class="selectbox">
			<lable for="ex_select" class="ex_select_tit">공급유형</lable>
			<select id="ex_select">
				<option>전체</option>
				<option>공공분양</option>
				<option>민간분양</option>
				<option>재건축</option>
				<option>재개발</option>
				<option>공공임대</option>
				<option>민간임대</option>
			</select>
		</div>
		</div>
		<p class="review_tit">분양목록</p>
		<p class="review_write"><a class="review_write_a" href="MyController?type=write">[ 분양목록 작성 ]</a></p>
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
			<c:if test="${not (empty attr_list) }">
				<c:forEach var="vo" items="${attr_list }">
					<tr class="review_step_contentBox">
						<td class="review_step_content"><p class="step">${vo.step}</p></td>
						<td class="review_step_content">${vo.a_type }</td>
						<td class="review_step_content">${vo.supply_type }</td>
						<td class="review_step_content">
							<a class="review_atag" href="MyController?type=onelist&idx=${vo.idx }&cPage=${paging.nowPage}">
								${vo.a_location }
							</a>
						</td>
						<td class="review_step_content">${vo.price }</td>
						<td class="review_step_content">${vo.households }</td>
						<td class="review_step_content">${vo.building_area }</td>
						<td class="review_step_content">${vo.a_image }</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${empty attr_list }">
				<tr>
					<td colspan='4'>데이터가 없습니다.</td>
				</tr>
			</c:if>
			</tbody>
			</table>
			<div class="page_number_box">
				<c:if test="${not empty paging }">
					<%--[이전으로 <]에 대한 사용여부 처리 --%>
					<c:choose>
						<%-- 사용불가(disable) : 첫번째 블록인 경우 --%>
						<c:when test="${paging.beginPage == 1}">
							<a class="disable"><</a>
						</c:when>
						<c:otherwise>
							<a href="MyController?type=list&index=${paging.beginPage - 1 }"><</a>
						</c:otherwise>
					</c:choose>
					
					<%-- 블록내에 표시할 페이지 표시(시작페이지~끝페이지) --%>	
					<c:forEach var="i" begin="${paging.beginPage }" end="${paging.endPage }" step="1">
						<c:choose>
							<c:when test="${i != paging.nowPage }">
								<a class="page_number" href="MyController?type=list&index=${i }">${i }</a>
							</c:when>
							<c:otherwise>
								<a class="page_number"> ${i } </a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					
					<%--[다음으로 >]에 대한 사용여부 처리 --%>
					<c:choose>
						<%-- 사용불가(disable) : endPage가 전체페이지 수 보다 크거나 같으면 --%>
						<c:when test="${paging.endPage >= paging.totalPage }">
							<a class="disable">></a>
						</c:when>
						<c:otherwise>
							<a href="MyController?type=list&index=${paging.endPage + 1 }">></a>
						</c:otherwise>
					</c:choose>
				</c:if>
			</div>
	</div>
</body>
</html>







