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

<!-- ì¹ í°í¸ -->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean"
	rel="stylesheet">

<!-- ë¬ë ¥ -->
<link rel="stylesheet" href="./jquery-ui-1.12.1/jquery-ui.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="./jquery-ui-1.12.1/jquery-ui.min.js"></script>

<script src="./jquery-ui-1.12.1/datepicker-ko.js"></script>
<script type="text/javascript"></script>
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
			<h2 class="ir_so">ë°°ë ìì­</h2>
			<div class="container">
				<div class="row">
					<div class="bm_right">
						<ul>
							<li class="line size1"><a href="#">ì§ ë§¤ë§¤</a></li>
							<li class="line size2"><a href="#">ìì½ íì¸</a></li>
							<li class="line size3"><a href="#">íê¸°ê²ìí</a></li>
							<li class="line size4"><a href="bnb_hostjoin.jsp">í¸ì¤í¸ë±ë¡</a></li>
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
		<div class="container">
			<div class="row">
				<h2 class="ir_so">ìì ê²ì</h2>
				<div class="searchbox">
					<div class="search_tit">
						<h1>BitBangìì ìì, í¸í ë±ì ìì½íì¸ì.</h1>
					</div>
					<div class="search_info">
						<form method="post">
							<div class="destination">
								<div class="des_tit">
									<span>ëª©ì ì§</span>
								</div>
								<div class="des_location">
									<input type="text" name="city_search" autocomplete="off"
										expanded="false" placeholder="  ëª¨ë ëì">
								</div>
							</div>
							<div class="date">
								<div class="clearfix">
									<div class="date_checkin">
										<div class="checkin_tit">
											<label for="checkin_input"><spand>ì²´í¬ì¸</spand></label>
										</div>
										<div class="checkin_date">
											<input type="text" name="checkin" class="date1"
												placeholder="   ë / ì / ì¼" value readonly>
										</div>
									</div>
									<div class="date_checkout">
										<div class="checkout_tit">
											<label for="checkout_input"><spand>ì²´í¬ìì</spand></label>
										</div>
										<div class="checkout_date">
											<input type="text" name="checkout" class="date1"
												placeholder="   ë / ì / ì¼" value readonly>
										</div>
									</div>
								</div>
							</div>
							<div class="personNum">
								<div class="personNum_tit">
									<label for="personCheck"><span>ì¸ì</span></label>
								</div>
								<div class="select">
									<select name="personNum" class="pSelect">
										<option value="ê²ì¤í¸ 1ëª">ê²ì¤í¸ 1ëª</option>
										<option value="ê²ì¤í¸ 2ëª">ê²ì¤í¸ 2ëª</option>
										<option value="ê²ì¤í¸ 3ëª">ê²ì¤í¸ 3ëª</option>
										<option value="ê²ì¤í¸ 4ëª">ê²ì¤í¸ 4ëª</option>
										<option value="ê²ì¤í¸ 5ëª">ê²ì¤í¸ 5ëª</option>
									</select>
								</div>
							</div>
							<div class="search_btn">
								<button type="button" name="ê²ìê²°ê³¼ë¡ ì´ë"
									onclick="search_go(this.form)">
									<span>ê²ì</span>
								</button>
							</div>
						</form>
					</div>
				</div>
				<div class="adverbox">
                    <h2 class="ir_so">ê´ê³ </h2>
                    <div class="adveraction">
                        <div class="adver_tit">ì²« ìì ìì½ ì</div>
                        <div class="adver_context">10% í ì¸!</div>
                        <div class="adver_mention">ì§ê¸ ìì½íì¸ì.https://wsss.tistory.com/88</div>
                    </div>
                </div>
			</div>
		</div>
	</section>
	<!-- //search -->



	<!-- ìë°ì¤í¬ë¦½í¸ ë¼ì´ë¸ë¬ë¦¬ -->
	<script src="bnb_js/swiper.min.js"></script>
	<script>
		var mySwiper = new Swiper('.swiper-container', {
			autoplay : {
				delay : 5000
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
				dateFormat : " MM ddì¼"
			});
			
		});
	</script>
</body>
</html>