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
<%@ include file="navCssLink.html" %>
</head>
<body>
<%@ include file="navBody.html" %>	
	<%--
    	PagingVO p = new PagingVO();
		// 1. 전체 게시물의 수를 구한다.
		p.setTotalRecord(forsaleDAO.getTotalCountForSale());
		
		p.setTotalPage();

		//  현재 페이지 구하기
		String cPage = request.getParameter("cPage");
		// null 아니면 의 뜻은 (처음 방문이 아니면 뜻과 같음)
		if (cPage != null) {
			p.setNowPage(Integer.parseInt(cPage));
		}

		// 3. 현재 페이지의 시작번호와 끝번호를 구하기
		p.setBegin((p.getNowPage() - 1) * p.getNumPerPage() + 1);
		p.setEnd((p.getBegin() - 1) + p.getNumPerPage());

		// 현재 페이지를 이용한 블록의 시작번호와 끝번호
		p.setBeginPage((int) (((p.getNowPage() - 1) / p.getPagePerBlock()) * p.getPagePerBlock() + 1));
		p.setEndPage(p.getBeginPage() + p.getPagePerBlock() - 1);

		// 주의 사항 ; endPage가 totalPage보다 클수 있다.
		if (p.getEndPage() > p.getTotalPage()) {
			p.setEndPage(p.getTotalPage());
		}

		// 여러개의 파라미터값을 vo와 상관없이 매개변수로 사용하는 방법 :map형식 
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", p.getBegin());
		map.put("end", p.getEnd());

		List<ForSaleVO> list = DAO.getList(map);
		pageContext.setAttribute("list", list);
		pageContext.setAttribute("pvo", p);
		pageContext.setAttribute("cPage", cPage);
	--%>
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