<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<form action="pwcheck.bo?seq=${param.seq}" method="post">
<table>
	<tr> 
		<td>패스워드를 입력하세요</td>
	</tr>
	<tr>
		<td><input type="password" name="password"/></td>
	</tr>
	<tr>
		<td><button id="okbtn">확인</button></td>
	</tr>
</table>
</form>
<script>
document.getElementById("okbtn").onclick = function() {
    window.close();
}
</script>

</body>
</html>