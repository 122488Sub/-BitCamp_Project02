<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body>
<div id="container">
		<h2>분양목록:수정화면</h2>
		<hr>
		
		<form method="post">
			<table>
				<tbody>
					<tr>
						<th>분양단계</th>
						<td><input type="text" name="step"
									 value="${sub_divisionVO.getStep() }"></td>
					</tr>
					<tr>
						<th>건물유형</th>
						<td><input type="text" name="a_type"
									 value="${sub_divisionVO.getA_type() }"></td>
					</tr>
					<tr>
						<th>공급유형</th>
						<td><input type="text" name="supply_type"
									 value="${sub_divisionVO.getSupply_type() }"></td>
					</tr>
					<tr>
						<th>위치/단지명</th>
						<td><input type="text" name="a_location"
									 value="${sub_divisionVO.getA_location() }"></td>
					</tr>
					<tr>
						<th>분양가</th>
						<td><input type="text" name="price"
									 value="${sub_divisionVO.getPrice() }"></td>
					</tr>
					<tr>
						<th>세대수</th>
						<td><input type="text" name="households"
									 value="${sub_divisionVO.getHouseholds() }"></td>
					</tr>
					<tr>
						<th>전용면적</th>
						<td><input type="text" name="building_area"
									 value="${sub_divisionVO.getBuilding_area() }"></td>
					</tr>
					<tr>
						<th>건설사</th>
						<td><input type="text" name="construction"
									 value="${sub_divisionVO.getConstruction() }"></td>
					</tr>
					<tr>
						<th>시행사</th>
						<td><input type="text" name="developer"
									 value="${sub_divisionVO.getDeveloper() }"></td>
					</tr>
					<tr>
						<th>전매가능여부</th>
						<td><input type="text" name="monopoly"
									 value="${sub_divisionVO.getMonopoly() }"></td>
					</tr>
					<tr>
						<th>규제지역</th>
						<td><input type="text" name="a_restrict"
									 value="${sub_divisionVO.getA_restrict() }"></td>
					</tr>
					<tr>
						<th>분양가상한제 적용</th>
						<td><input type="text" name="price_up"
									 value="${sub_divisionVO.getPrice_up() }"></td>
					</tr>
					<tr>
						<th>규제기간</th>
						<td><input type="text" name="a_period"
									 value="${sub_divisionVO.getA_period() }"></td>
					</tr>
					<tr>
						<th>모집공고일</th>
						<td><input type="text" name="annoucement"
									 value="${sub_divisionVO.getAnnoucement() }"></td>
					</tr>
					<tr>
						<th>입주예정일</th>
						<td><input type="text" name="moving_in"
									 value="${sub_divisionVO.getMoving_in() }"></td>
					</tr>
					<tr>
						<th>리스트사진이미지</th>
						<td><input type="text" name="a_image"
									 value="${sub_divisionVO.getA_image() }"></td>
					</tr>
					<tr>
						<th>디테일에사진이미지들</th>
						<td><input type="text" name="a_images"
									 value="${sub_divisionVO.getA_images() }"></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2">
							<input type="button" value="수 정"
									onclick="save_go(this.form)">
							<input type="reset" value="다시작성">
							<input type="hidden" name="idx" value="${sub_divisionVO.getIdx() }">
							<p><a href="MyController?type=list">[목록으로 이동]</a></p>
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>