<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<style>
	body {
		margin: 0 auto;
		text-align: center;
	}

	#detailBox {
		display: inline-block;
		width: 1000px;
		height: 1200px;
	}
	#cate {
		text-align: left;
	}

	
	#infoTable {
		width: 1000px;
		height: 450px;
	}
	
	
	#imgBox {
		width: 400px;
		height: 450px;
	}
	
	#imgFile {
		margin-top: 0;
		margin-right: 50px;
		width: 450px;
		height: 450px;
		float: left;
	}
	#commText {
		text-decoration: underline;
		text-underline-position: under;

	}
	td {
		width: 700px;
	}
	
	td#subject {
		height: 20%;
		font-size: 35px;
	}
	td#price {
		height: 25%;
		border-bottom: 1px solid black;
		font-size: 35px;
	}
	td#name {
		height: 10%;
	}
	td#address {
		height: 10%;
	}
	td#reg_date {
		height: 10%;
	}
	td#hit {
		height: 10%;
	}
	#contentBox {
		width: 900px;
		height: 650px;
		text-align: left;
		display: inline;
	}
	#contentText{
		display: inline;
		float: left;

		width: 400px;
		height: 600px;
		margin-right: 100px;
	}
	#commentBox{

		display: inline;
		float: left;

		width: 496px;
		height: 600px;
	}
	
	.userInfo {
		text-align: left;
	}
	#commText {
		width:490px;
		height:100px;
	}
	
	.commUp {
		margin-top: 5px;
		border-top: 1px solid black;
	}
	.commDown {
		margin-bottom: 5px;
		border-bottom: 1px solid black;
	}
</style>
<link rel="stylesheet" href="../../css/slide.css"/>
<script type="text/javascript" src="../../js/slide.js" ></script>
     
</head>
<body>

	<div id="detailBox">
		<div id="cate">
		<p>카테고리 : 카테1&nbsp;&gt;&nbsp;카테2</p>
		<br>
		<hr>
		<br>
		</div>
			<table id="infoTable">
				<tr>
					<td rowspan="6" id="imgBox">
					    <div class="slider">
					      <ul class="panel">
					        <li><img src="resale_img/img2.png"></li>
					        <li><img src="resale_img/img3.png"></li>
					        <li><img src="resale_img/img4.png"></li>
					        <li><img src="resale_img/img2.png"></li>
					        <li><img src="resale_img/img3.png"></li>
					        <li><img src="resale_img/img4.png"></li>
					      </ul>
					      <ul class="btn">
					        <li class="on"></li>
					        <li></li>
					        <li></li>
					        <li></li>
					        <li></li>
					        <li></li>
					      </ul>
					      <button class="prev"><img src="../../images/back.png" style="width:50px"></button>
					      <button class="next"><img src="../../images/next.png" style="width:50px"></button>
					    </div>
					</td>
					<td id="subject" class="userInfo">&nbsp;&nbsp;&nbsp;&nbsp;제목이다 제목이야 싸다구 싸</td>
				</tr>
				<tr>
					<td id="price" class="userInfo">&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 50px">1000</span>원</td>
				</tr>
				<tr>
					<td id="name" class="userInfo">&nbsp;&nbsp;&nbsp;&nbsp;<spand>&middot;&nbsp;판매자</spand>&nbsp;&nbsp;&nbsp;&nbsp;rexypark</td>
				</tr>
				<tr>
					<td id="address" class="userInfo">&nbsp;&nbsp;&nbsp;&nbsp;<spand>&middot;&nbsp;지역</spand>&nbsp;&nbsp;&nbsp;&nbsp;<img src ="../../images/pin.png" width="15px" height="15px">&nbsp;경남 밀양시</td>
				</tr>
				<tr>
					<td id="reg_date" class="userInfo">&nbsp;&nbsp;&nbsp;&nbsp;<spand>&middot;&nbsp;날짜</spand>&nbsp;&nbsp;&nbsp;&nbsp;2019.01.01</td>
				</tr>
				<tr>
					<td id="hit" class="userInfo">&nbsp;&nbsp;&nbsp;&nbsp;<spand>&middot;&nbsp;조회</spand>&nbsp;&nbsp;&nbsp;&nbsp;12</td>
				</tr>
			</table>
		<br><br><br>
		<div id="contentBox">
			<div>
			<div id="contentText">
			<div>
			<label style="font-weight: bold; font-size: 25px">상품정보</label>
			</div>
			<br><hr><br>
			<p>내용</p>
			</div><!-- contentText End -->
			</div>
			<div id="commentBox">
			<div>
			<label style="font-weight: bold; font-size: 25px">댓글</label>
			</div>
			<br><hr><br>
			<input type="text" name="inComm" id="commText" >
			<input type="button" value="댓글입력" style="float: right">
			<br>
			<br>
			<div id="commentList"></div>
			<table>
				<tr>
				<td class="commUp">rexy</td>
				<td class="commUp" style="text-align: right;">2020.1.11</td>
				</tr>
				<tr>
				<td class="commDown" colspan="2">ㅎㅇㅎㅇ</td>
				</tr>
			</table>
			
			</div>
		</div><!-- contentBox End -->

	</div><!-- detailBox End -->
</body>

</html>