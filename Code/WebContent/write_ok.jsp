<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${param.result > 0 }">
	<script>
		//4-1. 정상처리시 분기 처리
		alert("정상 입력되었습니다.\n"
			+ "목록 페이지로 이동합니다.");
		location.href = "MyController?type=list"; 
	</script>
</c:if>

<c:if test="${param.result <= 0}">
	<script>
		alert("내용을 입력해주세요.\n"
				+ "이전 페이지로 이동합니다.");
		history.back(); // history 자바스크립트의 윈도우 객체
	</script>
</c:if>