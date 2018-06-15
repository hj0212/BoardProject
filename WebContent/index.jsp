<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#wrap {
	width: 800px;
	height: 800px;
	margin: 100px auto;
	color:darkgreen;
}
#boardBtn {
	width:200px;
	height:50px;
	font-size:30px;
}
table{text-align:center;
position:relative;
left:20%;
}
</style>
</head>

<body>
	<div id="wrap">
		<table>
			<tr>
				<td><h1>${sessionScope.loginId} 님^^ 방문을 환영합니다!!</h1></td>
			</tr>
			<tr>
				<td>
					<button id="boardBtn" type="button">게시판</button>
				</td>
			</tr>
		</table>
	</div>
	
	<script>
		document.getElementById("boardBtn").onclick = function() {
			location.href = "viewList.bo";
		}
	</script>

</body>
</html>