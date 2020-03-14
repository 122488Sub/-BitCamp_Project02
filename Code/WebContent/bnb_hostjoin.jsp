<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>host_register</title>



<!-- css -->
<link rel="stylesheet" href="bnb_css/reset.css">
<link rel="stylesheet" href="bnb_css/style.css">
<link rel="stylesheet" href="bnb_css/swiper.css">

<!-- 웹 폰트 -->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean"
	rel="stylesheet">


	<link rel="stylesheet" href="./jquery-ui-1.12.1/jquery-ui.min.css">
	<%@ include file="/main/navCssLink.html"%>
</head>
<body>
	<c:choose>
		<c:when test="${not empty sessionScope.id}">
			<%@ include file="/main/navLogOutBody.html"%>
		</c:when>
		<c:otherwise>
			<%@ include file="/main/navBody.html"%>
		</c:otherwise>
	</c:choose>
	<hr>

	<header id="header">
		<div class="container3">
			<div class="row">
				<nav id="mNav">
					<h2 class="ir_so">Searching the share house</h2>
					<a href="#" class="ham"><span></span></a>
				</nav>

				<div class="bnb_hostjoinbox">
					<form method="post" action="bnb_hostjoin.do"
						enctype="multipart/form-data">
						<div class="host_joinheader">

							<div class="jhost_tit">호스트 등록 페이지 입니다.</div>
							<hr>
							<div class="jhost_box1">
								<div class="jhost_ID_tit">호스트 ID</div>
								<div class="jhost_ID_cont">
									<input type="text" name="id" size="31" placeholder="${id }" value="${id }" >
								</div>
							</div>
							
							<div class="jhost_box2">
								<div class="jhost_name_tit">호스트 이름</div>
								<div class="jhost_name_cont">
									<input type="text" name="h_name" size="31">
								</div>
							</div>
							
							<div class="jhost_box3">
								<div class="jhost_phone_tit">연락처</div>
								<div class="jhost_phone_cont">
									<input type="text" name="h_phone" size="31">
								</div>
							</div>
						
							<div class="jhost_box4">
								<div class="jhost_pic_tit">호스트 사진</div>
								<div class="jhost_pic_cont">
									<input type="file" name="host_pic" >
								</div>
							</div>
							
							<div class="jhost_box5">
								<div class="jhost_intro_tit">자기소개</div>
								<div class="jhost_intro_cont">
									<textarea cols="40" rows="5"  name="h_intro"></textarea>
								</div>
							</div>
							<hr clearfix>
							<div class="hostregist">
								<button type="submit" name="hostregist">방정보 등록하기</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

	</header>

</body>
</html>