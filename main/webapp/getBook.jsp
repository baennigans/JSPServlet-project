<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>GH LIBRARY</title>
</head>
<body>
	<h1>글 상세보기</h1>
	<hr />
	<form action="updateBook.do" method="post">
		<input name="seq" type="hidden" value="${book.seq}" />
		<table border="1">
			<tr>
				<td>ISBN</td>
				<td><input type="text" name="isbn" value="${book.isbn}" /></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" value="${book.title}" /></td>
			</tr>
			<tr>
				<td>저자</td>
				<td><input type="text" name="writer" value="${book.writer}" /></td>
			</tr>
			<tr>
				<td>출판사</td>
				<td><input type="text" name="publisher" value="${book.publisher}" /></td>
			</tr>
			<tr>
				<td>책 권수</td>
				<td><input type="text" name="count" value="${book.count}" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="수정" /></td>
			</tr>
		</table>
		<br />
		<c:if test="${user.role == 'Admin'}">
			<a href="deleteBook.do?seq=${book.seq}">delete</a>
		</c:if>
		<a href="getBookList.do">list</a>
	</form>
</body>
</html>