<%@page import="com.bitbang.model.vo.ForSaleVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>커뮤니티 게시판</title>
<link href="css/price.css" rel="stylesheet" type="text/css"></link>
<%@ include file="main/navCssLink.html"%>
</head>

<%@ include file="main/navBody.html"%>
<body>

	<div id="container">
		<h2>자유게시판</h2>
		<hr>
		<p>
			<a href="ControllerCommunity?type=writepost">[게시판 쓰기]</a>
		</p>
		<table class="review_table">
			<colgroup>
				<col width="10%"></col>
				<col width="10%"></col>
				<col width="50%"></col>
				<col width="30%"></col>
			</colgroup>
			<thead>
				<tr class="review_step">
					<th class="review_step_txt">번호</th>
					<th class="review_step_txt">작성자</th>
					<th class="review_step_txt">제목</th>
					<th class="review_step_txt">작성일시</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${not (empty list) }">
					<c:forEach var="vo" items="${list }">
						<tr class="review_step_contentBox">
							<td class="review_step_content"><a
								href="ControllerCommunity?type=readpost&seq=${vo.c_seq}">${vo.c_seq}</a>
							</td>
							<td class="review_step_content">${vo.member_id }</td>
							<td class="review_step_content"><a
								href="ControllerCommunity?type=readpost&seq=${vo.c_seq}">${vo.c_title }</a></td>
							<td class="review_step_content"><fmt:formatDate
									value="${vo.c_date }" pattern="M월d일h시mm분ss초" /></td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty list }">
					<tr>
						<td colspan='4'>데이터가 없습니다.</td>
					</tr>
				</c:if>
			</tbody>
			<tfoot>

				<tr>
					<td colspan="5">

						<div class="page_number_box">
							<c:if test="${not empty paging }">
								<%--[이전으로 <]에 대한 사용여부 처리 --%>
								<c:choose>
									<%-- 사용불가(disable) : 첫번째 블록인 경우 --%>
									<c:when test="${paging.beginPage == 1}">
										<a class="disable">[◀]</a>
									</c:when>
									<c:otherwise>
										<a
											href="ControllerCommunity?type=list&index=${paging.beginPage - 1 }">[◀]</a>
									</c:otherwise>
								</c:choose>

								<%-- 블록내에 표시할 페이지 표시(시작페이지~끝페이지) --%>
								<c:forEach var="i" begin="${paging.beginPage }"
									end="${paging.endPage }" step="1">
									<c:choose>
										<c:when test="${i != paging.nowPage }">
											<a class="page_number"
												href="ControllerCommunity?type=list&index=${i }">${i }</a>
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
										<a
											href="ControllerCommunity?type=list&index=${paging.endPage + 1 }">[▶]</a>
									</c:otherwise>
								</c:choose>
							</c:if>
						</div>

					</td>
				<tr>
			</tfoot>
		</table>
	</div>
</body>
</html>