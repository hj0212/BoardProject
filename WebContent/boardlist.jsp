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
			<c:if test ="${articlepage.hasNoArticles()}">
			<tr>
			<td colspan=4>게시글이 없습니다.</td>
			</tr>
			</c:if>
			<c:forEach var="dto" items="${articlepage.getContent()}">
				<tr>
					<td>${dto.seq}</td>
					<td class="title"><a href="read.bo?seq=${dto.seq}&pageNo=${articlepage.currentPage}">${dto.title}</a></td>
					<td>${dto.writedate}</td>
					<td>${dto.viewcount}</td>
				</tr>
			</c:forEach>
			<tr id="bottomtr">
				<td colspan=4 id="bottom">
					<button id="writeBtn">글 쓰기</button>
					<button id="backBtn">홈으로</button>
				</td>
			</tr>
			<c:if test="${articlepage.hasArticles()}">
			<tr>
			<td colspan=4>
			<c:if test="${articlepage.startPage > 5}">
			<a href="viewList.bo?pageNo=${articlepage.startPage - 5}">[이전]</a>
			</c:if>
			<c:forEach var="pNo" begin="${articlepage.startPage}" end="${articlepage.endPage}">
			<a href="viewList.bo?pageNo=${pNo}">[${pNo}]</a>
			</c:forEach>
			<c:if test="${articlepage.endPage < articlepage.totalPages}">
			<a href="viewList.bo?pageNo=${articlepage.startPage + 5}">[다음]</a>
			</c:if>
			</td>
			</tr>
			</c:if>
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