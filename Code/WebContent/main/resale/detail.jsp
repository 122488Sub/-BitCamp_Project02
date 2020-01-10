<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
		margin: 0 auto;
		text-align: center;
	}

	#detailBox {
		display: inline-block;
		border: 1px solid black;
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
		width: 450px;
		height: 450px;
		float: left;
	}
	
	td {
		width: 700px;
	}
	
	td#subject {
		height: 20%;
	}
	td#price {
		height: 25%;
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
		text-align: left;
		display: inline;
	}
	#contentText{
		display: inline;
		float: left;
		border: 1px solid black;
		width: 500px;
		height: 600px;
	}
	#commentBox{
		display: inline;
		float: left;
		border: 1px solid black;
		width: 496px;
		height: 600px;
	}
</style>
	
</head>
<body>

	<div id="detailBox">
		<div id="cate">
		<p>카테고리 : 카테1&nbsp;&gt;&nbsp;카테2</p>
		</div>
			<table id="infoTable" border>
				<tr>
					<td rowspan="6" id="imgBox">
					<img src="resale_section5_img4.jpg" id="imgFile">
					</td>
					<td id="subject">제목이다 제목이야 싸다구 싸</td>
				</tr>
				<tr>
					<td id="price">1000원</td>
				</tr>
				<tr>
					<td id="name">rexypark</td>
				</tr>
				<tr>
					<td id="address">경남 밀양시</td>
				</tr>
				<tr>
					<td id="reg_date">2019.01.01</td>
				</tr>
				<tr>
					<td id="hit">12</td>
				</tr>
			</table>
		<br><br><br>
		<div id="contentBox">
			<div>
			<label>상품정보</label>
			</div>
			<hr>

			<div id="contentText">
			<p>내용</p>
			</div><!-- contentText End -->

			<div id="commentBox">
			댓글 : <input type="text" name="inComm">
			<hr>
			<div id="commentList"></div>
			<p>댓글1</p>
			<p>댓글2</p>
			<p>댓글1</p>
			<p>댓글2</p>
			<p>댓글1</p>
			<p>댓글2</p>
			</div>
		</div><!-- contentBox End -->

	</div><!-- detailBox End -->
</body>
</html>