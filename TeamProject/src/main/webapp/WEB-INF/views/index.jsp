<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="${pageContext.request.contextPath}/resources/startbootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/startbootstrap/css/stylish-portfolio.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/startbootstrap/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<!-- 핸들바스 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
</head>
<body>
	<!-- Header -->
	<header id="top" class="header">
	<div class="text-vertical-center">
		<h1 class="title">Let's presentation!</h1>
		<p>
			<a class="btn btn-dark btn-lg" id="P-list">게스트</a> <a
				class="btn btn-dark btn-lg" id="presenter">발표자</a>
		</p>
		<div class="login-page">
			<div class="form">
				<form class="register-form" method="post"
					action="<c:url value='/member/register'/>">
					<input type="id" placeholder="회원아이디" name="userid" /> <input
						type="password" placeholder="비밀번호" name="userpw" /> <input
						type="text" placeholder="이름" name="username" /> <input type="text"
						placeholder="이메일" name="email" />
					<button>회원가입</button>
					<!-- 프로필 공간 -->
					<p class="message">
						회원가입을 하신건가요? <a href="#">로그인 하러 가기</a>
					</p>
					<p class="message">
						<a href="#" class="back">뒤로 가기</a>
					</p>
				</form>
				<form class="login-form" method="post"
					action="<c:url value='/member/loginPOST'/>">
					<input type="text" placeholder="회원아이디" name="userid" /> <input
						type="password" placeholder="비밀먼호" name="userpw" />
					<button>로그인</button>
					<p class="message">
						회원이 아니신가요? <a href="#">회원 가입</a>
					</p>
					<p class="message">
						<a href="#" class="back">뒤로 가기</a>
					</p>
				</form>
			</div>
		</div>
		<div class="list-page">
			<div class="form" method="post">
				<form class="list-form" id='chatList'>
					<p>
						test&nbsp;&nbsp;-&nbsp;&nbsp;<a href="">&nbsp;&nbsp;test1.ppt</a>
					</p>
					<p>
						test(<a href="http://192.168.0.28:8080">test2.hwp</a>)
					</p>
					<p>
						test(<a href="">test3.doc</a>)
					</p>
					<p>
						test(<a href="">test4.ppt</a>)
					</p>
					<p>
						test(<a href="">test5.exl</a>)
					</p>
					<p class="message">
						<a href="#" class="back">뒤로 가기</a>
					</p>
				</form>
			</div>
		</div>
		<div class="text-vertical-center"></div>
	</div>
	</header>
</body>
<script
	src="${pageContext.request.contextPath}/resources/startbootstrap/js/jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/startbootstrap/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/startbootstrap/js/index.js"></script>
</html>