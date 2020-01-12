<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BBS</title>
<style>
	#bbs table {
		width: 580px;
		margin-left: 10px;
		border-collapse: collapse;
		font-size: 14px;
	}
	#bbs table caption {
		font-size: 20px;
		font-weight: bold;
		margin-bottom: 10px;
	}
	#bbs table th, td {
		text-align: center;
		border: 1px solid black;
		padding: 4px 10px;
	}
	.title { background-color: lightsteelblue; }
	.no { width: 15%; }
	.writer { width: 15%; }
	.regdate { width: 20%; }
	.hit { width: 15%; }
	
	/***** 페이지 표시 부분 스타일(시작) ****/
	.paging { list-style: none; }
	.paging li {
		float: left;
		margin-right: 8px;
	}
	.paging li a {
		text-decoration: none;
		display: block;
		padding: 3px 7px;
		border: 1px solid #00B3DC;
		font-weight: bold;
		color: black;
	}
	.paging .disable {
		border: 1px solid silver;
		padding: 3px 7px;
		color: silver;
	}
	.paging .now {
		border: 1px solid #ff4aa5;
		padding: 3px 7px;
		background-color: #ff4aa5;
	}
	.paging li a:hover {
		background-color: #00B3DC;
		color: white;
	}
</style>
</head>
<body>
	<div id="bbs">
	
		<table border>
			<caption>게시글 목록</caption>
			
			<thead>
				<tr class="title">
					<th class="no">번호</th>
					<th class="subject">제목</th>
					<th class="writer">글쓴이</th>
					<th class="regdate">날짜</th>
					<th class="hit">조회수</th>
				</tr>
			</thead>
			
			<c:choose>
			<c:when test="${empty list }">
				<tr>
				<td colspan="5">
					<h2>현재 등록된 게시글이 없습니다.</h2>
				</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="vo" items="${list }">
				<tbody>
					<tr>
						<td>${vo.rs_seq}</td>
						<td>
						  <a href="ResaleController?type=detail&rs_seq=${vo.rs_seq}&cPage=${pvo.getNowPage()}">
						    ${vo.subject}
						  </a>
						</td>
						<td>${vo.name }</td>
						<td>${vo.reg_date}</td>
						<td>${vo.hit }</td>
					</tr>
				</tbody>
				</c:forEach>
			</c:otherwise>
			</c:choose>
			<tfoot>
			<tr>
				<td colspan="4">
				<ol class="paging">
				<%--이전으로에 대한 사용여부 처리--%>
				<c:choose>
					<%--사용불가(disable) : 첫번째 블록인 경우--%>
					<c:when test="${pvo.beginPage == 1}">
						<li class="disable">이전으로</li>
					</c:when>
					<c:otherwise>
						<li>
												<!-- 이전으로 클릭 할 시 현재 블록의 시작 페이지에서 1을 뺀 값 -->
						<a href="list.jsp?cPage=${pvo.beginPage - 1}">이전으로</a>
						</li>
					</c:otherwise>
				</c:choose>
				
				
					<c:forEach var="k" begin="${pvo.beginPage}" end="${pvo.endPage}">
						<c:choose>
							<c:when test="${k == pvo.nowPage}">
								<li class="now">${k }</li>
							</c:when>
							<c:otherwise>
								<li>
									<a href="list.jsp?cPage=${k}">${k}</a>
								</li>	
							</c:otherwise>
						
						</c:choose>
					</c:forEach>
					
					<%--다음으로에 대한 사용여부 처리--%>
					<c:choose>
					<%--사용불가(disable) : 첫번째 블록인 경우--%>
					<c:when test="${pvo.endPage >= pvo.totalPage}">
						<li class="disable">다음으로</li>
					</c:when>
					<c:otherwise>
						<li>
												<!-- 다음으로 클릭 할 시 현재 블록의 시작 페이지에서 1을 더한 값 -->
						<a href="list.jsp?cPage=${pvo.endPage + 1}">다음으로</a>
						</li>
					</c:otherwise>
				</c:choose>
				</ol>
				</td>
				<td>
					<input type="button" value="글쓰기" onclick="javascript:location.href='write.jsp'">
				</td>
			</tr>
			
			</tfoot>		
			
		</table>
	</div>
</body>
</html>