<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>searching the share house</title>
<meta name="author" content="jh">
<meta name="description"
	content="This section is for searching the share house">
<meta name="keywords" content="airbnb, share house, zigbang">


 
  <!-- css -->
<link rel="stylesheet" href="bnb_css/reset.css">
<link rel="stylesheet" href="bnb_css/style.css">
<link rel="stylesheet" href="bnb_css/swiper.css">

<!-- 웹 폰트 -->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean"
	rel="stylesheet">

<!-- 달력 -->
<link rel="stylesheet" href="./jquery-ui-1.12.1/jquery-ui.min.css">
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

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="./jquery-ui-1.12.1/jquery-ui.min.js"></script>

<script type="text/javascript"></script>

	<header id="header">
		<div class="row">
			<nav id="mNav">
				<h2 class="ir_so">Searching the share house</h2>
				<a href="#" class="ham"><span></span></a>
			</nav>
		</div>
	</header>
	<!-- //header -->

	<section id="banner">
		<div class="banner_menu">
			<h2 class="ir_so">배너 영역</h2>
			<div class="container3">
				<div class="row">
					<div class="bm_right">
						<ul>
							<li class="line size1"><a href="#">집 매매</a></li>
							<li class="line size2"><a href="BNB_reserv_result.do?id=${id}">예약 확인</a></li>
							<li class="line size3"><a href="#">후기게시판</a></li>
							<li class="line size4"><a href="bnb_hostjoin.jsp">호스트등록</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="slider">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<!-- Slides -->
					<div class="swiper-slide ss1"></div>
					<div class="swiper-slide ss2"></div>
					<div class="swiper-slide ss3"></div>
				</div>
			</div>
		</div>
	</section>
	<!-- //banner -->

	<section id="search">
		<div class="container3">
			<div class="row">
				<h2 class="ir_so">숙소 검색</h2>
				<div class="searchbox">
					<div class="search_tit" >
						<h1 >BitBang에서 숙소, 호텔 등을 예약하세요.</h1>
					</div>
					<div class="search_info">
						<form method="post">
							<div class="destination">
								<div class="des_tit">
									<span>목적지</span>
								</div>
								<div class="des_location">
									<input type="text" name="city_search" autocomplete="off"
										expanded="false" placeholder="  모든도시">
								</div>
							</div>
							<div class="date">
								<div class="clearfix">
									<div class="date_checkin">
										<div class="checkin_tit">
											<label for="checkin_input"><spand>체크인</spand></label>
										</div>
										<div class="checkin_date">
											<input type="text" name="checkin" class="date1"
												placeholder="   년 / 월 / 일" value readonly>
										</div>
									</div>
									<div class="date_checkout">
										<div class="checkout_tit">
											<label for="checkout_input"><spand>체크아웃</spand></label>
										</div>
										<div class="checkout_date">
											<input type="text" name="checkout" class="date1"
												placeholder="   년 / 월 / 일" value readonly>
										</div>
									</div>
								</div>
							</div>
							<div class="personNum">
								<div class="personNum_tit">
									<label for="personCheck"><span>인원</span></label>
								</div>
								<div class="select">
									<select name="personNum" class="pSelect">
										<option value="게스트 1명">게스트 1명</option>
										<option value="게스트 2명">게스트 2명</option>
										<option value="게스트 3명">게스트 3명</option>
										<option value="게스트 4명">게스트 4명</option>
										<option value="게스트 5명">게스트 5명</option>
									</select>
								</div>
							</div>
							<div class="search_btn">
								<button type="button" name="검색결과로 이동"
									onclick="search_go(this.form)">
									<span>검색</span>
								</button>
							</div>
						</form>
					</div>
				</div>
				<div class="adverbox">
                    <h2 class="ir_so">광고</h2>
                    <div class="adveraction">
                        <div class="adver_tit">첫 숙소 예약 시</div>
                        <div class="adver_context"><a href="#" style="color : red;">10% 할인!</a></div>
                        <div class="adver_mention">지금 예약하세요.</div>
                    </div>
                </div>
			</div>
		</div>
	</section>
	<!-- //search -->



	<!-- 자바스크립트 라이브러리 -->
	<script src="./bnb_js/swiper.min.js"></script>
	<script>
		var mySwiper = new Swiper('.swiper-container', {
			autoplay : {
				delay : 3500
			}
		});
	</script>
	<script>
		function search_go(frm) {
			frm.action = ("searchresult.do?");
			frm.submit();
		}
	</script>
	<script>
		$(function() {
			$(".date1").datepicker({
				dateFormat : " yy-mm-dd"
			});
			
		});
	</script>
</body>
</html>