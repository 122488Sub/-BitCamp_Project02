<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<style type="text/css">
tr {
	    text-align:center;
	    padding:4px 10px;
	    background-color: #F6F6F6;
	}
	
th {
		width:120px;
	    text-align:center;
	    padding:4px 10px;
	    background-color: #B2CCFF;
	}
td { text-align: left; }
</style>
<script type="text/javascript">
	function sendData() {
		for (var i = 0; i < document.forms[0].elements.length; i++) {
			if (document.forms[0].elements[i].value == "") {
				if (i == 3)	continue;
				alert(document.forms[0].elements[i].name + "를 입력하세요");
				document.forms[0].elements[i].focus();
				return;//수행 중단
			}
		}
		document.forms[0].submit();
	}
</script>
</head>
<body>
	
	<form action="ControllerCommunity?type=insertpost" method="post">
		<table width="700px">
		<tbody>
			<tr>
				<th>제목</th>
				<td align="left"> <input type="text" name="c_title"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td align="left"><textarea rows="10" cols="60" name="c_content"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="button" value="입력" onclick="sendData()" /> 
				<input type="reset" value="취소" />
				</td>
			</tr>
            </tbody>
		</table>
	</form>
</body>
</html>