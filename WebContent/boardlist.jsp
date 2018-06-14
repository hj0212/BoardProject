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
	width: 800px;
}

.top {
	border-bottom: 1px solid gray;
	box-sizing: border-box;
}

#bottom {
	border-top: 1px solid gray;
	box-sizing: border-box;
}
#bottomtr{
	margin-top:30px;
}
a{
text-decoration:none;
color:black;
}
a:hover{
text-decoration:underline;
color:purple;
}
</style>
</head>
<!-----------------body ����----------------- -->
<body>
	<div id="wrap">
		<table>
			<tr>
				<th class="top">NO.</th>
				<th class="top" width=400>����</th>
				<th class="top" width=200>��¥</th>
				<th class="top" width=100>��ȸ��</th>
			</tr>
			<c:forEach var="dto" items="${boardlist}">
				<tr>
					<td>${dto.seq}</td>
					<td class="title"><a href="read.bo?seq=${dto.seq}">${dto.title}</a></td>
					<td>${dto.writedate}</td>
					<td>${dto.viewcount}</td>
				</tr>
			</c:forEach>
			<tr id="bottomtr">
				<td colspan=4 id="bottom">
					<button id="writeBtn">�� ����</button>
					<button id="backBtn">Ȩ����</button>
				</td>
			</tr>
		</table>
	</div>
	<script>
		document.getElementById("writeBtn").onclick = function() {
			location.href = "write.jsp";
		}
		document.getElementById("backBtn").onclick = function() {
			location.href = "index.html";
		}
	</script>
</body>
</html>