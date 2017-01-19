<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="description" content="Miminium Admin Template v.1">
<meta name="author" content="Isna Nur Azis">
<meta name="keyword" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="../resources/miminium-master/asset/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/miminium-master/asset/css/plugins/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/miminium-master/asset/css/plugins/simple-line-icons.css">
<link rel="stylesheet" type="text/css"
	href="../resources/miminium-master/asset/css/plugins/mediaelementplayer.css">
<link rel="stylesheet" type="text/css"
	href="../resources/miminium-master/asset/css/plugins/animate.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/miminium-master/asset/css/plugins/icheck/skins/flat/red.css">
<link href="../resources/miminium-master/asset/css/style.css"
	rel="stylesheet">

<link rel="shortcut icon"
	href="../resources/miminium-master/asset/img/logomi.png">
</head>
<style>
body {
	background-image: url("../resources/conference1.jpg");
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
<body>
	<!-- carousel 적용 -->
	<div class="container-fluid" id="content"
		style="border: 1px solid black; background-color: lightblue; padding-top: 50px; padding-right: 30px; padding-bottom: 50px; padding-left: 80px;">
		<div class="row">
			<div class="col-md-6" align="center">
				<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">

					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Brand</a>
				</div>

				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li><a href="#">Separated link</a></li>
								<li class="divider"></li>
								<li><a href="#">One more separated link</a></li>
							</ul></li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" />
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form>
				</div>

				</nav>
				<table class="table">
					<thead>
						<tr class="danger">
							<th>번호</th>
							<th>PPT 제목</th>
							<th>발표자</th>
							<th>등록일</th>
						</tr>
					</thead>
					<tbody>
						<tr class="info">
							<td>1</td>
							<td><a href="#">TB - Monthly</a></td>
							<td>Default</td>
							<td>01/04/2012</td>
						</tr>
						<tr class="active">
							<td>2</td>
							<td><a href="#">TB - Monthly</a></td>
							<td>Approved</td>
							<td>01/04/2012</td>
						</tr>
						<tr class="success">
							<td>3</td>
							<td><a href="#">TB - Monthly</a></td>
							<td>Declined</td>
							<td>02/04/2012</td>
						</tr>
						<tr class="warning">
							<td>4</td>
							<td><a href="#">TB - Monthly</a></td>
							<td>Pending</td>
							<td>03/04/2012</td>
						</tr>
					</tbody>
				</table>
				<div class="btn-group">
					<button class="btn btn-primary" type="button" id="createBtn">생성</button>
					<button class="btn btn-info" type="button" id="updateBtn">수정</button>
					<button class="btn btn-warning" type="button" id="deleteBtn">삭제</button>
				</div>
			</div>
<script type="text/javascript">
$(document).ready(function(){
	
	$("#createBtn").on("click", funtion(){
		
	});
	
	$("#updateBtn").on("click", fucntion(){
		
	});
	
	$("#deleteBtn").on("click", fucntion(){
		
	});
	
});
</script>
		<div class="col-md-6">
			<div class="carousel slide" id="carousel-9196">
				<div class="carousel-inner">
					<div class="item active">
						<img alt="Carousel Bootstrap First"
							src="http://lorempixel.com/output/sports-q-c-1600-500-1.jpg" />
					</div>
					<div class="item">
						<img alt="Carousel Bootstrap Second"
							src="http://lorempixel.com/output/sports-q-c-1600-500-2.jpg" />
					</div>
					<div class="item">
						<img alt="Carousel Bootstrap Third"
							src="http://lorempixel.com/output/sports-q-c-1600-500-3.jpg" />
					</div>
				</div>
				<a class="left carousel-control" href="#carousel-9196" data-slide="prev"> 
				<span class="glyphicon glyphicon-chevron-left"></span></a>
				<a class="right carousel-control" href="#carousel-9196" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
				<p class="text-left text-success lead"></p>
				<h3>회의란 무엇인가?</h3>
				<h4>회의를 하기 위해서는 필요한 것들에 대해서 알아보도록 하겠습니다.</h4>
			</div>
		</div>
	</div>
	<button id="mimin-mobile-menu-opener" class="animated rubberBand btn btn-circle btn-danger">
		<span class="fa fa-bars"></span>
	</button>
</body>

<script src="../resources/miminium-master/asset/js/jquery.min.js"></script>
<script src="../resources/miminium-master/asset/js/jquery.ui.min.js"></script>
<script src="../resources/miminium-master/asset/js/bootstrap.min.js"></script>
<script
	src="../resources/miminium-master/asset/js/plugins/icheck.min.js"></script>
<script
	src="../resources/miminium-master/asset/js/plugins/moment.min.js"></script>
<script
	src="../resources/miminium-master/asset/js/plugins/mediaelement-and-player.min.js"></script>
<script
	src="../resources/miminium-master/asset/js/plugins/jquery.nicescroll.js"></script>
<script src="../resources/miminium-master/asset/js/main.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('input').iCheck({
			checkboxClass : 'icheckbox_flat-red',
			radioClass : 'iradio_flat-red'
		});
		$('video,audio').mediaelementplayer({
			alwaysShowControls : true,
			videoVolume : 'vertical',
			features : [ 'playpause', 'progress', 'volume', 'fullscreen' ]
		});
	});
</script>

</html>