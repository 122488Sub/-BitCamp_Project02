<%@page import="com.bitbang.model.vo.ForSaleOneVO"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="com.bitbang.model.vo.ForSaleVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.bitbang.model.dao.forsaleDAO"%>
<%@page import="com.bitbang.model.vo.PagingVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>선택한 매물</title>
<script type="text/javascript">

	function update_go() {
		
		var form = document.createElement("form");
		var parm = new Array();
	    var input = document.createElement("input");
	    input.setAttribute("type", "hidden");
        input.setAttribute('name', 'type');
        input.setAttribute("value", 'FsOneUpdate');
        
	    form.action = "ForSaleController";
	    form.method = "post";
	 	form.appendChild(input);
	    
	    document.body.appendChild(form);
	    form.submit();
	}
	
	
	function moveFSMultiPage(){
		var form = document.createElement("form");
		var parm = new Array();
	    var input = new Array();

	    form.action = "ForSaleController";
	    form.method = "post";
	    parm.push( ['type', "FsPage"] );
	    
	    for (var i = 0; i < parm.length; i++) {
	        input[i] = document.createElement("input");
	        input[i].setAttribute("type", "hidden");
	        input[i].setAttribute('name', parm[i][0]);
	        input[i].setAttribute("value", parm[i][1]);
	        form.appendChild(input[i]);
	    }
	    document.body.appendChild(form);
	    form.submit();
	}
</script>
<style type="text/css">

</style>
<link href="css/forsaleBtn.css" rel="stylesheet" type="text/css">
<link href="css/forsaleOne.css" rel="stylesheet" type="text/css">
<%@ include file="/main/navCssLink.html"%>
</head>
<c:choose>
	<c:when test="${not empty sessionScope.id}">
		<%@ include file="/main/navLogOutBody.html" %>
	</c:when>
	<c:otherwise>
		<%@ include file="/main/navBody.html" %>
	</c:otherwise>
</c:choose>
<%--<%@ include file="fsNavBody.jsp" %>--%>
<%
	System.out.println("도착");
%>

<div id="container">


	<div class="headInfo" style="height: 92px;">
		<div style="width:70%;float: left;">
			<table class="roomInfo">
				<colgroup>
					<col width="50%">
					<col width="25%">
					<col width="25%">
				</colgroup>
				<thead>
					<tr>
						<th>주소</th>
						<th class="roomInfoValue">${FSoneVO.room_category }</th>
						<th>전용면적</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="roomInfoValue">${FSoneVO.address }<br>${FSoneVO.address_detail }</td>
						<td class="roomInfoValue">${FSoneVO.monthly_value} 만</td>
						<td class="roomInfoValue">${FSoneVO.area} 평</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div style="width:30%; float: right; display: inline-block;">
			<button class="snip1535" onclick="moveFSMultiPage()">목&nbsp;&nbsp;록</button>
			<button class="snip1535" onclick="update_go()">수&nbsp;&nbsp;정</button>
			<!--  <button class="snip1535" onclick="delete_go()">삭 제</button>-->
		</div>
	</div>
	
<!-- 	<div class="space"></div> -->
	<div class="detail" style="border-bottom: 1px solid black;">
		<ul class="ul_detail" >

			<li class="li_detail">
				<p class="p_detail">해당층/건물층</p>
				<div class="div_detail">${FSoneVO.floor}</div>
			</li>
			<li class="li_detail">
				<p class="p_detail">난방종류</p>
				<div class="div_detail">${FSoneVO.aircon}</div>
			</li>
			<li class="li_detail">
				<p class="p_detail">엘리베이터</p>
				<div class="div_detail">${FSoneVO.elevator}</div>
			</li>
			<li class="li_detail">
				<p class="p_detail">반려동물</p>
				<div class="div_detail">${FSoneVO.pet}</div>
			</li>
			<li class="li_detail">
				<p class="p_detail">베란다/발코니</p>
				<div class="div_detail">${FSoneVO.balcony}</div>
			</li>
			<li class="li_detail">
				<p class="p_detail">전세자금대출</p>
				<div class="div_detail">${FSoneVO.loan}</div>
			</li>
			<li class="li_detail">
				<p class="p_detail">입주가능일</p>
				<div class="div_detail">${FSoneVO.available_date}</div>
			</li>
			<li></li>
		</ul>
	</div>
	<div class="imageView" >
		<div class="imgBox" style="border-bottom: 1px solid black;">
			<div class="big-smallView">
				<%-- <div class="bigView"> <img alt="aa" src="${FSoneVO.imgscr[0]}"></div>--%>
				<div class="bigView" style="background: url(${FSoneVO.imgscr[0]}) center center / cover no-repeat;"> </div>
				<div class="smallView"style="background: url(${FSoneVO.imgscr[1]}) center center / cover no-repeat;"></div>
				<div class="smallView"style="background: url(${FSoneVO.imgscr[2]}) center center / cover no-repeat;"></div>
				<div class="smallView"style="background: url(${FSoneVO.imgscr[3]}) center center / cover no-repeat;"></div>
				<div class="smallView"style="background: url(${FSoneVO.imgscr[4]}) center center / cover no-repeat;"></div>
				
			</div>
		</div>
	</div>
	
	<div class="fsContent" style="border-bottom: 1px solid black;">
		<p style="font-size: 1.2em; font-weight: bold;">상세내용</p>
		${FSoneVO.content }
		<p style="height: 10px;"></p>
	</div>
	<div class="categoryMapInfo">주변시설정보</div>
	<div class="fsOneMap">
	
	<%@ include file= "/map/kakaoMapOneForSale.jsp" %>
	
	<%-- 
		<jsp:include page="../../map/kakaoMapOneForSale.jsp" >
			<jsp:param value="${FSonePosX }" name="x"/>
			<jsp:param value="${FSonePosY }" name="y"/>
		</jsp:include>
--%>
	</div>
	
	
	
	
</div>
<br>
<br>
<br>
<br>
<br>


<%--
<div id="container">
	<table>
		<colgroup>

		</colgroup>
		<thead>
			<tr>
				<th>주소</th>
				<th>${FSoneVO.room_category }</th>
				<th>전용면적</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${FSoneVO.address }<br>${FSoneVO.address_detail }</td>
				<td>${FSoneVO.monthly_value}</td>
				<td>${FSoneVO.area}</td>
			</tr>
		</tbody>
	</table>
	${FSVO }
	<hr>
	<table>
		<colgroup>

		</colgroup>
		<tbody>
			<tr>
				<td>해당층/건물층</td>
				<td>${FSoneVO.floor}</td>
				<td>난방종류</td>
				<td>${FSoneVO.aircon }</td>
				<td>엘리베이터</td>
				<td>${FSoneVO.elevator}</td>
			</tr>
			<tr>
				<td>반려동물</td>
				<td>${FSoneVO.pet}</td>
				<td>베란다/발코니</td>
				<td>${FSoneVO.balcony }</td>
				<td>전세자금대출</td>
				<td>${FSoneVO.loan }</td>
			</tr>
			<tr>
				<td>입주가능일</td>
				<td>${FSoneVO.available_date }</td>
				<td colspan="4"></td>
			</tr>
		</tbody>
	</table>
	<div>이미지예정</div>
</div>
	 --%>


</html>