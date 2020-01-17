<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- kakao map -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=429fc0ee66eceb779b718468942bf109&libraries=services,clusterer,drawing"></script>

</head>
<body>
<form method="post" naem="form" action="hroomregist.do?id=${id}&r_serial=${h_num}&keyValue=multipart"  enctype="multipart/form-data">
		<table>
			<thead>
				<tr>
					<th>방등록 등록 페이지 입니다. <th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>host id</th>
					<td><input type="text" name="id" placeholder="${id }" readonly></td>
				</tr>
				<tr>
					<th>룸 고유번호</th>
					<td><input type="text" name="r_serial" placeholder="${h_num }" readonly></td>
				</tr>
				<tr>
					<th>Room Name</th>
					<td><input type="text" name="r_name"></td>
				</tr>
				<tr>
					<th>Room Type</th>
					<td>
						<input type="radio" name="room_type" value="privychamber"/>개인실
						<input type="radio" name="room_type" value="multichamber"/>다인실
						<input type="radio" name="room_type" value="apartment"/>아파트 전체
						<input type="radio" name="room_type" value="hotelroom"/>호텔 객실
					</td>
				</tr>
				<tr>
					<th>Room Introduction</th>
					<td><input type="text" name="r_info"></td>
				</tr>
				<tr>
					<th>1박당 가격</th>
					<td><input type="text" name="r_price"></td>
				</tr>
				<tr>
					<th>7박당 가격</th>
					<td><input type="text" name="discount_price"></td>
				</tr>
				<tr>
					<th>Room picture 5장</th>
					<td>
						<div>
							<input type="file" name="r_pic1">
						</div>
						<div>
							<input type="file" name="r_pic2">
						</div>
						<div>
							<input type="file" name="r_pic3">
						</div>
						<div>
							<input type="file" name="r_pic4">
						</div>
						<div>
							<input type="file" name="r_pic5">
						</div>
					</td>
				</tr>
				<tr>
					<th>방수</th>
					<td><input type="text" name="room_cn"></td>
				</tr>
				<tr>
					<th>침대수</th>
					<td><input type="text" name="bed_cn"></td>
				</tr>
				<tr>
					<th>가능인원수</th>
					<td><input type="text" name="person_cn"></td>
				</tr>
				<tr>
					<th>check-in 가능 시간</th>
					<td><input type="text" name="checkin_time"></td>
				</tr>
				<tr>
					<th>check-out time</th>
					<td><input type="text" name="checkout_time"></td>
				</tr>
				<tr>
					<th>시설</th>
					<td>
						<div>
							<input type="checkbox" class="WIFI" name="facility" value="WIFI">
							<label for="facility">WIFI</label>	
						</div>
						<div>
							<input type="checkbox" class="TV" name="facility" value="TV">
							<label for="facility">TV</label>	
						</div>
						<div>
							<input type="checkbox" class="elevator" name="facility" value="elevator">
							<label for="facility">Elevator</label>
						</div>
						<div>
							<input type="checkbox" class="airconditional" name="facility" value="airconditional">
							<label for="facility">에어컨</label>
						</div>
						<div>
							<input type="checkbox" class="laundry" name="facility" value="laundry">
							<label for="facility">세탁기</label>
						</div>
						<div>
							<input type="checkbox" class="kitchen" name="facility" value="kitchen">
							<label for="facility">주방사용가능</label>
						</div>
						<div>
							<input type="checkbox" class="refrigerator" name="facility" value="refrigerator">
							<label for="facility">냉장고</label>
						</div>
						<div>
							<input type="checkbox" class="breakfast" name="facility" value="breakfast">
							<label for="facility">아침식사제공</label>
						</div>
					</td>
				</tr>
				<tr>
					<th>도시 이름</th>
					<td><input type="text" name="city_name"></td>
				</tr>
				<tr>
					<th>total address</th>
					<td>
						<input type="text" name="address" id="address"><button type="button" name="좌표값호출" id="pointbtn">좌표값호출</button>
					</td>
				</tr>
				<tr>
					<th>중심좌표</th>
					<td>					
					<div id="map""></div>
					<input type="text" id="centerpoint" name="centerpoint"/>
					</td>
				</tr>
				
			</tbody>
			<tfoot>
				<tr>
					<button type = "submit"  >
						등록하기
					</button>
				</tr>
			</tfoot>
		</table>
	</form>
	
	<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
 
 /*
//geocoder.addressSearch('서울 서초구 강남대로 459', function(result, status) {
geocoder.addressSearch('document.getElementById("address")', function(result, status) {
    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

       
        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
    
});    

//var centervalue = document.getElementById('pointbtn');

pointbtn.addEventListener('click', function getInfo() {
    // 지도의 현재 중심좌표를 얻어옵니다 
    var center = map.getCenter(); 
   // centervalue.value=center;
    document.getElementById('centerpoint').value=center;
});

*/


//var centervalue = document.getElementById('pointbtn');

pointbtn.addEventListener('click', function getInfo() {
  
	geocoder.addressSearch(document.getElementById("address").value, function(result, status) {
	    // 정상적으로 검색이 완료됐으면 
	    if (status === kakao.maps.services.Status.OK) {

	       var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

	      
	       // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	       map.setCenter(coords);
	       
	    // 지도의 현재 중심좌표를 얻어옵니다 
	       var center = map.getCenter(); 
	      // centervalue.value=center;
	       document.getElementById('centerpoint').value=center;
	   } 
	   
	});    
	
});
</script>
	
</body>
</html>