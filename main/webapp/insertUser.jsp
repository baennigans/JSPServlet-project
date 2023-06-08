<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="EUC-KR">
<title>GH LIBRARY</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-image: url('images/구름.jpg');
	background-repeat: no-repeat;
	background-size: cover;
}

.container {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	width: 400px;
	margin: 100px auto;
	padding: 50px 0;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
}

.logo-img {
	width: 300px;
}

h1 {
	text-align: center;
	color: #333;
}

form {
	margin-top: 40px;
}

table {
	width: 100%;
}

table td {
	padding: 5px;
}

#id, #password, #name {
	width: 90%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

#role {
	margin-top: 20px;
}

#insertUser {
	width: 100%;
	padding: 15px;
	margin-top: 40px;
	background-color: #4CAF50;
	color: #fff;
	border: none;
	border-radius: 3px;
}

a {
	margin-top: 40px;
	color: #4CAF50;
	text-decoration: none;
}
</style>
</head>
<body>
	<div class="container">
		<a href="main.do">
			<img src="images/GHlogo.png" alt="도서관 로고" class="logo-img">
		</a>
		<hr />
		<h2>GH도서관 회원가입</h2>
		<form action="insertUser.do" method="post">
			<table>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" id="id" />
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="password" id="password" />
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" id="name" />
				</tr>
				<tr>
					<td></td>
					<td><input type="radio" name="role" value="Admin"
						checked="checked" /> 관리자 <input type="radio" name="role"
						value="User" id="role" /> 사용자</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="회원가입" id="insertUser" />
				</tr>
			</table>
		</form>
		<br /> <a href="loginpage.do">로그인 화면으로 이동</a>
	</div>
</body>
</html>