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
<script>
	function search_go(frm) {
		frm.action = "MyController?type=search";
		frm.submit();
	}
</script>
<link href="css/price.css" rel="stylesheet" type="text/css"></link>
  <%@ include file="/main/navCssLink.html" %>
</head>
<body>
<c:choose>
	<c:when test="${not empty sessionScope.id}">
		<%@ include file="/main/navLogOutBody.html" %>
	</c:when>
	<c:otherwise>
		<%@ include file="/main/navBody.html" %>
	</c:otherwise>
</c:choose>
<div id="container">
		<h2 class="review_h2">분양정보</h2>
		<div class="selectbox_div">
			<form method="post">
				<select id="ex_select" name="idx" class="selectbox">
					<option value="0">위치/단지명</option>
					<option value="1">건물유형</option>
					<option value="2">분양단계</option>
					<option value="3">공급유형</option>
				</select>
			
				<input type="text" name="keyword">
				<input class=select_search type="image" src="images/icon.png" 
						width="20px" height="20px" onclick="search_go(this.form)">
			</form>
		</div>
		
		<p class="review_tit">
		분양목록
		<span>
		총
		<b>${paging.totalRecord}</b>
		건
		</span>
		</p>
		
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
						<td class="review_step_content">
							<a class="review_atag" href="MyController?type=onelist&idx=${vo.idx }&cPage=${paging.nowPage}">
								${vo.a_location }
							</a>
						</td>
						<td class="review_step_content">${vo.price }</td>
						<td class="review_step_content">${vo.households }</td>
						<td class="review_step_content">${vo.building_area }</td>
						<td class="review_step_content">
							<img width="250px" height="150px" src="images/${vo.a_image }">
						</td>
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
							<a class="disable">[◀]</a>
						</c:when>			
						<c:otherwise>
							<a href="MyController?type=list&index=${paging.beginPage - 1 }">[◀]</a>
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
							<a class="disable">[▶]</a>
						</c:when>
						<c:otherwise>
							<a href="MyController?type=list&index=${paging.endPage + 1 }">[▶]</a>
						</c:otherwise>
					</c:choose>
				</c:if>
			</div>
	</div>
</body>
</html>








