<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function save_go(frm){
	    frm.action = "ForSaleController?type=FsOneUpdateOk";
		frm.submit();
	}
	function return_back(){
		var frm=  document.createElement("form");
		frm.action = "window.history.back()";
		frm.method = "post";
		frm.submit();
	}
</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }
				
                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                 	addr+= " "+ extraAddr;
                
                    
                } 

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                //document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").value="";
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
<link rel="stylesheet" type="text/css" href="css/forsaleUpdate.css">
<link rel="stylesheet" type="text/css" href="css/forsaleBtn.css">
<style type="text/css">
	 a:link { color: red; text-decoration: none;}
	 a:visited { color: black; text-decoration: none;}
	 a:hover { color: blue; text-decoration: underline;}
</style>

</head>
<body>
<div id="container">
		<h2>${FSoneVO.address }&nbsp;${FSoneVO.address_detail }</h2>
		<hr>
		
		<form method="post">
			<table>
			<colgroup>
				<col width="30%">
				<col width="70%">
			</colgroup>
				<tbody>
					<tr>
						<th>제목</th>
						<td><input type="text" name="subject"
									 value="${FSVo.subject }"></td>
					</tr>
					<tr>
						<th>주소</th>
						<td style="padding-bottom: 5px;">
						
							<input type="button" onclick="sample6_execDaumPostcode()" value="주소 찾기"><br>
							<input type="text" id="sample6_address" name="address" style="width: 65%;" value="${FSoneVO.address}" placeholder="주소"><br>
							<input type="text" id="sample6_detailAddress" name="address_detail" style="width: 65%;" value="${FSoneVO.address_detail}" placeholder="상세주소">
						</td>
					</tr>
					<tr>
						<th>방구분</th>
						<td>
					<c:choose>
						<c:when test="${FSoneVO.room_category eq '원룸'  and FSoneVO.room_category eq 'O'}" >
							<input type="radio" name="room_category" value="원룸" checked="checked">원룸
							&nbsp;&nbsp;
							<input type="radio" name="room_category" value="투룸">투룸
						</c:when>
						<c:otherwise>
							<input type="radio" name="room_category" value="원룸">원룸
							&nbsp;&nbsp;
							<input type="radio" name="room_category" value="투룸"  checked="checked">투룸
						</c:otherwise>
					</c:choose>
						
					</tr>
					<tr>
						<th>보증금/월세</th>
						<td><input type="text" name="monthly_value"
									 value="${FSoneVO.monthly_value }"></td>
					</tr>
					<tr>
						<th>해당층/건물층</th>
						<td><input type="text" name="floor"
									 value="${FSoneVO.floor }"></td>
					</tr>
					<tr>
						<th>면적(평)</th>
						<td><input type="text" name="area"
									 value="${FSoneVO.area }"></td>
					</tr>
					<tr>
						<th>난방여부</th>
						
						<td>
					<c:choose>
						<c:when test="${FSoneVO.aircon eq '있음'  or FSoneVO.aircon eq 'O'  or FSoneVO.aircon eq '가능'}" >
							<input type="radio" name="aircon" value="O" checked="checked">O
							&nbsp;&nbsp;
							<input type="radio" name="aircon" value="X">X
						</c:when>
						<c:otherwise>
							<input type="radio" name="aircon" value="O">O
							&nbsp;&nbsp;
							<input type="radio" name="aircon" value="X"  checked="checked">X
						</c:otherwise>
					</c:choose>
						
					</tr>
					<tr>
						<th>엘리베이터</th>
					
						<td>
					<c:choose>
						<c:when test="${FSoneVO.elevator eq '있음'  or FSoneVO.elevator eq 'O'  or FSoneVO.elevator eq '가능'}" >
							<input type="radio" name="elevator" value="O" checked="checked">O
							&nbsp;&nbsp;
							<input type="radio" name="elevator" value="X">X
						</c:when>
						<c:otherwise>
							<input type="radio" name="elevator" value="O">O
							&nbsp;&nbsp;
							<input type="radio" name="elevator" value="X"  checked="checked">X
						</c:otherwise>
					</c:choose>
						</td>
					</tr>
					<tr>
						<th>반려동물</th>
						<td>
					<c:choose>
						<c:when test="${FSoneVO.pet eq '있음'  or FSoneVO.pet eq 'O'  or FSoneVO.pet eq '가능'}" >
							<input type="radio" name="pet" value="O" checked="checked">O
							&nbsp;&nbsp;
							<input type="radio" name="pet" value="X">X
						</c:when>
						<c:otherwise>
							<input type="radio" name="pet" value="O">O
							&nbsp;&nbsp;
							<input type="radio" name="pet" value="X"  checked="checked">X
						</c:otherwise>
					</c:choose>
						</td>
					</tr>
					<tr>
						<th>베란다</th>
						<td>
					<c:choose>
						<c:when test="${FSoneVO.balcony eq '있음'  or FSoneVO.balcony eq 'O'  or FSoneVO.balcony eq '가능'}" >
							<input type="radio" name="balcony" value="O" checked="checked">O
							&nbsp;&nbsp;
							<input type="radio" name="balcony" value="X">X
						</c:when>
						<c:otherwise>
							<input type="radio" name="balcony" value="O">O
							&nbsp;&nbsp;
							<input type="radio" name="balcony" value="X"  checked="checked">X
						</c:otherwise>
					</c:choose>
						</td>
					</tr>
					<tr>
						<th>전세자금대출</th>
						<td>
					<c:choose>
						<c:when test="${FSoneVO.loan eq '있음'  or FSoneVO.loan eq 'O'  or FSoneVO.loan eq '가능'}" >
							<input type="radio" name="loan" value="O" checked="checked">O
							&nbsp;&nbsp;
							<input type="radio" name="loan" value="X">X
						</c:when>
						<c:otherwise>
							<input type="radio" name="loan" value="O">O
							&nbsp;&nbsp;
							<input type="radio" name="loan" value="X"  checked="checked">X
						</c:otherwise>
					</c:choose>
						</td>
					</tr>
					<tr>
						<th>즉시입주</th>
						<td>
					<c:choose>
						<c:when test="${FSoneVO.available_date eq '있음'  or FSoneVO.available_date eq 'O'  or FSoneVO.available_date eq '가능'}" >
							<input type="radio" name="available_date" value="O" checked="checked">O
							&nbsp;&nbsp;
							<input type="radio" name="available_date" value="X">X
						</c:when>
						<c:otherwise>
							<input type="radio" name="available_date" value="O">O
							&nbsp;&nbsp;
							<input type="radio" name="available_date" value="X"  checked="checked">X
						</c:otherwise>
					</c:choose>
					</tr>
					<tr>
						<th>내용</th>
						
						<td>
						<textarea class="content" name="content" rows="10" style="">${FSoneVO.content }</textarea>
						</td>
					</tr>
					
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2" align="right" style="padding-right: 45px">
							<button class="snip1535" value="수 정" style="margin-right: 20px" onclick="save_go(this.form)">수 정</button>
							<button type="reset" class="snip1535" style="margin-right: 20px" value="">복 구</button>
							
							<a href="javascript:window.history.back()">
								<button type="button" class="snip1535" value="이 전" style="margin-right: 20px" onclick="">이 전</button>
							</a>
							
							
							
							
							<input type="hidden" name="seq" value="${FSVo.forsale_seq }">
							<input type="hidden" name="address" value="${FSoneVO.address }">
							<input type="hidden" name="address_detail" value="${FSoneVO.address_detail }">
						</td>
					</tr>
				</tfoot>
			</table>
			
		</form>
	</div>
	
</body>
</html>