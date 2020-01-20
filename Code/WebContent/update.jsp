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
		frm.action = "MyController?type=update_ok";
		frm.submit();
	}
</script>
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
		<h2 class="review_h2">분양목록:수정화면</h2>
		
		<form method="post">
			<table class="review_table">
			<colgroup>
				<col width="50%"></col>
				<col width="50%"></col>
			</colgroup>
				<tbody>
					<tr>
						<th class="review_step">분양단계</th>
						<td><input type="text" name="step"
									 value="${sub_divisionVO.getStep() }" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">건물유형</th>
						<td><input type="text" name="a_type"
									 value="${sub_divisionVO.getA_type() }" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">공급유형</th>
						<td><input type="text" name="supply_type"
									 value="${sub_divisionVO.getSupply_type() }" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">위치/단지명</th>
						<td><input type="text" name="a_location"
									 value="${sub_divisionVO.getA_location() }" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">분양가</th>
						<td><input type="text" name="price"
									 value="${sub_divisionVO.getPrice() }" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">세대수</th>
						<td><input type="text" name="households"
									 value="${sub_divisionVO.getHouseholds() }" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">전용면적</th>
						<td><input type="text" name="building_area"
									 value="${sub_divisionVO.getBuilding_area() }" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">건설사</th>
						<td><input type="text" name="construction"
									 value="${sub_divisionVO.getConstruction() }" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">시행사</th>
						<td><input type="text" name="developer"
									 value="${sub_divisionVO.getDeveloper() }" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">전매가능여부</th>
						<td><input type="text" name="monopoly"
									 value="${sub_divisionVO.getMonopoly() }" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">규제지역</th>
						<td><input type="text" name="a_restrict"
									 value="${sub_divisionVO.getA_restrict() }" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">분양가상한제 적용</th>
						<td><input type="text" name="price_up"
									 value="${sub_divisionVO.getPrice_up() }" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">규제기간</th>
						<td><input type="text" name="a_period"
									 value="${sub_divisionVO.getA_period() }" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">모집공고일</th>
						<td><input type="text" name="annoucement"
									 value="${sub_divisionVO.getAnnoucement() }" class="review_input"></td>
					</tr>
					<tr>
						<th class="review_step">입주예정일</th>
						<td><input type="text" name="moving_in"
									 value="${sub_divisionVO.getMoving_in() }" class="review_input"></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2" class="btn_box">
							<input type="button" value="수 정" class="btn" onclick="save_go(this.form)">
							<input type="reset" value="다시작성" class="btn">
							<input type="hidden" name="idx" value="${sub_divisionVO.getIdx() }">
							<p><a href="MyController?type=list" class="review_write_a">[목록으로 이동]</a></p>
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>