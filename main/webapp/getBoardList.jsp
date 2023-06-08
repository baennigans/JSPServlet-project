<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시글 목록</title>
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
	margin-top:40px;
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

.table-container {
	margin-top: 60px;
}

table {
	width: 100%;
	border-collapse: collapse;
}

table td, table th {
	padding: 8px;
	border: 1px solid #ccc;
	text-align: center;
}

.table-title {
	font-weight: bold;
}

.form-container {
	margin-top: 20px;
}

.form-container input[type="text"] {
	width: 200px;
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
		<h3>${user.name} 님 환영합니다.</h3>
	</div>
	<div class="container">
		<img src="images/GHlogo.png" alt="GH 로고" class="logo-img">
		<div class="menu-bar">
			<div class="menu-bar-item">
				<a href="#">전체 도서 목록</a>
			</div>
			<div class="menu-bar-item">
				<a href="#">도서 대여/반납</a>
			</div>
			<div class="menu-bar-item">
				<a href="#">도서 등록/삭제</a>
			</div>
			<div class="menu-bar-item">
				<a href="#">회원관리</a>
			</div>
			<div class="menu-bar-item">
				<a href="logout.do">로그아웃</a>
			</div>
		</div>
		<div class="table-container">
			<table>
				<tr>
					<th>No.</th>
					<th>TITLE</th>
					<th>WRITER</th>
					<th>DATE</th>
					<th>Hit</th>
				</tr>
				<c:forEach var="board" items="${boardList}">
					<tr>
						<td>${board.seq}</td>
						<td><a href="getBoard.do?seq=${board.seq}">${board.title}</a></td>
						<td>${board.writer}</td>
						<td>${board.regDate}</td>
						<td>${board.hit}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<hr />
		<div class="form-container">
			<form action="searchBoard.do" method="post">
				<input type="text" name="writer" placeholder="작성자를 입력하세요"> <input
					type="submit" value="검색">
			</form>
		</div>
	</div>
</body>
</html>