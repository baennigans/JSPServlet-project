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
	width: 60%;
	margin: 60px auto;
	display: flex;
	justify-content: center;
	align-items: center;
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
	font-weight: bold; padding : 18px; border : 1px solid #ccc; text-align
	: center;
	background-color: #5696da;
	text-align: center;
	border: 1px solid #ccc;
	padding: 18px;
}
</style>
</head>

<body>
	<div id="welcome">
		<h3>${user.name}�� ȯ���մϴ�.</h3>
	</div>
	<div class="container">
		<a href="home.do"> <img src="images/GHlogo.png" alt="������ �ΰ�" class="logo-img">
		</a>
		<div class="menu-bar">
			<div class="menu-bar-item">
				<a href="getBookList.do">��ü ���� ���</a>
			</div>
			<div class="menu-bar-item">
				<a href="rentBook.do">�뿩/�ݳ�</a>
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
					<th>NO.</th>
					<th>ISBN</th>
					<th>����</th>
					<th>����</th>
				</tr>
				<c:forEach var="user" items="${rentList}">
					<tr>
						<td>${rent.seq}</td>
						<td>${rent.isbn}</td>
						<td>${rent.title}</td>
						<td>${rent.writer}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<hr />
	</div>
</body>
</html>