<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="allBox">
	<h1>상세페이지</h1>
	<br><br>
	<h2>이미지</h2>
	<div id="imgBox">
	<c:forEach items="${saveFileList }" var="img">
		<img src="./main/resale/resale_img/${img }">
	</c:forEach>
	</div>
	<br><br><br><br>

	<div id="member">
	<label>이름 : </label>
	<p>${rsVO.name }</p>
	</div>
	<br><br><br><br>
	<div id="category">
	<label>카테고리 : </label>
	<p>${rsVO.category } - ${rsVO.category_child }</p>
	</div>
	<br><br><br><br>
	<div id="subject">
	<label>제목 : </label>
	<p>${rsVO.subject }</p>
	</div>
	<br><br><br><br>
	<div id="address">
	<label>주소 : </label>
	<p>${rsVO.address }</p>
	</div>
	<br><br><br><br>
	<div id="price">
	<label>가격 : </label>
	<p>${rsVO.price }</p>
	</div>
	<br><br><br><br>
	<div id="content">
	<label>설명 : </label>
	<p>${rsVO.content }</p>
	</div>
	<br><br><br><br>
	<div id="hashtag">
	<label>설명 : </label>
	<p>${rsVO.hash_tag }</p>
	</div>
	<br><br><br><br>
</div>
</body>
</html>