<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>GH LIBRARY</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-image: url('images/구름.jpg');
	background-repeat: no-repeat;
	background-size: cover;
}

.container {
	width: 800px;
	margin: 0 auto;
	margin-top: 100px;
	padding: 20px;
	text-align: center;
}

.logo-img {
	width: 600px;
}

h1 {
	margin-top: 40px;
	font-size: 28px;
}

p {
	margin-top: 20px;
	font-size: 18px;
}

.button-container {
	margin-top: 40px;
}

.search-container {
	margin-top: 60px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.search-input {
	width: 400px;
	padding: 12px;
	font-size: 16px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.search-button {
	margin-left: 10px;
	padding: 12px 24px;
	font-size: 16px;
	font-weight: bold;
	text-decoration: none;
	color: #fff;
	background-color: #007bff;
	border-radius: 4px;
	border: none;
	cursor: pointer;
}

.button {
	display: inline-block;
	width: 150px;
	margin-top: 50px;
	padding: 12px 24px;
	font-size: 16px;
	font-weight: bold;
	text-decoration: none;
	color: #fff;
	background-color: #007bff;
	border-radius: 4px;
}
</style>
</head>

<body>
	<div class="container">
		<a href="main.do"> <img src="images/GHlogo.png" alt="도서관 로고"
			class="logo-img">
		</a>
		<h1>GH 도서관에 오신 것을 환영합니다.</h1>
		<p>Welcome to the GH Library.</p>
		<div class="search-container">
			<form action="onlyBookList.do" method="GET">
				<input type="text" name="title" class="search-input"
					placeholder="검색어를 입력하세요"> <input type="submit" value="검색"
					class="search-button">
			</form>
		</div>
		<div class="button-container">
			<a href="loginpage.do" class="button">로그인</a>
			<a href="insertUser.do" class="button">회원가입</a>
		</div>
	</div>
</body>
</html>