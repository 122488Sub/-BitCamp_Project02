<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=429fc0ee66eceb779b718468942bf109&libraries=services,clusterer,drawing"></script>

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
						<span aria-label="1월 14일 - 1월 23일">${checkin}&nbsp;&nbsp;-&nbsp;&nbsp;${checkout }
						</span>
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

					<c:if test="${not empty rlist }">
						<c:forEach var="rvo" items="${rlist }">
							<div class="roomlist_each"
								onclick="location.href='detailroom_view.do?room_serial=${rvo.room_serial}&checkin=${checkin}&checkout=${checkout }&personNum=${pNum } '">
								<div class="room_slider">
									<div class="swiper-container">
										<div class="swiper-wrapper">
											<!-- Slides -->
											<div class="swiper-slide li1"
												style="background: url(${rvo.r_pic1 })  no-repeat center center; background-size: cover; border-radius: 5px;"></div>
											<div class="swiper-slide li2"
												style="background: url(${rvo.r_pic2 })  no-repeat center center; background-size: cover; border-radius: 5px;"></div>
											<div class="swiper-slide li3"
												style="background: url(${rvo.r_pic3 })  no-repeat center center; background-size: cover; border-radius: 5px;"></div>
											<div class="swiper-slide li4"
												style="background: url(${rvo.r_pic4 })  no-repeat center center; background-size: cover; border-radius: 5px;"></div>
											<div class="swiper-slide li5"
												style="background: url(${rvo.r_pic5 })  no-repeat center center; background-size: cover; border-radius: 5px;"></div>
										</div>
									</div>
								</div>
								<div class="room_simpleinfo">
									<div class="sroom_type">${rvo.room_type }</div>
									<div class="sroom_point">
										<img src="img/redstar.jpg" alt="eq_star"> ${ rvo.total_eq }(
										5 )
									</div>
									<div class="sroom_tit">${rvo.r_name }</div>
									<%--<div class="sroom_option">편의시설 리스트  </div> --%>
									<div class="sroom_option">
									<c:forEach items="${fn:split( rvo.facility, '.') }" var="item">
											${ item}&nbsp;
									
									</c:forEach>
								  </div>
								  
								  <c:choose>
								  		<c:when test="${diffdate >= 7 }">
											<div class="sroom_price clearfix">
												<del style="color : red;">&#8361;  ${rvo.r_price } </del>&nbsp;<em>  &#8361; ${rvo.discount_price } / 1박</em>
											</div>
											<div class="sroom_tot clearfix">총 요금 : &#8361; ${diffdate  * rvo.discount_price} </div>
										</c:when>
										<c:otherwise>
											<div class="sroom_price clearfix">
												<em>&#8361; ${rvo.r_price } / 1박</em>
											</div>
											<div class="sroom_tot clearfix">총 요금 : &#8361; ${diffdate  *  rvo.r_price} </div>
										</c:otherwise>
									</c:choose> 
								</div>
								
								
								<hr class="b" color="#EBEBEB">
							</div>
						</c:forEach>
					</c:if>
					<c:if test="${empty rlist }">
							검색 결과에 맞는 숙소가 없습니다.
						</c:if>


					<div class="pagingbox">
						<div class="ir_so">paging</div>
						<ol class="paging">
							<c:choose>
								<c:when test="${bnb_pvo.beginPage < bnb_pvo.pagePerBlock }">
									<li class="disable">이전으로</li>
								</c:when>
								<c:otherwise>
									<li><a
										href="searchresult.do?cPage=${bnb_pvo.beginPage - bnb_pvo.pagePerBlock }&city_search=${cSearch }&checkin=${checkin}&checkout=${checkout }&personNum=${pNum }">이전으로</a>
									</li>
								</c:otherwise>
							</c:choose>
							<c:forEach var="k" begin="${bnb_pvo.beginPage }"
								end="${bnb_pvo.endPage }" step="1">
								<c:if test="${k==bnb_pvo.nowPage }">
									<li class="now">${k }</li>
								</c:if>
								<c:if test="${k != bnb_pvo.nowPage }">
									<li><a href="searchresult.do?cPage=${k }&city_search=${cSearch }&checkin=${checkin}&checkout=${checkout }&personNum=${pNum }">${k }</a></li>
								</c:if>
							</c:forEach>
							<c:choose>
								<c:when test="${bnb_pvo.endPage >= bnb_pvo.totalPage}">
									<li class="disable">다음으로</li>
								</c:when>
								<c:otherwise>
									<li><a
										href="searchresult.do?cPage=${bnb_pvo.beginPage + bnb_pvo.pagePerBlock}&city_search=${cSearch }&checkin=${checkin}&checkout=${checkout }&personNum=${pNum }">다음으로</a>
									</li>
								</c:otherwise>
							</c:choose>
						</ol>
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
		var mySwiper = new Swiper('.swiper-container', {
			autoplay : {
				delay : 5000
			}
		});
	</script>
	<script>
	
	<%-- List<BNB_ROOM_INFOVO> brilist=(List<BNB_ROOM_INFOVO>) request.getAttribute("rlist"); 
	for(BNB_ROOM_INFOVO brivo : brilist){
		System.out.println(brivo.getCenterpoint().replaceAll("[\\(\\)]", ""));
		
	}
--%>

		var mapContainer = document.getElementById('mapbox'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(${ctp}), // 지도의 중심좌표 - 나중에 검색한 것의 가장 위에 있는 것의 좌표가 넣어지도록 변경
			level : 4
		// 지도의 확대 레벨
		};

		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
		var map = new kakao.maps.Map(mapContainer, mapOption);
		
		
		
		function getInfo() {
			var center = map.getCenter(); // 지도의 현재 중심좌표를 얻어옴
			var bounds = map.getBounds(); // 지도의 현재 영역을 얻어옴
			var swLatLng = bounds.getSouthWest(); //영역의 남서쪽 좌표를 얻어옴
			var neLatLng = bounds.getNorthEast(); //영역의 북동쪽 좌표를 얻어옴
			var boundsStr = bounds.toString(); // 영역정보를 문자열로 얻어옴
			
			var message = '지도 중심좌표는 위도 ' + center.getLat() + ', <br>';
		    message += '경도 ' + center.getLng() + ' 이고 <br>';
		    message += '지도의 남서쪽 좌표는 ' + swLatLng.getLat() + ', ' + swLatLng.getLng() + ' 이고 <br>';
		    message += '북동쪽 좌표는 ' + neLatLng.getLat() + ', ' + neLatLng.getLng() + ' 입니다';
		    
		    console.log(message);
		   
		}
		//지도가 이동, 확대, 축소로 중심 좌표가 변경시 지도의 중심좌표를 호출
		kakao.maps.event.addListener(map, 'center_changed', function() {
			 // 지도의  레벨을 얻어옵니다
		    var level = map.getLevel();

		    // 지도의 중심좌표를 얻어옵니다 
		    var latlng = map.getCenter(); 

		    var message = '<p>지도 레벨은 ' + level + ' 이고</p>';
		    message += '<p>중심 좌표는 위도 ' + latlng.getLat() + ', 경도 ' + latlng.getLng() + '입니다</p>';
		    console.log(message);
		    var resultDiv = document.getElementById('result');
		    
		    //resultDiv.innerHTML = message;
			 
			   
		});

		var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667);  //마커가 표시될 위치
		
		// 마커 생성
		var marker = new kakao.maps.Marker({
   			 position: markerPosition
		});
		
		marker.setMap(map); //마커가 지도 위체 표시되도록 설정
		
		<c:forEach var="center" items="${rlist}" step="1">
		<c:choose>
			<c:when test="${diffdate >= 7 }">
				var iwContent ='<div style="padding:5px;" > <a href="detailroom_view.do?room_serial=${center.room_serial}" style="color:black; " target="_blank"> &#8361; ${center.discount_price }</a> </div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
			    iwPosition = new kakao.maps.LatLng(${center.centerpoint}); //인포윈도우 표시 위치입니다
		    </c:when>
			<c:otherwise>
				var iwContent ='<div style="padding:5px;" > <a href="detailroom_view.do?room_serial=${center.room_serial}" style="color:black; " target="_blank"> &#8361; ${center.r_price}</a> </div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
			    iwPosition = new kakao.maps.LatLng(${center.centerpoint}); //인포윈도우 표시 위치입니다
			</c:otherwise>
		</c:choose> 
	

		//인포 윈도우를 생성
		var infowindow = new kakao.maps.InfoWindow({
			position : iwPosition,
			content : iwContent
		});
	    
	    infowindow.open(map);
	    </c:forEach>
	</script>

</body>
</html>