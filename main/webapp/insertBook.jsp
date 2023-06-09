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
	padding-bottom: 100px;
	text-align: center;
}

h1 {
	margin-bottom: 50px;
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

.form-container {
	display: inline-block;
	vertical-align: top;
	margin-top: 100px;
	margin-right: 60px;
	width: 400px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
	padding: 20px;
}

.form-container table {
	width: 100%;
}

.form-container table td {
	padding: 10px;
}

.form-container table td:first-child {
	width: 100px;
}

.form-container input[type="text"], .form-container textarea {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	resize: vertical;
}

.form-container input[type="submit"] {
	padding: 8px 16px;
	margin-top: 20px;
	font-size: 16px;
	font-weight: bold;
	text-decoration: none;
	color: #fff;
	background-color: #5696da;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.form-container input[type="submit"]:hover {
	background-color: #417cb8;
}

.insertbook-table {
	padding-top: 20px;
	padding-bottom: 30px;
}

.deletetbook-table {
	padding-top: 130px;
	padding-bottom: 40px;
}

#delete {
	margin-top: 120px;
}
</style>

<script>
	function checkForm1() {
		if (confirm("å�� ����Ͻðڽ��ϱ�?")) {
			alert("��� �Ǿ����ϴ�.");
			return true
		} else {
			alert("����� ��ҵǾ����ϴ�.");
			return false
		}
	}

	function checkForm2() {
		if (confirm("���� �����Ͻðڽ��ϱ�?")) {
			alert("���� �Ǿ����ϴ�.");
			return true
		} else {
			alert("������ ��ҵǾ����ϴ�.");
			return false
		}
	}
</script>
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
		<div class="form-container">
			<h1>���� ���</h1>
			<hr />
			<form action="insertBook.do" method="post" onsubmit="return checkForm1()">
				<table class="insertbook-table">
					<tr>
						<td>ISBN</td>
						<td><input type="text" name="isbn" /></td>
					</tr>
					<tr>
						<td>����</td>
						<td><input type="text" name="title" /></td>
					</tr>
					<tr>
						<td>����</td>
						<td><input type="text" name="writer" /></td>
					</tr>
					<tr>
						<td>���ǻ�</td>
						<td><input type="text" name="publisher" /></td>
					</tr>
					<tr>
						<td>å �Ǽ�</td>
						<td><input type="text" name="count" /></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="���" /></td>
					</tr>
				</table>
			</form>
		</div>
		<div class="form-container">
			<h1>���� ����</h1>
			<hr />
			<form action="deleteBook.do" method="post" onsubmit="return checkForm2()">
				<table class="deletetbook-table">
					<tr>
						<td>ISBN</td>
						<td><input type="text" name="isbn" /></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="����" id="delete" /></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>