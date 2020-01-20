<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="bnb_hostjoin.do">
		<table>
			<thead>
				<tr>
					<th>호스트 등록 페이지 입니다. <th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>가입 id</th>
					<td><input type="text" name="id" placeholder="${id }" value=${id }></td>
				</tr>
				
				<tr>
					<th>호스트 이름</th>
					<td><input type="text" name="h_name"></td>
				</tr>
				<tr>
					<th>연락처</th>
					<td><input type="text" name="h_phone"></td>
				</tr>
				<tr>
					<th>자기소개</th>
					<td><textarea name="h_intro"></textarea></td>
				</tr>
				
			</tbody>
			<tfoot>
				<tr>
				<button type = "submit" name = "hostregist" >
					방정보 등록하기
				</button>
				</tr>
			</tfoot>
		</table>
	</form>
</body>
</html>