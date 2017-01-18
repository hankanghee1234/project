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
<!-- 앵귤러JS -->
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
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
				<form class="register-form" action="<c:url value='/member/register'/>" method="post">
					<input type="id" placeholder="id" name="userid"/> 
					<input type="password" placeholder="password" name="userpw"/>
					<input type="text" placeholder="email address" name="email"/>
					<input type="text" placeholder="name" name="uname"/> 

					<!-- 프로필 공간 -->

					<!-- 네이버 구글 인증 -->

					<button>create</button>
					<p class="message">
						Already registered? <a href="#">Sign In</a>
					</p>
					<p class="message">
						Want Back? <a href="#" class="back">Back the Home</a>
					</p>
				</form>
				<form class="login-form" method="post"
					action="<c:url value='/member/loginPOST'/>">
					<input type="text" placeholder="userid" name="userid"/> 
					<input type="password" placeholder="password" name="userpw"/>
					<button>login</button>
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
			<div class="form">
				<form class="list-form">
					<p>
						test(<a href="">test1.ppt</a>)
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


	<script
		src="${pageContext.request.contextPath}/resources/startbootstrap/js/jquery.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/startbootstrap/js/bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script>
		//Presentation List FadeIn
		$("#P-list").click(function(event) {

			$("#P-list").hide();
			$("#presenter").hide();
			$(".list-page").fadeIn("slow");

		});

		//Login
		$(".message a").click(function() {
			$('form').animate({
				height : "toggle",
				opacity : "toggle"
			}, "slow");
		});

		//Login FadeIn
		$("#presenter").click(function(event) {

			$("#P-list").hide();
			$("#presenter").hide();
			$(".login-page").fadeIn("slow");
		});

		//back the home
		$(".back").click(function(event) {
			location.reload();
		});

		// Closes the sidebar menu
		$("#menu-close").click(function(e) {
			e.preventDefault();
			$("#sidebar-wrapper").toggleClass("active");
		});
		// Opens the sidebar menu
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#sidebar-wrapper").toggleClass("active");
		});
		// Scrolls to the selected menu item on the page
		$(function() {
			$(
					'a[href*=#]:not([href=#],[data-toggle],[data-target],[data-slide])')
					.click(
							function() {
								if (location.pathname.replace(/^\//, '') == this.pathname
										.replace(/^\//, '')
										|| location.hostname == this.hostname) {
									var target = $(this.hash);
									target = target.length ? target
											: $('[name=' + this.hash.slice(1)
													+ ']');
									if (target.length) {
										$('html,body').animate({
											scrollTop : target.offset().top
										}, 1000);
										return false;
									}
								}
							});
		});
		//#to-top button appears after scrolling
		var fixed = false;
		$(document).scroll(function() {
			if ($(this).scrollTop() > 250) {
				if (!fixed) {
					fixed = true;
					// $('#to-top').css({position:'fixed', display:'block'});
					$('#to-top').show("slow", function() {
						$('#to-top').css({
							position : 'fixed',
							display : 'block'
						});
					});
				}
			} else {
				if (fixed) {
					fixed = false;
					$('#to-top').hide("slow", function() {
						$('#to-top').css({
							display : 'none'
						});
					});
				}
			}
		});
		// Disable Google Maps scrolling
		// See http://stackoverflow.com/a/25904582/1607849
		// Disable scroll zooming and bind back the click event
		var onMapMouseleaveHandler = function(event) {
			var that = $(this);
			that.on('click', onMapClickHandler);
			that.off('mouseleave', onMapMouseleaveHandler);
			that.find('iframe').css("pointer-events", "none");
		}
		var onMapClickHandler = function(event) {
			var that = $(this);
			// Disable the click handler until the user leaves the map area
			that.off('click', onMapClickHandler);
			// Enable scrolling zoom
			that.find('iframe').css("pointer-events", "auto");
			// Handle the mouse leave event
			that.on('mouseleave', onMapMouseleaveHandler);
		}
		// Enable map zooming with mouse scroll when the user clicks the map
		$('.map').on('click', onMapClickHandler);
	</script>

</body>

</html>