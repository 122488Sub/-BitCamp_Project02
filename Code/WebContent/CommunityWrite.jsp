<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="main/navCssLink.html"%>
</head>

<%@ include file="main/navBody.html"%>
<meta charset="UTF-8">
<title>글쓰기</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
		$('#summernote').summernote({
			height : 500,
			focus : true
		});
	});
</script>
</head>
<body>

	<form action="ControllerCommunity?type=insertpost" method="post">
	<h2>글쓰기</h2>
	<hr>
	<span>제목 : </span><input type="text" name="c_title">
	<hr>
	<textarea id="summernote" name="c_content"></textarea>
	<input type="submit" value="입력"/><input type="reset" value="취소" />
	</form>
</body>
</html>