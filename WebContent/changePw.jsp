<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>
비밀번호를 변경하시겠습니까?
</h1>
<button id="yes" class="btns">예</button>
<button id="no" class="btns">다음에</button>

<script>
document.getElementById("no").onclick=function(){
	
	location.href="index.jsp";
}
</script>
</body>

</html>