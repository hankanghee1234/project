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
	<div class="container-fluid" id="content">
		<div class="col-md-12 container-fluid-wrapper">
			<div class="row">
				<div class="col-md-8 container-fluid-cover-wrap" align="center">
					<h3>보유 PPT 목록</h3>
					<nav class="navbar navbar-default navbar-inverse" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">My PPT List</a>
					</div>

					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">주제<strong class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li><a href="#">발표자</a></li>
									<li><a href="#">발표주제</a></li>
									<li><a href="#">발표내용</a></li>
									<li class="divider"></li>
									<li><a href="#">등록일자</a></li>
									<li class="divider"></li>
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
					<table class="table table-hover table-condensed table-bordered">
						<thead>
							<tr>
								<th>번호</th>
								<th>발표자료</th>
								<th>발표자</th>
								<th>등록일</th>
							</tr>
						</thead>
						<tbody>
							<tr class="info">
								<td>1</td>
								<td><a href="#">PPT 자료</a></td>
								<td>이태환</td>
								<td>2014-10-10</td>
							</tr>
							<tr class="active">
								<td>2</td>
								<td><a href="#">PPT 자료2</a></td>
								<td>한강희</td>
								<td>2015-10-10</td>
							</tr>
							<tr class="success">
								<td>3</td>
								<td><a href="#">PPT 자료3</a></td>
								<td>정재관</td>
								<td>2011-11-11</td>
							</tr>
							<tr class="warning">
								<td>4</td>
								<td><a href="#">PPTㅋㅋㅋㅋ</a></td>
								<td>차영진</td>
								<td>2016-05-12</td>
							</tr>
							<div class="btn-group">
								<button class="btn btn-default" type="button">PPT 만들기</button>
								<button class="btn btn-default" type="button">PPT 수정하기</button>
								<button class="btn btn-default" type="button">PPT 삭제</button>
							</div>
						</tbody>
					</table>

					<!-- carousel 적용 -->
					<div class="col-md-4">
						<div class="carousel slide" id="carousel-199518">
							<ol class="carousel-indicators">
								<li data-slide-to="0" data-target="#carousel-199518"></li>
								<li data-slide-to="1" data-target="#carousel-199518"
									class="active"></li>
								<li data-slide-to="2" data-target="#carousel-199518"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item">
									<img alt="Carousel Bootstrap First"
										src="http://lorempixel.com/output/sports-q-c-1600-500-1.jpg" />
									<div class="carousel-caption"></div>
								</div>

								<div class="item active">
									<img alt="Carousel Bootstrap Second"
										src="http://lorempixel.com/output/sports-q-c-1600-500-2.jpg" />
									<div class="carousel-caption"></div>
								</div>
								<div class="item">
									<img alt="Carousel Bootstrap Third"
										src="http://lorempixel.com/output/sports-q-c-1600-500-3.jpg" />
									<div class="carousel-caption"></div>
								</div>
							</div>
							<a class="left carousel-control" href="#carousel-199518"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left"></span></a> <a
								class="right carousel-control" href="#carousel-199518"
								data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right"></span></a>
						</div>
						<dl>
							<dt>프레젠테이션 제목..</dt>
							<dd>PPT 설명..</dd>
							<dt>PPT 소주제..</dt>
							<dd>PPT 소주제 내용,...</dd>
							<dd>PPT 소주제 내용2,...</dd>
							<dt>PPT 첨삭.. or 부가설명..</dt>
							<dd>내용...</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end: content -->

	<button id="mimin-mobile-menu-opener"
		class="animated rubberBand btn btn-circle btn-danger">
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