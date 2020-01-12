<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" href="./css/post.css"/>

<style>
	.imgs_wrap{
		width: 600px;
		margin-top: 50px;
	}
	.imgs_wrap img{
		max-width: 200px;
	}
</style>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	$(function(){
		$(".cate1").bind("click", function(){ // cate1클래스 클릭하면 해당 태그 텍스트 파싱
			var text = $(this).text();
			$("#cateResult1").html(text + " > "); //해당 아이디에 파싱 텍스트 추가 
			$('#hiddenCate1').val(text); //input태그에 텍스트 값 저장
		});

		$(".cate2").bind("click", function(){ // cate2클래스 클릭하면 해당 태그 텍스트 파싱
			var text = $(this).text();
			$("#cateResult2").html(text); //해당 아이디에 파싱 텍스트 추가 
			$('#hiddenCate2').val(text); //input태그에 텍스트 값 저장
		});
	});
	
	//------------------다중 이미지 미리보기 제공
	
	var sel_files = [];
	$(function (){
		$("#input_imgs").on("change", handleImgsFilesSelect);
	});
	
	function handleImgsFilesSelect(e) {
		var files = e.target.files;
		var fileArr = Array.prototype.slice.call(files);
		
		fileArr.forEach(function(f){
			if(!f.type.match("image.*")) {
				alert("확장자는 이미지 확장자만 가능합니다. ");
				return;
			}
			
			sel_files.push(f);
			
			var reader = new FileReader()
			reader.onload = function(e) {
				var img_html = "<img src=\""+ e.target.result + "\" />";
				$(".imgs_wrap").append(img_html);
			}
			reader.readAsDataURL(f);
		});
	}
</script>
<%@ include file="../navCssLink.html" %>
</head>

<body>
<%@ include file="../navBody.html" %>   
	<div id="content">
		<form action="../../ResaleController?type=write" method="post" enctype="multipart/form-data">
			<h2>기본 정보</h2>
			<hr>
			<div id="imgBox">
				<label>사진 : </label>
				<div id="defaultImg">
				 <img src="images/default-placeholder2.png"  width="200px" height="200px">
				</div>
				<input type="file" id="input_imgs" name="filename" multiple/>
				<div class="imgs_wrap">
				</div>
			</div><!-- imgBox End -->
			<hr>
			<label>제목 : </label>
			<input type="text" name="subject" placeholder="제목을 입력하세요.">
			<hr>
			<div id="cateMain">
			<label id="cateLabel">카테고리 : &nbsp;</label>
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
			<p id="cateResult1"></p>
			<p> > </p>
			<p id="cateResult2"></p>
			</div><!-- cateMain End -->
			<hr>
			<div id="addrBox">
				<br>
				<label>거래지역 : &nbsp;</label>
				<div class="pac-card" id="pac-card">
			      <div id="pac-container">
			        <input id="pac-input" type="text" name="address"
			            placeholder="주소를 입력하세요">
			      </div>
			    </div>
		    </div>
			<div id="map"></div>
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
	
	<script type="text/javascript" src="./map/googleJS.js" ></script> 
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDW24W9sP9njddFNugiBUaJ-AzVfpQb_MY&libraries=places&callback=initMap"
        async defer></script>
	
</body>
</html>