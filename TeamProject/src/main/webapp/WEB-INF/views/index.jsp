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
<%-- <link
   href="${pageContext.request.contextPath}/resources/startbootstrap/font-awesome/css/font-awesome.min.css"
   rel="stylesheet" type="text/css"> --%>
<!-- <link
   href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
   rel="stylesheet" type="text/css"> -->
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<!-- 핸들바스 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>


<link href="//vjs.zencdn.net/4.9/video-js.css" rel="stylesheet">
<script src="//vjs.zencdn.net/4.9/video.js"></script>

</head>


<body>
	<!-- Header -->



	<header id="top" class="header">

	<h1 class="title"
		style="font-size: 500%; font-weight: 200px; position: absolute; left: 33%; top: 5%; text-shadow: 4px 4px 4px gray;">
		Let's Presentation!</h1>

	<div class="text-vertical-center">

		<p>
			<!-- <a class="btn btn-dark btn-lg" id="Geust">게스트</a> -->

			<a class="btn btn-dark btn-lg" id="P-list">채팅리스트</a> <a
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
					<input type="text" placeholder="회원아이디" name="userid" /> 
					<input type="password" placeholder="비밀먼호" name="userpw" />
					<button>로그인</button>
					<p class="message">
						회원이 아니신가요? <a href="#">회원 가입</a>
					</p>
					<p class="message">
						<a href="" class="back">뒤로 가기</a>
					</p>
				</form>
			</div>
		</div>
		<div class="list-page">
			<div class="form" method="post">
				<div class="list-form" id='chatList'>
					<div class="responsive-table">

						<table class="table table-bordered table-hover" width="100%"
							cellspacing="0">
							<thead>
						
								<tr style="color: black;">

									<th>분야</th>
									<th>제목</th>
									<th>발표자</th>
									
								</tr>
							</thead>
							<tbody id='tableBody'>

								<!-- 로그인한 정보에 따른 ppt 리스트 보여주기 -->


			

								<!-- /.로그인한 정보에 따른 ppt 리스트 보여주기 -->
							</tbody>
						</table>
					</div>
					
				</div>
			</div>
		</div>
		<form id='GeustForm' action="/member/loginGeustPOST" method="post">
			<input type="hidden" name="pptFno" value="6"> <input
				type="hidden" name="userid" value="user00">

		</form>


		<div class="text-vertical-center"></div>
	</div>
	</header>


</body>
<script
	src="${pageContext.request.contextPath}/resources/startbootstrap/js/jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/startbootstrap/js/bootstrap.min.js"></script>
<%-- <script
	src="${pageContext.request.contextPath}/resources/startbootstrap/js/index.js"></script>
 --%>

<script>

		$(document).ready(function() {
			var msg = '${msg}';
			
			if (msg == 'registSUCCESS') {
				alert('회원가입에 성공하셨습니다!');
			} else if (msg == 'loginFail') {
				alert('로그인에 실패하였습니다.. 다시로그인해주세요!');
			}
			
				$.getJSON("/ppt/chatList", function(list) { // 이 안에서 ppt 자료를 JSON data로 입력받아서 호출하는곳
					var tableBody = $('#tableBody'); 

					
					$(list).each(function(index, data) {
				
							
						tableBody.append("<tr style='color: black'><th>" + data.ppt_kind + "</th><th><a class=Geust data-src='" + data.userid + "'href=http://192.168.0.30:8082/ppt?id=" + data.fno + "#&userid=" + data.userid + "#/ >" + data.ppt_title + "</a></th><th>" + data.userid + "</th></tr>");

							console.log(index);
							console.log(data); 
							console.log(data.ppt_title); 
							console.log(data.userid);
						
					});
				
					$('#chatList').append('<p class="message" ><a href="" class="back" >뒤로 가기</a></p>');
					
				});

				$(".back").click(function(event) {
					self.location.reload();
				});
				
				// Presentation List FadeIn
				$('#chatList').on('click','.Geust',function(event) {
					
					 var userid = $(this).attr("data-src");
					
					 $.ajax({
						url : "/member/loginGeustPOST/"+userid, 
						type : "post", 
						success : function(data) {
							console.log(data);

						}
					});    
								
				});
					
				$("#P-list").click(function(event) {

					$("#P-list").hide();
					$("#presenter").hide();
					$(".list-page").fadeIn("slow");
					
				});

				// Login
				$(".message a").click(function() {
					$('form').animate({
						height: "toggle",
						opacity: "toggle"
					}, "slow");
				});

				// Login FadeIn
				$("#presenter").click(function(event) {

					$("#P-list").hide();
					$("#presenter").hide();
					$(".login-page").fadeIn("slow");
				});

				// back the home
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
					$('a[href*=#]:not([href=#],[data-toggle],[data-target],[data-slide])').click(function() {
									
						if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') ||
									location.hostname == this.hostname) {
							
							var target = $(this.hash);
							target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
							
							if (target.length) {
									$('html,body').animate({			
										scrollTop: target.offset().top}, 1000);
										return false;
									}
							}
						});
				});
				
				// #to-top button appears after scrolling
				var fixed = false;
				
				$(document).scroll(function() {
					if ($(this).scrollTop() > 250) {
						if (!fixed) {
							fixed = true;
							// $('#to-top').css({position:'fixed', display:'block'});
							
							$('#to-top').show("slow", function() {
								$('#to-top').css({
									position: 'fixed',
									display: 'block'
								});
							});
						}
					} else {
						if (fixed) {
							fixed = false;
							$('#to-top').hide("slow", function() {
								$('#to-top').css({
									display: 'none'
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
					// Disable the click handler until the user leaves the
					// map area
					that.off('click', onMapClickHandler);
					// Enable scrolling zoom
					that.find('iframe').css("pointer-events", "auto");
					// Handle the mouse leave event
					that.on('mouseleave', onMapMouseleaveHandler);
				}
				// Enable map zooming with mouse scroll when the user clicks
				// the map
				$('.map').on('click', onMapClickHandler);

			});

</script>
</html>