<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>숙소 상세 페이지</title>
<meta name="author" content="jh">
<meta name="description"
	content="This page is for the detailed room informatin">
<meta name="keywords"
	content="airbnb, share house, zigbang, seoul, city, room">
 

<!-- css -->
<link rel="stylesheet" href="bnb_css/reset.css">
<link rel="stylesheet" href="bnb_css/style.css">
<link rel="stylesheet" href="bnb_css/swiper.css">

<!-- kakao map -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=429fc0ee66eceb779b718468942bf109&libraries=services,clusterer,drawing"></script>


<!-- 웹 폰트 -->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean"
	rel="stylesheet">
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
	<hr>
	<header id="header">
		<h2 class="ir_so">Confirm the reservation</h2>
		<a href="#" class="ham"><span></span></a>
		<div class="search2">
			<div class="container3">
				<div class="row">
					<h2 class="ir_so">예약 정보 확인</h2>
					<div class="booking_box">
						<div class="booking_header">
							<div class="booking_tit">
								${bk.guest_name }님 예약이 완료 되었습니다.
							</div>
							<div class="booking_date">
								예약 완료 : ${bk.bookingdate }
							</div>
						</div>
						<hr>
						<div class="booking_info">
							<div class="booking_user">
								<div class="bookinguser_tit">
									예약자
								</div>
								<div class="bookinguser_info">
									${bk.guest_name }
								</div>
								<hr>
								<div class="bookingroom_tit">
									숙소명
								</div>
								<div class="bookingroom_name">
									${bk.room_name }
								</div>
								<hr>
								<div class="bookingroom_type">
									숙소 타입
								</div>
								<div class="bookingroom_typeinfo">
									${bk.room_type }
								</div>
								<hr>
								<div class="bookingroom_city">
									숙소 도시
								</div>
								<div class="bookingroom_cityinfo">
									${bk.room_city }
								</div>
								<hr>
								<div class="bookingroom_addr">
									숙소 상세 주소
								</div>
								<div class="bookingroom_addrinfo">
									${bk.room_address }
								</div>
							</div>
							<div class="booking_payment">
								<div class="bookinghost_tit">
									호스트명
								</div>
								<div class="bookinghost_name">
									${bk.host_name }
								</div>
								<hr>
								<div class="bookinghost_phone">
									호스트 연락처
								</div>
								<div class="bookinghost_number">
									${bk.host_phone }
								</div>
								<hr>
								<div class="payment_tit">
									<strong>결제 내역</strong>
								</div>
								<hr>
								<div class="payment_checkin">
									체크인  : ${bk.booking_checkin }
								</div>
								<div class="payment_what">
									>>
								</div>
								<div class="payment_checkout">
									체크아웃 : ${bk.booking_checkout }
								</div>
								<hr>
								<div class="payment_paytit">
									결제 금액
								</div>
								<div class="payment_info">
								
								
								<c:choose>
							  		<c:when test="${diffdate >= 7 }">
										${bk.booking_payment_disc }
									</c:when>
									<c:otherwise>
										${bk.booking_payment }
									</c:otherwise>
							</c:choose> 	
									
									
									
								</div>
							</div>													
						</div>
						<hr>
						<div class="bookingmapbox">
							<div id="map" style="width:90%;height:900px ;text-align : center; margin : 0 auto; "></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- //header -->
	
	<script>


var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(${bk.room_centerpoint}), // 지도의 중심좌표
    level: 2 // 지도의 확대 레벨
};

var map = new kakao.maps.Map(mapContainer, mapOption);

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(${bk.room_centerpoint}); 

//마커를 생성합니다
var marker = new kakao.maps.Marker({
position: markerPosition
});

//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

var iwContent = '<div style="padding:5px;">예약하신 숙소 위치 입니다!</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
iwPosition = new kakao.maps.LatLng(${bk.room_centerpoint}); //인포윈도우 표시 위치입니다

//인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
position : iwPosition, 
content : iwContent 
});

//마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
infowindow.open(map, marker); 

















	</script>
</body>
</html>