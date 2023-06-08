<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
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

#id, #password {
	width: 90%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

#login {
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
		<form action="login.do" method="post">
			<table>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" id="id" /></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="password" id="password" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="로그인" id="login" /></td>
				</tr>
			</table>
		</form>
		<br /> <a href="insertUser.do">회원가입하기</a>
	</div>
</body>
</html>