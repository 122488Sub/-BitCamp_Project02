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

let map;
init(); 

function create(){
	 
	var address = new Array();
	var titles=new Array();
	<%
	request.setCharacterEncoding("UTF-8");
	List<ForSaleVO> aList =new forsaleDAO().selectListPage();

	for(ForSaleVO vo : aList){
	%>
		address.push("<%=vo.getAddress()%>");
		
	<%
	}
	%>
	var positions= new Array();
	var geocoder = new kakao.maps.services.Geocoder();

	//마커 이미지의 이미지 주소입니다
	var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
	var bool= false;

	for (let i = 0; i < address.length; i++) {
		console.log(address[i] + " : " +typeof address[i]);
		geocoder.addressSearch(address[i], function(result, status) {
			positions.push({title: address[i], latlng: new kakao.maps.LatLng(result[0].y,result[0].x)});
			//마커 이미지 사이즈
			var imageSize = new kakao.maps.Size(24, 35); 
			    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    console.log(positions[i].latlng);
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    });
		});
	}
}
//인포윈도우를 표시하는 클로저를 만드는 함수입니다 
async function init() {
	await create();
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	mapOption = { 
		center: new kakao.maps.LatLng(37.501642990504884, 127.02633688785652), // 지도의 중심좌표
	    level: 7 // 지도의 확대 레벨
	};

	map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
}


</script>
<script type="text/javascript">

</script>
</body>
</html>