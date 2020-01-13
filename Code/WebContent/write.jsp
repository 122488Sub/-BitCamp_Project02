<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력화면</title>
</head>
<body>
	<div id="container">
		<h2>분양목록 작성</h2>
		<hr>
		<form action="MyController?type=write_ok" method="post">
			<table>
				<tbody>
					<tr>
						<th>분양단계</th>
						<td><input type="text" name="step"></td>
					</tr>
					<tr>
						<th>건물유형</th>
						<td><input type="text" name="a_type"></td>
					</tr>
					<tr>
						<th>공급유형</th>
						<td><input type="text" name="supply_type"></td>
					</tr>
					<tr>
						<th>위치/단지명</th>
						<td><input type="text" name="a_location"></td>
					</tr>
					<tr>
						<th>분양가</th>
						<td><input type="text" name="price"></td>
					</tr>
					<tr>
						<th>세대수</th>
						<td><input type="text" name="households"></td>
					</tr>
					<tr>
						<th>전용면적</th>
						<td><input type="text" name="building_area"></td>
					</tr>
					<tr>
						<th>건설사</th>
						<td><input type="text" name="construction"></td>
					</tr>
					<tr>
						<th>시행사</th>
						<td><input type="text" name="developer"></td>
					</tr>
					<tr>
						<th>전매가능여부</th>
						<td><input type="text" name="monopoly"></td>
					</tr>
					<tr>
						<th>규제지역</th>
						<td><input type="text" name="a_restrict"></td>
					</tr>
					<tr>
						<th>분양가상한제 적용</th>
						<td><input type="text" name="price_up"></td>
					</tr>
					<tr>
						<th>규제기간</th>
						<td><input type="text" name="a_period"></td>
					</tr>
					<tr>
						<th>모집공고일</th>
						<td><input type="text" name="annoucement"></td>
					</tr>
					<tr>
						<th>입주예정일</th>
						<td><input type="text" name="moving_in"></td>
					</tr>
					<tr>
						<th>리스트사진이미지</th>
						<td><input type="text" name="a_image"></td>
					</tr>
					<tr>
						<th>디테일에사진이미지들</th>
						<td><input type="text" name="a_images"></td>
					</tr>
					
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2">
							<input type="submit" value="저 장">
							<input type="reset" value="초기화">
							<p><a href="MyController?type=list">[목록으로 이동]</a></p>
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>





