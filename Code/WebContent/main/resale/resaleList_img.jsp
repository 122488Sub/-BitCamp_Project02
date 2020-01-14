<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
	body {
		margin: 0 auto;
		text-align: center;
	}

	#img_content {
		display: inline-block;
		width: 1130px;
		height: 1500px;
		border: 1px solid black;
	}
	#onePostBox {
		width: 230px;
		height: 370px;
		border: 1px solid black;
		display: inline-block;
		float: left;
		margin-right: 25px;
		margin-left: 25px;
		margin-bottom: 25px;
	}
	#imgBox {
		margin: 0;
		padding: 0;
		width: 230px;
		height: 230px;
		
	}
	#infoBox {
		margin: 0;
		padding: 0;
		width: 230px;
		height: 80px;
		
	}
	#infoChildBox {
		margin-top: 20px;
		padding: 0;
		width: 230px;
		height: 40px;
		display: inline;
	}
	#infoTable {
		width: 230px;
		height: 50px;
	}
	#addrBox{
		margin-top: 4px;
		padding: 0;
		width: 230px;
		height: 30px;
		
		text-align: left;
			
	}
	#listSubject{
		width: 230px;
		height: 30px;
		font-size: 15px;
		font-weight: bold;
		font-family: 'Noto Sans KR', sans-serif;
		text-align: left;
		padding:0 5px; 
		overflow:hidden; 
		text-overflow:ellipsis; white-space:nowrap;

	}
	#priceBox {
		text-align: left;
	}
	#listPrice{
		display: inline;
		font-size: 25px;
		font-weight: bold;
		font-family: 'Noto Sans KR', sans-serif;
		text-align: left;
	}
	#listDate{
		font-size: 13px;
		font-weight: bold;
		font-family: 'Noto Sans KR', sans-serif;
		text-align: right;
	}
	#won{
		font-size: 15px;
		font-weight: bold;
		text-align: left;
	}
	#write { 
		text-align: right;

	}
	#write > input {
				width: 100px;
			height:50px;
	}
	#imgFileList {
		margin: 0;
		padding: 0;
		width: 230px;
		height: 230px;
	}
</style>
</head>
<body>
	<h1>게시글 목록</h1>
	<div id="img_content">
	<div id="write">
		<input type="button" value="글쓰기" onclick="javascript:location.href='ResaleController?type=newPost'">
	</div>
		<c:forEach var="vo" items="${list}">
	<a href="ResaleController?type=detail&rs_seq=${vo.rs_seq}&cPage=${pvo.getNowPage()}">
		<div id="onePostBox">
			<div id="imgBox">
				<c:choose>
			    <c:when test="${empty imgList }">
			    	<img id="imgFileList" src="./images/default-placeholder.jpg">
			    </c:when>
			    <c:otherwise>
			    <c:forEach items="${imgList }" var="img">
			    	<img id="imgFileList" src="/BITBANG/resale_img/${img[0].rs_file_name}">
			    	</c:forEach>
			    </c:otherwise>
			    </c:choose>
				
			</div>
			<br>
			<div id="infoBox">
				<div id="listSubject">${vo.subject}</div>
				<div id="infoChildBox">
				<table border id="infoTable">
					<tr>
						<td id="priceBox"><span id="listPrice">${vo.price}</span>&nbsp;<span id="won">원</span></td>
						<td id="listDate">${vo.reg_date}</td>
					</tr>
					
				</table>
				</div>
			</div>
			<div id="addrBox">&nbsp;<img src ="img/pin.png" width="15px" height="15px"></div>
		</div>
		</a>
		</c:forEach>
	</div>
</body>
</html>