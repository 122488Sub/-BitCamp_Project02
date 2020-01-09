<%@page import="com.bitbang.model.dao.forsaleDAO"%>
<%@page import="com.bitbang.model.vo.ForSaleVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="css/forsale.map.css" rel="stylesheet" type="text/css">
<div id="map" style="width:100%;height:500px;"></div>
   <!-- ★ 키입력 뒷편 &libraries=services 필수입력 --> 
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=023641db8947696e319921e818d4fe2b&libraries=services"></script> 
<script>

//카카오맵 지도 생성
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	mapOption = { 
		center: new kakao.maps.LatLng(37.50192426050855, 127.02562676562276), // 지도의 중심좌표
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
		
		$.each(alist, function(index, Fsvo){
			console.log(Fsvo);
			geocoder.addressSearch(Fsvo.address, function(result, status) {
				if (status === kakao.maps.services.Status.OK) {
					var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

					// 마커가 표시될 위치입니다
					var markerPosition  = new kakao.maps.LatLng(coords.Ha, coords.Ga); 
					
					// 마커를 생성합니다
					var marker = new kakao.maps.Marker({
					    position: markerPosition
					    
					});
					
					// 커스텀 오버레이에 표시할 컨텐츠 입니다
					// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
					// 별도의 이벤트 메소드를 제공하지 않습니다 
					var content = '<div class="wrap">' + 
						            '    <div class="info">' + 
						            '        <div class="title">' + 
						           					 Fsvo.subject + 
						            '        </div>' + 
						            '        <div class="body">' + 
						            '            <div class="img">' +
						            '                <img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">' +
						            '           </div>' + 
						            '            <div class="desc">' + 
						            '                <div class="ellipsis">'+Fsvo.address+'</div>' +  
						            '                <div class="jibun ellipsis">' + Fsvo.detail.split(';')[1] + '</div>' + 
						            '                <div><a href="ForSaleController?type=FsOne&idx='+Fsvo.forsale_seq +'" target="_blank" class="link">자세히보기</a></div>' + 
						            '            </div>' + 
						            '        </div>' + 
						            '    </div>' +    
						            '</div>';

					// 마커 위에 커스텀오버레이를 표시합니다
					// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
					var overlay = new kakao.maps.CustomOverlay({
						content: content,
					    map: map,
					    position: marker.getPosition()       
					});
					overlay.setMap(null);
					
					// 마커 클릭이벤트 추가입니다
					kakao.maps.event.addListener(marker, 'click', function() {
						map.setCenter(markerPosition); //클릭한위치에다 포커스
						overlay.setMap(map); 
					});
					
					
					// 지도 드래깅 이벤트를 등록한다 (드래그 시작 : dragstart, 드래그 종료 : dragend)
					kakao.maps.event.addListener(map, 'drag', function () {
						overlay.setMap(null);
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

</script>
