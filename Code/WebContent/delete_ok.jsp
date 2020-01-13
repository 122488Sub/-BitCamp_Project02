<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${param.result > 0 }">
		<script>
			alert("작업완료! 목록페이지로 이동");
		 	location.href = "MyController?type=list";
		</script>
	</c:when>
	<c:when test="${param.result == 0 }">
		<script>
			alert("[예외발생] 삭제작업이 정상적로 이뤄지지 않았습니다.\n"
					+ "리스트 페이지로 돌아갑니다.");
			location.href = "MyController?type=list";
		</script>
	</c:when>
	<c:when test="${param.result == -1 }">
		<script>
			alert("단지/지역명을 입력해주세요."
					+ "이전페이지로 돌아갑니다.");
			history.back();
		</script>
	</c:when>
	<c:when test="${param.result == -2 }">
		<script>
			alert("[예외발생] 리스트페이지로 돌아갑니다.");
			location.href = "MyController?type=list";
		</script>
	</c:when>
	<c:when test="${param.result == -3 }">
		<script>
			alert("단지/지역명불일치, 단지/지역명을 확인하세요.");
			history.back();
		</script>
	</c:when>
	<c:when test="${param.result == -4 }">
		<script>
			alert("[예외발생] 삭제작업이 정상적로 이뤄지지 않았습니다.\n"
					+ "리스트 페이지로 돌아갑니다.");
			location.href = "MyController?type=list";
		</script>
	</c:when>
	<c:otherwise>
		<script>
			alert("[예외발생] 삭제작업이 정상적로 이뤄지지 않았습니다.\n"
					+ "리스트 페이지로 돌아갑니다.");
			location.href = "MyController?type=list";
		</script>
	</c:otherwise>
</c:choose>