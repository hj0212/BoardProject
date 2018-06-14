<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<style>

#wrap {
	width: 800px;
	height: 900px;
	margin: 0px auto;
	padding-top: 50px;
	text-align: center;
}

table {
	text-align: center;
	width:800px;
}
.top{
border-bottom:1px solid gray;
box-sizing:border-box;
}
</style>
</head>
<!-----------------body 시작----------------- -->
<body>
	<div id="wrap">
		<table>
			<tr>
				<th class="top">NO.</th>
				<th class="top" width=400>제목</th>
				<th class="top" width=200>날짜</th>
				<th class="top" width=100>조회수</th>
			</tr>
			<c:forEach var="dto" items="${boardlist}">
				<tr>
				<td>${dto.seq}</td>
				<td>${dto.title}</td>
				<td>${dto.writedate}</td>
				<td>${dto.viewcount}</td>
				</tr>
			</c:forEach>		
		
		</table>
	</div>

</body>
</html>