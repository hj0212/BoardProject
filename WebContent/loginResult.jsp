<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:choose>
<c:when test="${ loginResult==00}">
<script>
alert("존재하지 않는 아이디 입니다.");
location.href="login.html";
</script>
</c:when>

<c:when test="${ loginResult==10}">
<script>
alert("비밀번호가 일치하지 않습니다.");
location.href="login.html";
</script>
</c:when>

<c:when test="${ loginResult==11}">
<script>
location.href="index.jsp";
</script>
</c:when>
</c:choose>

</body>
</html>