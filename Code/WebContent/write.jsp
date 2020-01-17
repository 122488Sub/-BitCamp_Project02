<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력화면</title>
<link href="css/price.css" rel="stylesheet" type="text/css"></link>
<%@ include file="main/navCssLink.html" %>
</head>

<c:choose>
	<c:when test="${not empty sessionScope.id}">
		<%@ include file="/main/navLogOutBody.html" %>
	</c:when>
	<c:otherwise>
		<%@ include file="/main/navBody.html" %>
	</c:otherwise>
</c:choose>	

<body>
	<div id="container">
		<h2 class="review_h2">분양목록 작성</h2>

		<form action="MyController?type=write_ok" method="post">
			<table class="review_table">
			<colgroup>
				<col width="50%"></col>
				<col width="50%"></col>
			</colgroup>
				<tbody>
					<tr >
						<th class="review_step">분양단계</th>
						<td><input type="text" name="step" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">건물유형</th>
						<td><input type="text" name="a_type" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">공급유형</th>
						<td><input type="text" name="supply_type" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">위치/단지명</th>
						<td><input type="text" name="a_location" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">분양가</th>
						<td><input type="text" name="price" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">세대수</th>
						<td><input type="text" name="households" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">전용면적</th>
						<td><input type="text" name="building_area" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">건설사</th>
						<td><input type="text" name="construction" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">시행사</th>
						<td><input type="text" name="developer" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">전매가능여부</th>
						<td><input type="text" name="monopoly" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">규제지역</th>
						<td><input type="text" name="a_restrict" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">분양가상한제 적용</th>
						<td><input type="text" name="price_up" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">규제기간</th>
						<td><input type="text" name="a_period" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">모집공고일</th>
						<td><input type="text" name="annoucement" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">입주예정일</th>
						<td><input type="text" name="moving_in" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">리스트사진이미지</th>
						<td><input type="text" name="a_image" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">디테일에사진이미지들</th>
						<td><input type="text" name="a_images" class="review_input"></td>
					</tr>
					
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2" class="btn_box">
							<input type="submit" value="저 장" class="btn">
							<input type="reset" value="초기화" class="btn">
							<p><a href="MyController?type=list" class="review_write_a">[목록으로 이동]</a></p>
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>





