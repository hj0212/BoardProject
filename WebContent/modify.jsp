<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="boardUpdateProc.jsp" method="post">
	<input type="hidden" name="seq" value="${seq.seq }">

	<table border=1>
		<tr>
			<th colspan="2">게시글 수정</th>
		</tr>
		<tr>
			<td><input type="text" size="100" name="title"
				value=""></td>
			<td style="display:none;"><input type="text" value="${result.seq }" name="seq" readonly></td>
		</tr>
		<tr>
			<td colspan="2" height=200><textarea rows="40" name="contents"
					style="width: 99.5%" value=""></textarea></td>
		</tr>
		<tr>
			<td colspan="2" align=center>
			<input type="text" value="" name="password" placeholder="글 수정시 비밀번호를 입력하세요">
			<input type="submit" id="updateBtn" value="수정하기">
				<input type="button" id="backBtn" value="목록으로"></td>
		</tr>
		
	</table>
	
</form>
	<script>
	
	document.getElementById("backBtn").onclick = function() {
		location.href = "boardlist.jsp"
	}
	</script>
</body>
</html>
