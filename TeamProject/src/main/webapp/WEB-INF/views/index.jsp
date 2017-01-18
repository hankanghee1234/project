<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">


<!-- Bootstrap Core CSS -->
<link href="../resources/startbootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="../resources/startbootstrap/css/stylish-portfolio.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="../resources/startbootstrap/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
	width: 360px;
	padding: 8% 0 0;
	margin: auto;
	display: none;
}

.form {
	position: relative;
	z-index: 1;
	background: #FFFFFF;
	max-width: 360px;
	margin: 0 auto 100px;
	padding: 45px;
	text-align: center;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0
		rgba(0, 0, 0, 0.24);
}

.form input {
	font-family: "Roboto", sans-serif;
	outline: 0;
	background: #f2f2f2;
	width: 100%;
	border: 0;
	margin: 0 0 15px;
	padding: 15px;
	box-sizing: border-box;
	font-size: 14px;
}

.form button {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #4CAF50;
	width: 100%;
	border: 0;
	padding: 15px;
	color: #FFFFFF;
	font-size: 14px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
}

.form button:hover, .form button:active, .form button:focus {
	background: #43A047;
}

.form .message {
	margin: 15px 0 0;
	color: #b3b3b3;
	font-size: 12px;
}

.form .message a {
	color: #4CAF50;
	text-decoration: none;
}

.form .register-form {
	display: none;
}

.list-page {
	display: none;
}

.container {
	position: relative;
	z-index: 1;
	max-width: 300px;
	margin: 0 auto;
}

.container:before, .container:after {
	content: "";
	display: block;
	clear: both;
}

.container .info {
	margin: 50px auto;
	text-align: center;
}

.container .info h1 {
	margin: 0 0 15px;
	padding: 0;
	font-size: 36px;
	font-weight: 300;
	color: #1a1a1a;
}

.container .info span {
	color: #4d4d4d;
	font-size: 12px;
}

.container .info span a {
	color: #000000;
	text-decoration: none;
}

.container .info span .fa {
	color: #EF3B3A;
}
</style>

</head>


<body>

	<!-- Navigation -->
	<a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i
		class="fa fa-bars"></i></a>
	<nav id="sidebar-wrapper">
	<ul class="sidebar-nav">
		<a id="menu-close" href="#"
			class="btn btn-light btn-lg pull-right toggle"><i
			class="fa fa-times"></i></a>
		<li class="sidebar-brand"><a href="#top"
			onclick="$(&quot;#menu-close&quot;).click();">Start Bootstrap</a></li>
		<li><a href="#top" onclick="$(&quot;#menu-close&quot;).click();">Home</a>
		</li>
		<li><a href="#about"
			onclick="$(&quot;#menu-close&quot;).click();">About</a></li>
		<li><a href="#services"
			onclick="$(&quot;#menu-close&quot;).click();">Services</a></li>
		<li><a href="#portfolio"
			onclick="$(&quot;#menu-close&quot;).click();">Portfolio</a></li>
		<li><a href="#contact"
			onclick="$(&quot;#menu-close&quot;).click();">Contact</a></li>
	</ul>
	</nav>

	<!-- Header -->
	<header id="top" class="header">

	<div class="text-vertical-center">
		<h1 class="title">Let's presentation</h1>

		<p>
			<a class="btn btn-dark btn-lg" id="P-list">P-list</a> <a
				class="btn btn-dark btn-lg" id="presenter">Presenter</a>
		</p>

		<div class="login-page">
			<div class="form">
				<form class="register-form">
					<input type="text" placeholder="name" /> <input type="id"
						placeholder="id" /> <input type="password" placeholder="password" />
					<input type="text" placeholder="email address" />

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
				<form class="login-form">
					<input type="text" placeholder="username" /> <input
						type="password" placeholder="password" />
					<button>login</button>
					<p class="message">
						Not registered? <a href="#">Create an account</a>
					</p>
					<p class="message">
						Want Back? <a href="#" class="back">Back the Home</a>
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
						Want Back? <a href="#" class="back">Back the Home</a>
					</p>

				</form>

			</div>
		</div>


		<div class="text-vertical-center"></div>
	</div>
	</header>


	<!-- jQuery -->
	<script src="../resources/startbootstrap/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="../resources/startbootstrap/js/bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script>

	//Presentation List FadeIn
	$("#P-list").click(function(event) {

		$("#P-list").hide();
		$("#presenter").hide();
		$(".list-page").fadeIn("slow"); 		

	});

	//Login
    $(".message a").click(function(){
        $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
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
        $('a[href*=#]:not([href=#],[data-toggle],[data-target],[data-slide])').click(function() {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
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