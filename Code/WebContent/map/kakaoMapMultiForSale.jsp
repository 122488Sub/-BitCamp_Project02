<%@page import="com.bitbang.common.commonUtil"%>
<%@page import="com.bitbang.model.dao.forsaleDAO"%>
<%@page import="com.bitbang.model.vo.ForSaleVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link href="css/forsale.map.css" rel="stylesheet" type="text/css">
<link href="css/forsaleBtn.css" rel="stylesheet" type="text/css">
<style>

#map{
	position: absolute;
 	top: 0;
  	bottom: 0;
	height: 100%;
	width: 80%;
	left:50%; 
	transform:translateX(-50%);
	z-index: 0;
}
#newFsBtn{
	position: absolute;
	left:10%; 
	z-index: 1;
	background-color: #ff0080;
}

.snip1535::before {
  border-color: #ff0080;
  border-right-width: 3px;
  border-top-width: 3px;
  right: -5px;
  top: -5px;
}
.snip1535::after {
  border-bottom-width: 3px;
  border-color: #ff0080;
  border-left-width: 3px;
  bottom: -5px;
  left: -5px;
}
.snip1535:hover {
  background-color: #ff0080;
}

</style>
<script>

function insert_go() {
	
	var form = document.createElement("form");
	var parm = new Array();
    var input = document.createElement("input");
    input.setAttribute("type", "hidden");
    input.setAttribute('name', 'type');
    input.setAttribute("value", 'FsInput');
    
    form.action = "ForSaleController";
    form.method = "post";
 	form.appendChild(input);
    
    document.body.appendChild(form);
    form.submit();
}
</script>

<button id="newFsBtn" class="snip1535" onclick="insert_go()" style="padding: 12px 15px 10px;">New Rent</button>
<div id="map" ></div>

   <!-- ★ 키입력 뒷편 &libraries=services 필수입력 --> 
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=023641db8947696e319921e818d4fe2b&libraries=services,clusterer,drawing"></script> 
<script>

//카카오맵 지도 생성
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	mapOption = { 
		//center: new kakao.maps.LatLng(37.50192426050855, 127.02562676562276), // 지도의 중심좌표
	    //level: 10 // 지도의 확대 레벨
	    center: new kakao.maps.LatLng(<%=commonUtil.fs_x%>, <%=commonUtil.fs_y%>), // 지도의 중심좌표
	    level: <%=commonUtil.fs_level%> // 지도의 확대 레벨
	};

//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 
console.log(map.getLevel());
console.log(map.getCenter());
var clusterer = new kakao.maps.MarkerClusterer({
    map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체
    averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정
    minLevel: 5 // 클러스터 할 최소 지도 레벨
   // disableClickZoom: true // 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정한다
});

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
					var m={
						marker: marker,
					    seq: Fsvo.forsale_seq
					};
					// 커스텀 오버레이에 표시할 컨텐츠 입니다
					// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
					// 별도의 이벤트 메소드를 제공하지 않습니다 
					var imgNum= Fsvo.forsale_seq%6;
					var content = '<div class="wrap">' + 
						            '    <div class="info">' + 
						            '        <div class="title">' + 
						           					 Fsvo.subject + 
						            '        </div>' + 
						            '        <div class="body">' + 
						            '            <div class="img">' +
						            '                <img src="images/forsale/big0'+imgNum +'.PNG" width="73" height="70">' +
						            '           </div>' + 
						            '            <div class="desc">' + 
						            '                <div class="ellipsis">'+Fsvo.address+'</div>' +  
						            '                <div class="jibun ellipsis">' + Fsvo.detail.split(';')[1] + '</div>' + 
						            //'                <div><a href="ForSaleController?type=FsOne&idx='+Fsvo.forsale_seq +'&x='+coords.Ha+'&y='+coords.Ga+'" target="_parent" class="link">자세히보기</a></div>' + 
					         		'                <div><a href="javascript:moveFSonePage('+Fsvo.forsale_seq +','+coords.Ha+','+coords.Ga+')" target="_parent" class="link">자세히보기</a></div>' +
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
					/*
					// 마커가 지도 위에 표시되도록 설정합니다
					marker.setMap(map);
											
					// 생성된 마커를 배열에 추가
					markers.push(marker);
					*/
					
					//기존 마커에서 클러스트 형태로 변경
					clusterer.addMarker(marker);
				} 
			});
		})
		//클러스트 확대 이벤트
		kakao.maps.event.addListener(clusterer, 'clusterclick', function(cluster) {
			console.log("변경전: " +map.getLevel());
	        // 현재 지도 레벨에서 1레벨 확대한 레벨
	        
	        var level = map.getLevel()-1;
	        if(level<=2){
	        	level=4;
	        }
	        // 지도를 클릭된 클러스터의 마커의 위치를 기준으로 확대합니다
	        map.setLevel(level, {anchor: cluster.getCenter()});
	        console.log("변경후: " +map.getLevel());
	    });
		
	}
	,
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

function moveFSonePage(seq,x,y){
	var form = document.createElement("form");
	var parm = new Array();
    var input = new Array();

    form.action = "ForSaleController";
    form.method = "post";

    parm.push( ['type', "FsOne"] );
    parm.push( ['idx', seq] );
    
    parm.push( ['x', x] );
    parm.push( ['y', y] );
    parm.push( ['lev', map.getLevel()] );
	parm.push( ['b','T']);

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
