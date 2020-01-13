<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
:<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>검색명칭</title>
<meta name="author" content="jh">
<meta name="description" content="This page is the searching result">
<meta name="keywords"
	content="airbnb, share house, zigbang, seoul, city, room">

<!-- css -->
<link rel="stylesheet" href="bnb_css/reset.css">
<link rel="stylesheet" href="bnb_css/style.css">
<link rel="stylesheet" href="bnb_css/swiper.css">

<!-- kakao map -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=429fc0ee66eceb779b718468942bf109"></script>

<!-- 웹 폰트 -->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean"
	rel="stylesheet">
</head>
<body>
	<header id="header">
		<nav id="mNav">
			<h2 class="ir_so">Searching the share house</h2>
			<a href="#" class="ham"><span></span></a>
		</nav>
		<div class="search2">
			<div class="container2">
				<h2 class="ir_so">숙소 검색2</h2>
				<div class="searchline">
					<input type="text" name="search2" placeholder="${cSearch }">
				</div>
			</div>
		</div>
	</header>
	<!-- //header -->

	<section id="nav">
		<div class="container2">
			<h2 class="ir_so">선택 날짜 및 인원수</h2>
			<div class="select_info">
				<div class="select_date">
					<button type="button" aria-pressed="true">
						<span aria-label="1월 14일 - 1월 23일">${checkin} - ${checkout } </span>
					</button>
				</div>
				<div class="select_personNum">
					<button type="button" aria-pressed="true">
						<span aria-label="게스트 1명">${pNum }</span>
					</button>
				</div>
			</div>
		</div>
	</section>
	<!-- //nav -->

	<section id="roomresult">
		<div class="container2">
			<div class="ir_so">숙소 검색 결과</div>
			<div class="roomlist">
				<div class="roomlist_tit">
					<h3>원하시는 숙소를 선택해보세요!</h3>
				</div>
				<hr class="a" color="#EBEBEB">
				<div class="roomlist_items">
					<div class="roomlist_each"
						onclick="location.href='detailroom_view.do';">
						<div class="room_slider">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<!-- Slides -->
									<div class="swiper-slide li1"></div>
									<div class="swiper-slide li2"></div>
									<div class="swiper-slide li3"></div>
									<div class="swiper-slide li4"></div>
									<div class="swiper-slide li5"></div>
								</div>
							</div>
						</div>

						<c:if test="${not empty rlist }">
							<c:forEach var="rvo" items="${rlist }">
								<div class="room_simpleinfo">
									<div class="sroom_type">${rvo.room_type }</div>
									<div class="sroom_point">
										<img src="img/redstar.jpg" alt="eq_star"> ${ rvo.total_eq }( 5 )
									</div>
									<div class="sroom_tit">${rvo.r_name }</div>
									<div class="sroom_option">편의시설 리스트</div>
									<div class="sroom_price clearfix">
										<em>&#8361; ${rvo.r_price } / 1박</em>
									</div>
									<div class="sroom_tot clearfix">총 요금 : &#8361; 556,070</div>
								</div>
								<hr class="b" color="#EBEBEB">
							</c:forEach>
						</c:if>
						<c:if test="${empty rlist }">
							검색 결과에 맞는 숙소가 없습니다.
						</c:if>
					</div>
				</div>
				<div class="pagingbox">
				<div class="ir_so">paging</div>
					<div class="paging">
						<c:choose>
							<c:when test="${bnb_pvo.beginPage < bnb_pvo.pagePerBlock }">
								<div class="disable">이전으로</div>
							</c:when>
							<c:otherwise>
								<div class="sprev">
									<a href="searchresult.do?cPage=${bnb_pvo.beginPage - bnb_pvo.pagePerBlock }">이전으로</a>
								</div>
							</c:otherwise>
						</c:choose>
						<c:forEach var="k" begin="${bnb_pvo.beginPage }" end="${bnb_pvo.endPage }" step="1">
							<c:if test="${k==bnb_pvo.nowPage }">
								<div class="now">${k }</div>
							</c:if>
							<c:if test="${k != bnb_pvo.nowPage }">
								<a href="searchresult.do?cPage=${k }">${k }</a>
							</c:if>
						</c:forEach>
						<c:choose>
							<c:when test="${bnb_pvo.endPage >= bnb_pvo.totalPage}">
								<div class="disable">다음으로</div>
							</c:when>
							<c:otherwise>
								<div class="snext">
									<a href="searchresult.do?cPage=${bnb_pvo.beginPage + bnb_pvo.pagePerBlock }">다음으로</a>
								</div>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				
				
				<div class="ir_so">숙소 리스트 위치</div>
				<div id="mapbox"></div>
			</div>

		</div>
	</section>
	<!-- //roomresult -->



	<!-- 자바스크립트 라이브러리 -->
	<script src="bnb_js/swiper.min.js"></script>
	<script>
        var mySwiper = new Swiper ('.swiper-container', {
            autoplay : {
                delay : 5000
            }
        });
    </script>
	<script>
        var mapContainer = document.getElementById('mapbox'), // 지도를 표시할 div 
            mapOption = { 
                center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
            };

        // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
        var map = new kakao.maps.Map(mapContainer, mapOption); 
    </script>

</body>
</html>