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
						type="text" placeholder="이름" name="username" /> <input
						type="text" placeholder="이메일" name="email" />
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

					<!-- facebook 로그인 -->
				 	<fb:login-button scope="public_profile,email"
						onlogin="checkLoginState();" class="fb-login-button" data-max-rows="1" data-size="xlarge"
						data-show-faces="false" data-auto-logout-link="true">
					</fb:login-button> 

					<div id="status"></div>


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
						test(<a href="">test2.hwp</a>)
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

<script>
	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id))
			return;
		js = d.createElement(s);
		js.id = id;
		js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.8&appId=746117718889847";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
</script>



<!-- facebook api 인증 및 사용-->
<script>
	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id))
			return;
		js = d.createElement(s);
		js.id = id;
		js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.8&appId=746117718889847";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
</script>



<script>
	// This is called with the results from from FB.getLoginStatus().
	function statusChangeCallback(response) {
		console.log('statusChangeCallback');
		console.log(response);
		
		// response 객체는 현재 로그인 상태를 나타내는 정보를 보여준다. 
		// 앱에서 현재의 로그인 상태에 따라 동작하면 된다. 
		// FB.getLoginStatus().의 레퍼런스에서 더 자세한 내용이 참조 가능하다.
		if (response.status === 'connected') {
			// 페이스북을 통해서 로그인이 되어있다.
			testAPI();
		} else if (response.status === 'not_authorized') {
			// 페이스북에는 로그인 했으나, 앱에는 로그인이 되어있지 않다.
			document.getElementById('status').innerHTML = 'Please log '
					+ 'into this app.';
		} else {
			// 페이스북에 로그인 되어있지 않다. 따라서, 앱에 로그인이 되어있는지 여부가 불확실하다.
			document.getElementById('status').innerHTML = 'Please log '
					+ 'into Facebook.';
		}
	}

	// 이 함수는 누군가가 로그인 버튼에 대한 처리가 끝났을 때 호출된다. 
	// onlogin 핸들러를 아래와 같이 첨부하면 된다.
	function checkLoginState() {
		FB.getLoginStatus(function(response) {
			statusChangeCallback(response);
		});
	}

	window.fbAsyncInit = function() {
		FB.init({
			appId : '{746117718889847}',
			cookie : true, // enable cookies to allow the server to access 
			// the session
			xfbml : true, // parse social plugins on this page
			version : 'v2.8' // use graph api version 2.8
		});

		// 자바스크립트 SDK를 초기화 했으니, FB.getLoginStatus()를 호출한다. 
		//.이 함수는 이 페이지의 사용자가 현재 로그인 되어있는 상태 3가지 중 하나를 콜백에 리턴한다. 
		// 그 3가지 상태는 아래와 같다. 
		// 1. 앱과 페이스북에 로그인 되어있다. ('connected') 
		// 2. 페이스북에 로그인되어있으나, 앱에는 로그인이 되어있지 않다. ('not_authorized') 
		// 3. 페이스북에 로그인이 되어있지 않아서 앱에 로그인이 되었는지 불확실하다. // 
		// 위에서 구현한 콜백 함수는 이 3가지를 다루도록 되어있다. 
		FB.getLoginStatus(function(response) {
			statusChangeCallback(response);
		});

	};

	 // SDK를 비동기적으로 호출
	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id))
			return;
		js = d.createElement(s);
		js.id = id;
		js.src = "//connect.facebook.net/en_US/sdk.js";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
	 

	// 로그인이 성공한 다음에는 간단한 그래프API를 호출한다. 
	// 이 호출은 statusChangeCallback()에서 이루어진다.
	function testAPI() {
		console.log('Welcome!  Fetching your information.... ');
		FB.api('/me',function(response) {
				console.log('Successful login for: '+ response.name);
				document.getElementById('status').innerHTML = 'Thanks for logging in, '+ response.name + '!';
				
				 
				      self.location="member/myPage";
				   
				
				
			});
		}	
	

	
	
</script>
<!-- 아래는 소셜 플러그인으로 로그인 버튼을 넣는다. 이 버튼은 자바스크립트 SDK에 그래픽 기반의 로그인 버튼을 넣어서 클릭시 FB.login() 함수를 실행하게 된다. --> 


</html>