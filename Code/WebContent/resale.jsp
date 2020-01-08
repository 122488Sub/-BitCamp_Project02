<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/post.css"/>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	$(function(){
		$(".cate1").bind("click", function(){
			var text = $(this).text();
			console.log("text : " + text);
			$("#cateResult1").html(text + " > ");
			$('#hiddenCate1').val(text);

		});
		
		$(".cate2").bind("click", function(){
			var text = $(this).text();
			console.log("text : " + text);
			$("#cateResult2").html(text);
			$('#hiddenCate2').val(text);
		});
	});
</script>
</head>
<body>

	<div id="content">
		<form action="ResaleController/type=upload">
			<h2>기본 정보</h2>
			<hr>
			<div id="imgBox">
				<label>사진 : </label>
				<div id="defaultImg">
				 <img src="images/default-placeholder2.png"  width="200px" height="200px">
				</div>
				<input type="file" name="filename">
			</div><!-- imgBox End -->
			<hr>
			<label>제목 : </label>
			<input type="text" name="subject" placeholder="제목을 입력하세요.">
			<hr>
			<div id="cateMain">
			<label id="cateLabel">설명 : &nbsp;</label>
			<div id="cateBox1" class="cateBox">
			<ul>
				<li>
					<button type="button" id="0" class="cate1">패션잡화</button>
				</li>
				<li>
					<button type="button" id="1" class="cate1">여성의류</button>
				</li>
				<li>
					<button type="button" id="2" class="cate1">남성의류</button>
				</li>
				<li>
					<button type="button" id="3" class="cate1">디지털/가전</button>
				</li>
				<li>
					<button type="button" id="4" class="cate1">도서/티켓/취미</button>
				</li>
				<li>
					<button type="button" id="5" class="cate1">유아/아동/출산</button>
				</li>
				<li>
					<button type="button" id="6" class="cate1">스타굿즈</button>
				</li>
				<li>
					<button type="button" id="7" class="cate1">스포츠 레저</button>
				</li>
				<li>
					<button type="button" id="8" class="cate1">뷰티/미용</button>
				</li>
				<li>
					<button type="button" id="9" class="cate1">스포츠레저</button>
				</li>
				<li>
					<button type="button" id="10" class="cate1">차량/오토바이</button>
				</li>
			</ul>
			</div><!-- cateBox1 End -->
			<div id="cateBox2" class="cateBox">
			<ul>
				<li>
					<button type="button" id="1" class="cate2">패션잡화2</button>
				</li>
				<li>
					<button type="button" id="2" class="cate2">여성의류2</button>
				</li>
				<li>
					<button type="button" id="3" class="cate2">남성의류2</button>
				</li>
				<li>
					<button type="button" id="4" class="cate2">디지털/가전2</button>
				</li>
				<li>
					<button type="button" id="5" class="cate2">도서/티켓/취미2</button>
				</li>
				<li>
					<button type="button" id="6" class="cate2">유아/아동/출산2</button>
				</li>
				<li>
					<button type="button" id="7" class="cate2">스타굿즈2</button>
				</li>
				<li>
					<button type="button" id="8" class="cate2">스포츠 레저2</button>
				</li>
				<li>
					<button type="button" id="9" class="cate2">뷰티/미용2</button>
				</li>
				<li>
					<button type="button" id="10" class="cate2">스포츠레저2</button>
				</li>
				<li>
					<button type="button" id="cate11" class="cate2">차량/오토바이2</button>
				</li>
			</ul>
			</div><!-- cateBox2 End -->
			<p id="cateText">카테고리 > </p>
			<p id="cateResult1"> > </p>
			<p> > </p>
			<p id="cateResult2"></p>
			</div><!-- cateMain End -->
			<hr>
			<div id="addrBox">
			<span>
			<button>주소 검색</button>
			<button>지하철 검색</button>
			</span>
			
			</div>
			<br>
			<label>거래지역 : &nbsp;</label>
			<input type="text" name="address" placeholder="주소를 입력하세요">
			<hr>
			<label>가격 : &nbsp;</label>
			<input type="text" name="price" placeholder="숫자만 입력하세요">
			<label>&nbsp; 원</label>
			<hr>
			<label>설명 : &nbsp;</label>
			<input type="text" id="contentBox" name="content" placeholder="제품에 대한 설명을 입력하세요.">
			<hr>
			<label>해시태그 : &nbsp;</label>
			<input type="text" name="hashtags" placeholder="최대 5개 입력 가능합니다.">
			<hr>
			<input type="hidden" id="hiddenCate1" name="cate1">
			<input type="hidden" id="hiddenCate2" name="cate2"> 
			<input type="submit" value="등록하기">
		</form>
	</div>
</body>
</html>