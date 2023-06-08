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
		<a href="main.do">
			<img src="images/GHlogo.png" alt="도서관 로고" class="logo-img">
		</a>
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
			<form action="onlyBoardList.do" method="post">
				<input type="text" name="writer" placeholder="검색어를 입력하세요"> <input
					type="submit" value="검색">
			</form>
		</div>
	</div>
</body>
</html>