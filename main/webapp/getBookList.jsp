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

#welcome {
	position: absolute;
	right: 60px;
	color: rgb(49, 99, 238);
}

.container {
	background-color: rgba(255, 255, 255, 0.8);
	padding: 20px;
	text-align: center;
}

h3 {
	margin-top: 20px;
	font-size: 18px;
}

.logo-img {
	width: 200px;
	position: absolute;
	top: 50px;
	left: 50px;
}

.menu-bar {
	display: flex;
	justify-content: center;
	margin-top: 40px;
}

.menu-bar-item {
	margin: 0 10px;
}

.menu-bar-item a {
	display: inline-block;
	padding: 8px 16px;
	font-size: 16px;
	font-weight: bold;
	text-decoration: none;
	color: #fff;
	background-color: #5696da;
	border-radius: 4px;
}

.menu-bar-item2 a {
	margin: 0 10px;
	display: inline-block;
	padding: 8px 16px;
	font-size: 16px;
	font-weight: bold;
	text-decoration: none;
	color: #fff;
	background-color: red;
	border-radius: 4px;
}

.table-container {
	margin-top: 60px;
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
	<div id="welcome">
		<h3>${user.name}�� ȯ���մϴ�.</h3>
	</div>
	<div class="container">
		<a href="home.do"> <img src="images/GHlogo.png" alt="������ �ΰ�"
			class="logo-img">
		</a>
		<div class="menu-bar">
			<div class="menu-bar-item">
				<a href="getBookList.do">��ü ���� ���</a>
			</div>
			<div class="menu-bar-item">
				<a href="#">�뿩/�ݳ�</a>
			</div>
			<div class="menu-bar-item">
				<a href="myPage.do">����������</a>
			</div>
			<div class="menu-bar-item">
				<a href="logout.do">�α׾ƿ�</a>
			</div>
			<c:if test="${user.role eq 'Admin'}">
				<div class="menu-bar-item2">
					<a href="insertBookPage.do">�������/����</a>
				</div>
				<div class="menu-bar-item2">
					<a href="getUserList.do">ȸ������</a>
				</div>
			</c:if>
		</div>
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
			<form action="searchBook.do" method="post">
				<input type="text" name="title" placeholder="�˻�� �Է��ϼ���"> <input type="submit" value="�˻�">
			</form>
		</div>
	</div>
</body>
</html>