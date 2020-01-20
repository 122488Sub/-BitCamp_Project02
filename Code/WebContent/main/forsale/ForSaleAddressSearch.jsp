<%@page import="com.bitbang.common.commonUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%request.setCharacterEncoding("UTF-8");%>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=023641db8947696e319921e818d4fe2b&libraries=services"></script>
<script> 
$(function() {
	 // ★ 주소-좌표 변환 객체를 생성 
      var geocoder = new kakao.maps.services.Geocoder();
      var xx,yy;
      // ★ 주소로 좌표를 검색 
      //geocoder.addressSearch('신 주소 입력', function(result, status) {
      <%request.setCharacterEncoding("UTF-8");%>
      geocoder.addressSearch('<%=request.getParameter("address")%>', function(result, status) {
    // geocoder.addressSearch("경기도 의정부시 호동로 56", function(result, status) {
     
	      // 정상적으로 검색이 완료됐으면 
	      if (status === kakao.maps.services.Status.OK) { 
	         var coords = new kakao.maps.LatLng(result[0].y, result[0].x); 
	         yy = result[0].x; xx = result[0].y; // 결과값으로 받은 위치를 마커로 표시
	         console.log(xx+"::"+yy) ;
			
		      var form = document.createElement("form");
		   		var parm = new Array();
		   	    var input = new Array();

		   	    form.target = "ifrm";
		   	    form.action = "ForSaleAddressReturn.jsp";
		   	    form.method = "post";

		   	    parm.push( ['x', xx] );
		   	    parm.push( ['y', yy] );


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
	      
     });
});

 
</script>
</head>
<body>

<iframe name='ifrm' width='0' height='0' frameborder='0'></iframe>
<div></div>


</body>
</html>