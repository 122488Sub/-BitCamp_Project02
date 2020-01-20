<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link href="css/price.css" rel="stylesheet" type="text/css"></link>


<script>
	function update_go(frm){
		frm.action = "MyController?type=update";
		frm.submit();
	}
	function delete_go(frm){
		frm.action = "MyController?type=delete";
		frm.submit();
	}
</script>

<script>
$(window).on("load", function() {
	//$(window).on({load: function() {
	//$(window).load(function() {
	//$(document).ready(function(){

	   console.log("페이지.fffff");
	   	  $( '#detail_map_div2' ).css('display','none');
	      $( '#detail_map_div3' ).css('display','none'); 
	});

	 function viewDiv1(){
	    	console.log("1");
	    	$('#detail_map_div1').css('display','block ');
	    	$('#detail_map_div2').css('display','none');
	    	$('#detail_map_div3').css('display','none');
	    	
	    }
	    function viewDiv2(){
	    	console.log("2");
	    	$('#detail_map_div1').css('display','none');
	    	$('#detail_map_div2').css('display','block ');
	    	$('#detail_map_div3').css('display','none');
	    	
	    }
	    function viewDiv3(){
	    	console.log("3");
	    	$('#detail_map_div1').css('display','none');
	    	$('#detail_map_div2').css('display','none');
	    	$('#detail_map_div3').css('display','block ');	
	    }
/*
$(window).on("load", function() {
	//$(window).on({load: function() {
	//$(window).load(function() {
	//$(document).ready(function(){

	   console.log("페이지.ddd");
	   	  $( '#map1' ).hide();
	      $( '#map2' ).hide(); 
	});

	function viewDiv1(){
    	console.log("1");
    	$('#map').show();
    	$('#map1').hide();
    	$('#map2').hide();
    	
    }
    function viewDiv2(){
    	console.log("2");
    	$('#map').hide();
    	$('#map1').show();
    	$('#map2').hide();
    	
    }
    function viewDiv3(){
    	console.log("3");
    	$('#map').hide();
    	$('#map1').hide();
    	$('#map2').show();	
    }
    */
/*
	$(window).on("load", function() {
	//$(window).on({load: function() {
	//$(window).load(function() {
	//$(document).ready(function(){

	   console.log("페이지.");
	   $( '#detail_map_div2' ).hide();
	      $( '#detail_map_div3' ).hide(); 
	});

	function viewDiv1(){
    	console.log("1");
    	$('#detail_map_div1').show();
    	$('#detail_map_div2').hide();
    	$('#detail_map_div3').hide();
    	
    }
    function viewDiv2(){
    	console.log("2");
    	$('#detail_map_div1').hide();
    	$('#detail_map_div2').show();
    	$('#detail_map_div3').hide();
    	
    }
    function viewDiv3(){
    	console.log("3");
    	$('#detail_map_div1').hide();
    	$('#detail_map_div2').hide();
    	$('#detail_map_div3').show();	
    }*/
	/*
    function viewDiv1(){
    	console.log("1");
    	$('#detail_map_div1').css('display','block ');
    	$('#detail_map_div2').css('display','none');
    	$('#detail_map_div3').css('display','none');
    	
    }
    function viewDiv2(){
    	console.log("2");
    	$('#detail_map_div1').css('display','none');
    	$('#detail_map_div2').css('display','block ');
    	$('#detail_map_div3').css('display','none');
    	
    }
    function viewDiv3(){
    	console.log("3");
    	$('#detail_map_div1').css('display','none');
    	$('#detail_map_div2').css('display','none');
    	$('#detail_map_div3').css('display','block ');	
    }
    */
</script>


<style>
    .c_hidden { display: none; }
    .detail_map{
    	//position: absolute;
    
    }
</style>

<%request.setCharacterEncoding("UTF-8");%>

<%@ include file="main/navCssLink.html" %>
<c:choose>
	<c:when test="${not empty sessionScope.id}">
		<%@ include file="/main/navLogOutBody.html" %>
	</c:when>
	<c:otherwise>
		<%@ include file="/main/navBody.html" %>
	</c:otherwise>
</c:choose>
</head>





<body>
		<div id="container">
		<h2 class="review_h2">아파트: 상세정보</h2>
        <div class="detail_box">
            <div class="detail_one">
                <p class="detail_step">${sub_divisionVO.getStep() }</p>
                <p class="detail_apt">${sub_divisionVO.getA_location() }</p>
                <p class="detail_addr">${sub_divisionVO.getSupply_type() }</p>
            </div>  
            <div class="detail_two">
                <p class="detail_addr">${sub_divisionVO.getA_type() }</p>
                <p class="detail_pay">${sub_divisionVO.getPrice() }</p>
            </div>
        </div>
        <div class="detail_box2">
            <form method="post"> 
                <p class="btn_list"><a href="MyController?type=list" class="review_write_a">[ 분양정보 페이지 ]</a></p>
                <div class="btn_box">
                    <input type="button" value="수 정" class="btn" onclick="update_go(this.form)">
                    <input type="button" value="삭 제" class="btn" onclick="delete_go(this.form)">
                </div>
                <table class="review_table">
                    <colgroup>
                        <col width="10%">
                        <col width="10%">
                        <col width="10%">
                        <col width="10%">
                        <col width="10%">
                        <col width="15%">
                        <col width="10%">
                        <col width="25%">
                    </colgroup>
                    <tbody>
                        <tr class="review_step_contentBox">
                            <th class="review_step_txt rightTxt">건물유형</th>
                            <td class="review_detail_txt">${sub_divisionVO.getA_type() }</td>
                            <th class="review_step_txt rightTxt">공급유형</th>
                            <td class="review_detail_txt">${sub_divisionVO.getSupply_type() }</td>
                            <th class="review_step_txt rightTxt">건설사</th>
                            <td class="review_detail_txt">${sub_divisionVO.getConstruction() }</td>
                            <th class="review_step_txt rightTxt">시행사</th>
                            <td class="review_detail_txt">${sub_divisionVO.getDeveloper() }</td>
                        </tr>
                        <tr class="review_step_contentBox">
                            <th class="review_step_txt rightTxt">전매가능 여부</th>
                            <td class="review_detail_txt">${sub_divisionVO.getMonopoly() }</td>
                            <th class="review_step_txt rightTxt">규제지역</th>
                            <td class="review_detail_txt">${sub_divisionVO.getA_restrict() }</td>
                            <th class="review_step_txt rightTxt">분양가상한제</th>
                            <td class="review_detail_txt">${sub_divisionVO.getPrice_up() }</td>
                            <th class="review_step_txt rightTxt">규제기간</th>
                            <td class="review_detail_txt">${sub_divisionVO.getA_period() }</td>
                        </tr>
                        <tr class="review_step_contentBox">
                            <th class="review_step_txt rightTxt">전용면적</th>
                            <td class="review_detail_txt">${sub_divisionVO.getBuilding_area() }</td>
                            <th class="review_step_txt rightTxt">모집공고일</th>
                            <td class="review_detail_txt">${sub_divisionVO.getAnnoucement() }</td>
                            <th class="review_step_txt rightTxt">입주예정일</th>
                            <td class="review_detail_txt">${sub_divisionVO.getMoving_in() }</td>
                            <th class="review_step_txt rightTxt"></th>
                            <td class="review_detail_txt"></td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <div>
                <p class="detail_img"><img width="1190px" height="auto" src="images/${sub_divisionVO.getA_images() }"></p>
            </div>
		</div>
        <div>
            <h2 class="review_h2 matTitle">위치 및 주변 시설</h2>   
            <p class="detail_map_txt">${sub_divisionVO.getA_location() }</p>
            
            <div class="eDvYCD">
            	<input type="button" id="btn1" value="편의시설" onclick="viewDiv1()">
            	<input type="button" id="btn2" value="교육시설" onclick="viewDiv2()">
            	<input type="button" id="btn3" value="기타시설" onclick="viewDiv3()">
            </div>
            
            <div id="detail_map_div1" class="detail_map">
	            <jsp:include page="map/kakaoAddressFacilitiesCon.jsp">
					<jsp:param value="${sub_divisionVO.getA_map() }" name="address"/>
				</jsp:include>
            </div>
            
            <div id="detail_map_div2" class="detail_map" >
            	<jsp:include page="map/kakaoAddressFacilitiesSchool.jsp">
					<jsp:param value="${sub_divisionVO.getA_map() }" name="school"/>
				</jsp:include>
	        </div>
	        
	   		<div id="detail_map_div3" class="detail_map">
            	<jsp:include page="map/kakaoAddressFacilitiesSafe.jsp">
					<jsp:param value="${sub_divisionVO.getA_map() }" name="safe"/>
				</jsp:include>
			</div>
			
        </div>
	</div>
	
</body>
</html>