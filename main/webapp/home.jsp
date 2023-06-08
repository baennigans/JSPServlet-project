<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խñ� ���</title>
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

#randomImage {
	width: 500px;
	margin-top: 100px;
}

</style>
<script>
	window.onload = function() {
		var imageUrls = [
				"images/���1.jpg",
				"images/���2.jpg",
				"images/���3.jpg",
				"images/���4.jpg",
				"images/���5.jpg",
				"images/���6.jpg"
		];
		var randomIndex = Math.floor(Math.random() * imageUrls.length);
		var imageElement = document.getElementById("randomImage");
		imageElement.src = imageUrls[randomIndex];
	};
</script>
</head>
<body>
	<div id="welcome">
		<h3>${user.name}�� ȯ���մϴ�.</h3>
	</div>
	<div class="container">
		<a href="home.do">
			<img src="images/GHlogo.png" alt="������ �ΰ�" class="logo-img">
		</a>
		<div class="menu-bar">
			<div class="menu-bar-item">
				<a href="#">��ü ���� ���</a>
			</div>
			<div class="menu-bar-item">
				<a href="#">���� �뿩/�ݳ�</a>
			</div>
			<div class="menu-bar-item">
				<a href="#">���� ���/����</a>
			</div>
			<div class="menu-bar-item">
				<a href="#">ȸ������</a>
			</div>
			<div class="menu-bar-item">
				<a href="logout.do">�α׾ƿ�</a>
			</div>
		</div>
		<img id="randomImage" alt="���� �̹���">
	</div>
</body>
</html>