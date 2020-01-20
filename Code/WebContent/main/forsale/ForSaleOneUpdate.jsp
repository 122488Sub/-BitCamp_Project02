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
				<tbody>
					<tr>
						<th>제목</th>
						<td><input type="text" name="subject"
									 value="${FSVo.subject }"></td>
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