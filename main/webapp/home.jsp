<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
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

#randomImage {
	width: 500px;
	margin-top: 100px;
}

</style>
<script>
	window.onload = function() {
		var imageUrls = [
				"images/명언1.jpg",
				"images/명언2.jpg",
				"images/명언3.jpg",
				"images/명언4.jpg",
				"images/명언5.jpg",
				"images/명언6.jpg"
		];
		var randomIndex = Math.floor(Math.random() * imageUrls.length);
		var imageElement = document.getElementById("randomImage");
		imageElement.src = imageUrls[randomIndex];
	};
</script>
</head>
<body>
	<div id="welcome">
		<h3>${user.name}님 환영합니다.</h3>
	</div>
	<div class="container">
		<a href="home.do">
			<img src="images/GHlogo.png" alt="도서관 로고" class="logo-img">
		</a>
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
		<img id="randomImage" alt="랜덤 이미지">
	</div>
</body>
</html>