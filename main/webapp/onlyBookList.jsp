<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>GH LIBRARY</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-image: url('images/����.jpg');
	background-repeat: no-repeat;
	background-size: cover;
	padding: 20px;
}

.container {
	background-color: rgba(255, 255, 255, 0.8);
	padding: 20px;
	text-align: center;
}

.logo-img {
	width: 200px;
	position: absolute;
	top: 50px;
	left: 50px;
}

.table-container {
	margin-top: 130px;
}

table {
	table-layout: fixed;
	width: 100%;
	border-collapse: collapse;
	font-family: "Arial", sans-serif;
}

table td {
	font-size: 14px;
	font-weight: normal;
	padding: 10px;
	border: 1px solid #ccc;
	text-align: center;
	background-color: #fff;
}

table th {
	font-size: 14px;
	font-weight: bold;
	padding: 18px;
	border: 1px solid #ccc;
	text-align: center;
	background-color: #5696da;
}

.form-container {
	margin-top: 20px;
}

.form-container input[type="text"] {
	width: 400px;
	padding: 8px;
	font-size: 16px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.form-container input[type="submit"] {
	margin-left: 10px;
	padding: 8px 16px;
	font-size: 16px;
	font-weight: bold;
	text-decoration: none;
	color: #fff;
	background-color: #007bff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
</style>
</head>

<body>
	<div class="container">
		<a href="main.do"> <img src="images/GHlogo.png" alt="������ �ΰ�"
			class="logo-img">
		</a>
		<div class="table-container">
			<table>
				<tr>
					<th>No.</th>
					<th>ISBN</th>
					<th>����</th>
					<th>����</th>
					<th>���ǻ�</th>
					<th>�뿩����</th>
				</tr>
				<c:forEach var="book" items="${bookList}">
					<tr>
						<td>${book.seq}</td>
						<td>${book.isbn}</td>
						<td><a href="getBook.do?seq=${book.seq}">${book.title}</a></td>
						<td>${book.writer}</td>
						<td>${book.publisher}</td>
						<td>${book.count}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<hr />
		<div class="form-container">
			<form action="onlyBookList.do" method="post">
				<input type="text" name="title" placeholder="�˻�� �Է��ϼ���"> <input type="submit" value="�˻�">
			</form>
		</div>
	</div>
</body>
</html>