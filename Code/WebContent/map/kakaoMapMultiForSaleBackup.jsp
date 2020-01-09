<%@page import="com.bitbang.model.dao.forsaleDAO"%>
<%@page import="com.bitbang.model.vo.ForSaleVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>여러개 마커 표시하기</title>
    
</head>
<body>
<div id="map" style="width:100%;height:350px;"></div>

   
   <!-- ★ 키입력 뒷편 &libraries=services 필수입력 --> 
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=023641db8947696e319921e818d4fe2b&libraries=services"></script> 
<script>

//카카오맵 지도 생성
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	mapOption = { 
		center: new kakao.maps.LatLng(37.501642990504884, 127.02633688785652), // 지도의 중심좌표
	    level: 4 // 지도의 확대 레벨
	};

//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 

//주소를 좌표로 바꾸기 위한 geocoder 생성
var geocoder = new kakao.maps.services.Geocoder();

//전체 마을 위치 마커를 담을 배열
var markers = [];
					
$.ajax("ForSaleAjax",{
	type : 'get',
	dataType : 'json',
	success : function(data) {	
		var alist = data.list;//JSON 객체의 속성명("list")의 값 추출
		console.log("gg");
		$.each(alist, function(index, Fsvo){
			console.log(Fsvo);
			geocoder.addressSearch(Fsvo.address, function(result, status) {
				if (status === kakao.maps.services.Status.OK) {
					var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

					// 마커가 표시될 위치입니다
					var markerPosition  = new kakao.maps.LatLng(coords.Ha, coords.Ga); 
					console.log(markerPosition);
					// 마커를 생성합니다
					var marker = new kakao.maps.Marker({
					    position: markerPosition
					});
					
					kakao.maps.event.addListener(marker, 'click', function() {
					   
						map.setCenter(markerPosition);
					    
					});
					// 마커가 지도 위에 표시되도록 설정합니다
					marker.setMap(map);
												
					// 생성된 마커를 배열에 추가
					markers.push(marker);
					
				} 
			});
		})
	},
	error : function(jqXHR, textStatus, errorThrown){
		alert("Ajax 처리 실패 : \n"
			+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
			+ "textStatus : " + textStatus +"\n"
			+ "errorThrown : " + errorThrown);
	}
});

			
//지도에 마커 표시
function setMarkers(map) {
 for(var i=0; i<markers.length; i++) {
     markers[i].setMap(map);
 }            
}

//지도에서 마커 숨기기
function hideAllMarkers() {
	setMarkers(null);
	markers = [];
}
</script>

</body>
</html>