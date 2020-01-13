<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
    <title>숙소 상세 페이지</title>
    <meta name="author" content="jh">
    <meta name="description" content="This page is for the detailed room informatin">
    <meta name="keywords" content="airbnb, share house, zigbang, seoul, city, room">
    
    <!-- css -->
    <link rel="stylesheet" href="bnb_css/reset.css">
    <link rel="stylesheet" href="bnb_css/style.css">
    <link rel="stylesheet" href="bnb_css/swiper.css">
    
    <!-- 웹 폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet">
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
		<div class="container clearfix">
			<div class="row">
				<div class="room_box">
					<div class="room_dtit">
						<div class="droom_name">
							<h1>Studio Palais_Royal_Opera</h1>
							<p>파리</p>
						</div>
						<div class="droom_host">
							<div class="dhost_pic"></div>
							<div class="dhost_name">Son na-eun</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<hr>
					<div class="room_sinfo">
					    <nav id="mNav">
                            <h2 class="ir_so">explaining the room information in detail</h2>
                            <a href="#" class="ham"><span></span></a>
                        </nav>
						<div class="info_rtype"><strong>아파트의 개인실</strong></div>
						<div class="info_rpersoncnt">인원 2명</div>
						<div class="info_rcnt">침실 1개</div>
						<div class="info_rbedcnt">침대 1개</div>
						<div class="info_rdesc">Hello, we are 3 flatmates, Adrien, Raul and Nicole living in a flat South of Paris. <br> 
						One private room in a flat in the city of Kremlin-Bicetre touching the 13th district of Paris. Quiet and close from paris, we are leaving in this flat for 8 years, area is calm and safe, and the view is amazing and the whole paris with sunset on the Eiffel tower!
						</div>
					</div>
					<hr>
					<div class="facility_box">
					    <div class="dfacility">
                            <div class="facil_name"><strong>편의시설</strong></div>
					        <div class="facil_list">세탁기</div>
					        <div class="facil_list">냉장고</div>
					        <div class="facil_list">에어컨</div>
					        <div class="facil_list">wifi</div>
					    </div>
					</div>
					<hr>
					<div class="dreservation_box">
					    <div class="dreserv_info">
					        <div class="dreserv_tit"><strong>예약 가능 여부</strong></div>
					    </div>
					    <div class="dreserv_date">
					        예약날짜 구역
					    </div>
					    <div class="dreserv_deldate">
					        <span>
					            <button><strong>날짜 지우기</strong></button>
					        </span>
					    </div>
					</div>
					<hr>
					
				</div>
			</div>
		</div>
		
	</section>
</body>
</html>
