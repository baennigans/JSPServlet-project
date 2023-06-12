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
	background-image: url('images/구름.jpg');
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

.borrowbook-table {
	padding-top: 130px;
	padding-bottom: 40px;
}

.returnbook-table {
	padding-top: 130px;
	padding-bottom: 40px;
}

#return, #borrow {
	margin-top: 120px;
}
</style>

<script>
	function checkForm1() {
		if (confirm("책을 대여하시겠습니까?")) {
			return true
		} else {
			alert("대여 취소되었습니다.");
			return false
		}
	}

	function checkForm2() {
		if (confirm("책을 반납하시겠습니까?")) {
			return true
		} else {
			alert("반납 취소되었습니다.");
			return false
		}
	}
</script>
</head>

<body>
	<div id="welcome">
		<h3>${user.name}님 환영합니다.</h3>
	</div>
	<div class="container">
		<a href="home.do"> <img src="images/GHlogo.png" alt="도서관 로고"
			class="logo-img">
		</a>
		<div class="menu-bar">
			<div class="menu-bar-item">
				<a href="getBookList.do">전체 도서 목록</a>
			</div>
			<div class="menu-bar-item">
				<a href="rentBook.do">대여/반납</a>
			</div>
			<div class="menu-bar-item">
				<a href="myPage.do">마이페이지</a>
			</div>
			<div class="menu-bar-item">
				<a href="logout.do">로그아웃</a>
			</div>
			<c:if test="${user.role eq 'Admin'}">
				<div class="menu-bar-item2">
					<a href="insertBookPage.do">도서등록/삭제</a>
				</div>
				<div class="menu-bar-item2">
					<a href="getUserList.do">회원관리</a>
				</div>
			</c:if>
		</div>
		<div class="form-container">
			<h1>도서 대여</h1>
			<hr />
			<form action="borrow.do" method="post" onsubmit="return checkForm1()">
				<table class="borrowbook-table">
					<tr>
						<td>도서 No</td>
						<td><input type="text" name="no" /></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="대여" id="borrow" /></td>
					</tr>
				</table>
			</form>
		</div>
		<div class="form-container">
			<h1>도서 반납</h1>
			<hr />
			<form action="return.do" method="post" onsubmit="return checkForm2()">
				<table class="returnbook-table">
					<tr>
						<td>도서 No</td>
						<td><input type="text" name="no" /></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="반납" id="return" /></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>