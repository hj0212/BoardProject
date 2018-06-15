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
	<table>
		<tr>
			<td>
				<table width="100%" cellpadding="0" cellspacing="0" border="0">
					<tr
						style="background: url('img/table_mid.gif') repeat-x; text-align: center;">
						<td width="5"><img src="img/table_left.gif" width="5"
							height="30" /></td>
						<td>내 용</td>
						<td width="5"><img src="img/table_right.gif" width="5"
							height="30" /></td>
					</tr>
				</table>
				<table width="413">
					
						<tr>
							<td width="0">&nbsp;</td>
							<td align="center" width="76">글번호</td>
							<td width="319"><input type="text" style="display: none"
								name="article_no" value="${article.seq }" readonly>
								${article.seq}</td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<td width="0">&nbsp;</td>
							<td align="center" width="76">조회수</td>
							<td width="319">${article.viewcount }</td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<td width="0">&nbsp;</td>
							<td align="center" width="76">작성일</td>
							<td width="319">${article.writedate}</td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<td width="0">&nbsp;</td>
							<td align="center" width="76">IP</td>
							<td width="319">${article.ip }</td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<td width="0">&nbsp;</td>
							<td align="center" width="76">제목</td>
							<td width="319">${article.title }</td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<td width="0">&nbsp;</td>
							<td width="399" colspan="2" height="200">${article.contents}
							</td>
						</tr>					

					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>
					<tr height="1" bgcolor="#82B5DF">
						<td colspan="4" width="407"></td>
					</tr>
					
					<tr align="center">
						<td width="0">&nbsp;</td>
						<td colspan="2" width="399"><input type=button value="목록"
							id="listBtn"> <input type=button value="수정"
							id="updateBtn">
							<input type="button" value="삭제" id="deleteBtn" name="del">
						<td width="0">&nbsp;</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<script>
		
		document.getElementById("listBtn").onclick = function() {
			location.href="viewList.bo";
		}
		document.getElementById("updateBtn").onclick = function() {
			location.href="pwcheck.jsp?proc=modi&seq=" + ${article.seq};
		}
		document.getElementById("deleteBtn").onclick = function() {
			location.href="pwcheck.jsp?proc=remo&seq=" + ${article.seq};
		}
	

	</script>
</body>
</html>