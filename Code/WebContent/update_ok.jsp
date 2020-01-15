<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${param.result > 0 }">   
	<script>
		alert("업데이트가 정상 처리되었습니다.\n"+ " 분양목록 페이지로 돌아갑니다.");
		location.href = "MyController?type=list";
	</script>
</c:if>  

<c:if test="${param.result < 0 or empty param.result}">   
<script>
		alert("[예외상황] 수정처리가 정상적으로 이루어지지 않았습니다.\n"
							+ " 분양목록 페이지로 돌아갑니다.");
		location.href = "MyController?type=list";	
</script>    
</c:if>

<c:if test="${param.result == 0 }">
<script>
		alert("[예외] 수정되지 않았습니다."+ "이전페이지로 돌아갑니다.");
		history.back();
</script>
</c:if>