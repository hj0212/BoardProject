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
    <form action="write.bo" method="post">
       
            <table border=1>
                <tr>
                    <th colspan="2">자유게시판 글 쓰기</th>
                </tr>
                <tr>
                    <td><input type="text" placeholder="제목을 입력하세요" size="100" name="title"></td>
                </tr>
                <tr>
                    <td colspan="2" height=200><textarea rows="40" placeholder="내용을 입력하세요" name="contents" style="width: 99.5%"></textarea></td>
                </tr>
                <tr>
                    <td colspan="2" align=center>
                       <input type="text" value="" name="password" placeholder="글 작성시 비밀번호를 입력하세요">
                    <input type="submit" value="작성하기">
                        <input type="button" id="backbtn" value="목록으로"></td>
                </tr>
            </table>
    </form>
    <script>
        document.getElementById("backbtn").onclick = function() {
            location.href = "boardlist.jsp"
        }
    </script>
</body>
</html>