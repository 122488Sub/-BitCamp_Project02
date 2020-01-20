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

	<header id="header">
		<nav id="mNav">
			<h2 class="ir_so">Searching the share house</h2>
			<a href="#" class="ham"><span></span></a>
		</nav>
		<div class="search2">
			<div class="container2">
				<h2 class="ir_so">숙소 검색2</h2>
				<div class="searchline">
					<input type="text" name="search2">
				</div>
			</div>
		</div>
	</header>
	<!-- //header -->

	<section id="pic_area">
		<div class="roompic_box">
			<div class="roompic1"></div>
			<div class="roompic2"></div>
			<div class="roompic3"></div>
			<div class="roompic4"></div>
			<div class="roompic5"></div>
		</div>
	</section>
	<!-- //pic_area -->

	<section id="roomdetail">
		<div class="container3 clearfix">
			<div class="row">
				<div class="room_box">
					<div class="room_dtit">
						<div class="droom_name">
							<h1>${rinfo.r_name }</h1>
							<p>${rinfo.city_name }</p>
						</div>
						<div class="droom_host">
							<div class="dhost_pic"></div>
							<div class="dhost_name">${rinfo.h_name }</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<hr>
					<div class="room_sinfo">
						<nav id="mNav">
							<h2 class="ir_so">explaining the room information in detail</h2>
							<a href="#" class="ham"><span></span></a>
						</nav>
						<div class="info_rtype">
							<img src="img/houseimg.jpg" alt="houseimg"> <strong>${rinfo.room_type }</strong>
						</div>
						<div class="info_rpersoncnt">인원 ${rinfo.person_cn }명</div>
						<div class="info_rcnt">침실 ${rinfo.room_cn }개</div>
						<div class="info_rbedcnt">침대 ${rinfo.bed_cn }개</div>
						<div class="info_rdesc">${rinfo.r_info }</div>
					</div>
					<hr>
					<div class="facility_box">
						<div class="dfacility">
							<div class="facil_name">
								<strong>편의시설</strong>
							</div>
							<c:forEach items="${fn:split(rinfo.facility,'.' )}" var="item">
								<div class="facil_list">${ item}</div>
							</c:forEach>
						</div>
					</div>
					<hr>
					<div class="dreservation_box">
						<div class="dreserv_info">
							<div class="dreserv_tit">
								<strong>예약 가능 여부</strong>
							</div>
						</div>
						<div class="dreserv_date">예약날짜 구역</div>
						<div class="dreserv_deldate">
							<span>
								<button>
									<strong>날짜 지우기</strong>
								</button>
							</span>
						</div>
					</div>
					<hr>
					
					
					
					<c:forEach var="btag" items="${tag_list }">
					
					<div class="dtag_box">
						<div class="dtag_main">
							<div class="dtag_tit">
								<h2>
									<strong>후기</strong>
								</h2>
							</div>
							<div class="dtag_totalpoint">
								<img src="img/greenstar.png" alt="eq_star"> <strong>${rinfo.total_eq}</strong>
							</div>
							<div class="dtag_count">
								<strong>134</strong> 후기
							</div>
						</div>
						<div class="dtag_list">
							<div class="dlist_box">
								<div class="dlist_boxitems">
									<div class="boxitem">
										<div class="boxitem_name">시설</div>
										<div class="boxitem_point">${rinfo.facility_eq}</div>
									</div>
									<div class="boxitem">
										<div class="boxitem_name">호스트</div>
										<div class="boxitem_point">${rinfo.host_eq}</div>
									</div>
									<div class="boxitem">
										<div class="boxitem_name">청결도</div>
										<div class="boxitem_point">${rinfo.clean_eq}</div>
									</div>
									<div class="boxitem">
										<div class="boxitem_name">의사소통</div>
										<div class="boxitem_point">${rinfo.communication_eq}</div>
									</div>
									<div class="boxitem">
										<div class="boxitem_name">위치</div>
										<div class="boxitem_point">${rinfo.location_eq}</div>
									</div>
									<div class="boxitem">
										<div class="boxitem_name">정확성</div>
										<div class="boxitem_point">${rinfo.accuracy_eq}</div>
									</div>
								</div>
							</div>
						</div>
						<div class="dtag_replybox">
							<div class="dguest_replybox">
								<div class="dguest_taginfo">
									<div class="dguest_tagpic"></div>
									<div class="dguest_name_date">
										<strong>${btag.write_date }</strong><br> 
									</div>
								</div>
								<div class="dguest_tagcont">
								${btag.tag_cont }
								<!-- 
								Hello, I am hea-li. we were so
									friendly. you were willing to help me whenever i need help. The
									room was so luxury and clean. Sometimes i think it will be so
									nice if i can live in your house's room forever. I definitely
									would visit your house for meeting you again. Thank you na-eun.
									
									 -->
								</div>
							</div>
							<div class="dhost_replybox">
								<div class="dhost_replypic"></div>
								<div class="dhost_replycont">
									<strong>${rinfo.h_name } 님의 답변 : </strong><br> My lovely
									hea-li!!. I have been missing you so much by you leaving
									here...I really hope you to visit in here again and wish you
									safe travels as well. We promised if i come to your city, I
									also stay in your house! I will visit in there in three months.
									Don't forget me! <br> <br> <span>2019년 12월</span>
								</div>
							</div>
							<hr>
							<div class="dpaging_area">페이징 처리 부분</div>
						</div>
					</div>
					</c:forEach>
					<!-- //후기 -->
					
					
					<div class="dhost_infobox">호스트 정보 표시</div>
					<hr>
					<div class="dlocation_infobox">
						<div id="staticMap" style="width:100%;height:350px;"></div>
						<div class="mapinfo">정확한 위치 정보는 예약이 확정된 후 알려드립니다.</div>
					</div>
					<hr>
					<div class="dnotice_infobox">
						<div class="dnotice_headerbox">
							<h2>
								<strong>유의 사항</strong>
							</h2>
						</div>
						<div class="dnotice_contentbox">
							<span>체크인 : </span> ${rinfo.checkin_time }<br> <span>체크아웃
								: </span> ${rinfo.checkout_time }
						</div>
						<div class="dreserve_cancel">
							<div class="dreserv_canceltit">예약 취소</div>
							<div class="dreserv_cancelcont">체크인 30일 전까지 예약을 취소하면 모든
								수수료를 포함한 요금 전액이 환불됩니다.</div>
						</div>
					</div>
				</div>
				<div class="calculationbox">
					<div class="cal_box">
						<div class="cal_header">
							<div class="cal_headertit">
							<c:choose>
							  		<c:when test="${diffdate >= 7 }">
										<span>&#8361; ${rinfo.discount_price } </span> &#47; 박
									</c:when>
									<c:otherwise>
										<span>&#8361; ${rinfo.r_price } </span> &#47; 박
									</c:otherwise>
							</c:choose> 
							</div>
							<div class="cal_point">
								<img src="img/greenstar.png" alt="eq_star"> 4.71 <span>후기 &#40;189개&#41;</span>
							</div>
						</div>
						<hr>
						<form action="reserv_confirm.do?room_serial=${rinfo.room_serial}&id=${id}&total_payment=${diffdate * rinfo.r_price }&total_payment_disc= ${diffdate * rinfo.discount_price }" method="post">
							<div class="cal_date">
								<div class="cdate_tit">날짜</div>
								<div class="cdate_inputbox">
									<div class="checkin">
										<input type="text" name="checkin" placeholder="   년 / 월 / 일" value="${checkin }"
											readonly style="border: 0px"; >
									</div>
									<span>&#187;</span>
									<div class="chekcout">
										<input type="text" name="checkout" placeholder="   년 / 월 / 일" value="${checkout }"
											readonly style="border: 0px;" >
									</div>
								</div>
							</div>
							<div class="cal_personNum">
								<div class="cpersonNum">인원</div>
								<div class="cpersonNumbox">
									<select name="person_select" class="cpersonselect">
										<option value="게스트 1명">게스트 1명</option>
										<option value="게스트 2명">게스트 2명</option>
										<option value="게스트 3명">게스트 3명</option>
										<option value="게스트 4명">게스트 4명</option>
										<option value="게스트 5명">게스트 5명</option>
									</select>

								</div>
							</div>
							
							<c:choose>
							  		<c:when test="${diffdate >= 7 }">
										<div class="cal_price">
											<div class="cprice_cal">&#8361; ${rinfo.discount_price } X ${diffdate} 박</div>
											<hr>
											<div class="cp_totalname">합계</div>
											<div class="cprice_result" name="total_payment_disc">&#8361; ${diffdate * rinfo.discount_price }</div>
										</div>
									</c:when>
									<c:otherwise>
										<div class="cal_price">
											<div class="cprice_cal">&#8361; ${rinfo.r_price } X ${diffdate} 박</div>
											<hr>
											<div class="cp_totalname">합계</div>
											<div class="cprice_result" name="total_payment" >&#8361; ${diffdate * rinfo.r_price }</div>
										</div>
									</c:otherwise>
							</c:choose> 
							<div class="cal_buttonbox">
								<div class="cal_button">
									<button type="submit" class="cal_buttonaction">
										<span>예약하기</span>
									</button>
								</div>
							</div>
							<div class="cal_content">예약 확정 전에는 요금이 청구되지 않습니다.</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //section -->
	<footer>
		<div id="footer">푸터영역입니다.</div>
	</footer>

	<script>
var staticMapContainer  = document.getElementById('staticMap'), // 이미지 지도를 표시할 div  
    staticMapOption = { 
        center: new kakao.maps.LatLng(${rinfo.centerpoint}), // 이미지 지도의 중심좌표
        level: 5 // 이미지 지도의 확대 레벨
    };

// 이미지 지도를 표시할 div와 옵션으로 이미지 지도를 생성합니다
var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption);
</script>


</body>
</html>
