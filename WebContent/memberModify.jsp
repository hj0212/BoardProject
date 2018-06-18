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
	margin:0 auto;	
	text-align: center;
}
table{margin:0px auto;
margin-top:100px;
}
.btns {
	width: 80px;
	border-radius: 3px;
	background-color: white;
}

.btns:hover {
	background-color: black;
	color: white;
}
</style>
</head>
<body>
	<div id="wrap">
	<form id="formJoin" action="modify.do" method="post">
		<table id="container">
			<tr>
				<td colspan=2>
					<p>
					<h1>정보 수정</h1>
					</p>
				</td>
			</tr>
			<tr>
			<td>
			<p>
				아이디: 
			</p>
			</td>
			<td>
			<input type="text" id="idtxt" name="id" readonly value=${id}  >
			</td>
			</tr>
			<tr>
			<td>
			<p>
				비밀번호: 
			</p>
			</td>
			<td>
			<input type="text" id="pwtxt" name="pw">
			</td>
			</tr>
			<tr>
			<td>
			<p>
				이름: 
			</p>
			</td>
			<td>
			<input type="text" id="nametxt" name="name" readonly value=${name}>
			</td>
			<tr>
			<td>
			<p>
				이메일: 
			</p>
			</td>
			<td>
			<input type="text" id="emailtxt" name="email" value=${memberInfo.email}>
			</td>
		</table>
		
		<p>
			<button id="send" class="btns" type="submit">완료</button>
			<button id="back" class="btns" type="button">돌아 가기</button>
		</p>
		</form>
	</div>
	<script>
	document.getElementById("back").onclick=function(){
		location.href="index.html";
	}
	</script>
</body>
</html>