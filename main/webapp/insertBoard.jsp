<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>���� ���</h1>
	<hr />
	<form action="insertBoard.do" method="post">
		<table border="1">
			<tr>
				<td>����</td>
				<td><input type="text" name="title" /></td>
			</tr>
			<tr>
				<td>�ۼ���</td>
				<td><input type="text" name="writer" /></td>
			</tr>
			<tr>
				<td>�� ����</td>
				<td><textarea name="content" cols="40" rows="10">
		</textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="���" /></td>
			</tr>
		</table>
	</form>
</body>
</html>