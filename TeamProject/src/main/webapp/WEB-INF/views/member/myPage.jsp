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

	<!-- start: Content -->
	<div class="container-fluid" id="content">
		<div class="row">
			<div class="col-md-12 container-fluid-wrapper">
				<div class="row">
					<div class="col-md-8 container-fluid-cover-wrap" align="center"
				style="padding-right: 0px;" >
						<h3>PPT LIST</h3>
						<nav class="navbar navbar-default navbar-inverse" role="navigation">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#">Brand</a>
						</div>

						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a href="#">Link</a></li>
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
									<td><a href="#">TB - Monthly</a></td>
									<td>01/04/2012</td>
									<td>Default</td>
								</tr>
								<tr class="active">
									<td>2</td>
									<td><a href="#">TB - Monthly</a></td>
									<td>01/04/2012</td>
									<td>Approved</td>
								</tr>
								<tr class="success">
									<td>3</td>
									<td><a href="#">TB - Monthly</a></td>
									<td>02/04/2012</td>
									<td>Declined</td>
								</tr>
								<tr class="warning">
									<td>4</td>
									<td><a href="#">TB - Monthly</a></td>
									<td>03/04/2012</td>
									<td>Pending</td>
								</tr>
								<tr class="danger">
									<td>5</td>
									<td><a href="#">TB - Monthly</a></td>
									<td>04/04/2012</td>
									<td>Call in to confirm</td>
								</tr>
							</tbody>
						</table>
						<div class="btn-group">
							<button class="btn btn-default" type="button">
								<em class="glyphicon glyphicon-align-left"></em> Left
							</button>
							<button class="btn btn-default" type="button">
								<em class="glyphicon glyphicon-align-center"></em> Center
							</button>
							<button class="btn btn-default" type="button">
								<em class="glyphicon glyphicon-align-right"></em> Right
							</button>
							<button class="btn btn-default" type="button">
								<em class="glyphicon glyphicon-align-justify"></em> Justify
							</button>
						</div>
					</div>
					<!-- carousel 적용 -->
					<div class="col-md-4">
						<div class="carousel slide" id="carousel-199518">
							<ol class="carousel-indicators">
								<li data-slide-to="0" data-target="#carousel-199518"></li>
								<li data-slide-to="1" data-target="#carousel-199518" class="active"></li>
								<li data-slide-to="2" data-target="#carousel-199518"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item">
									<img alt="Carousel Bootstrap First"
										src="http://lorempixel.com/output/sports-q-c-1600-500-1.jpg" />
									<div class="carousel-caption">
									</div>
								</div>
								<div class="item active">
									<img alt="Carousel Bootstrap Second"
										src="http://lorempixel.com/output/sports-q-c-1600-500-2.jpg" />
									<div class="carousel-caption">
										
									</div>
								</div>
								<div class="item">
									<img alt="Carousel Bootstrap Third"
										src="http://lorempixel.com/output/sports-q-c-1600-500-3.jpg" />
									<div class="carousel-caption">
										
									</div>
								</div>
							</div>
							<a class="left carousel-control" href="#carousel-199518" data-slide="prev">
								<span class="glyphicon glyphicon-chevron-left"></span></a> 
								<a class="right carousel-control" href="#carousel-199518" data-slide="next">
								<span class="glyphicon glyphicon-chevron-right"></span></a>
						</div>
						<dl>
							<dt>Description lists</dt>
							<dd>A description list is perfect for defining terms.</dd>
							<dt>Euismod</dt>
							<dd>Vestibulum id ligula porta felis euismod semper eget
								lacinia odio sem nec elit.</dd>
							<dd>Donec id elit non mi porta gravida at eget metus.</dd>
							<dt>Malesuada porta</dt>
							<dd>Etiam porta sem malesuada magna mollis euismod.</dd>
							<dt>Felis euismod semper eget lacinia</dt>
							<dd>Fusce dapibus, tellus ac cursus commodo, tortor mauris
								condimentum nibh, ut fermentum massa justo sit amet risus.</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%-- <div id="content" class="profile-v1">
		<div class="col-md-10 col-sm-10 profile-v1-wrapper">
			<div class="col-md-9  profile-v1-cover-wrap"
				style="padding-right: 0px;">
				<div class="profile-v1-pp">
					<img src="../resources/miminium-master/asset/img/avatar.jpg">
					<h3><input type="hidden" name="userid" value="${param.userid}"></h3>
					<h3><input type="hidden" name="email" value="${param.email}"></h3>
					<h3><input type="hidden" name="uname" value="${param.uname}"></h3>
				</div>

				<div class="col-md-12 profile-v1-cover">
					<img src="../resources/miminium-master/asset/img/bg1.jpg"
						class="img-responsive">
				</div>
			</div>
			<div class="col-md-3 col-sm-12 padding-0 profile-v1-right">

				<div class="col-md-6 col-sm-4 profile-v1-right-wrap padding-0">
					<div
						class="col-md-12 padding-0 sub-profile-v1-right text-center sub-profile-v1-right1">
						<button class=" btn btn-circle btn-3d btn-lg btn-primary"
							value="primary">

							<span class="icons icon-settings"></span>

						</button>
					</div>
				</div>

				<div class="col-md-6 col-sm-4 profile-v1-right-wrap padding-0">
					<div
						class="col-md-12 sub-profile-v1-right text-center sub-profile-v1-right2">
						<button class=" btn btn-circle btn-3d btn-lg btn-primary"
							value="primary">
							<span class="fa fa-paper-plane-o"></span>
						</button>
					</div>
				</div>

				<div class="col-md-12 col-sm-4 profile-v1-right-wrap padding-0">
					<div
						class="col-md-12 sub-profile-v1-right text-center sub-profile-v1-right3">
						<h1>82001</h1>
						<p>Post</p>
					</div>
				</div>

			</div>
		</div>

		<div class="col-md-12 col-sm-12 profile-v1-body">

			<div class="col-md-5">
				<div class="panel">
					<div class="panel-body">
						<div class="col-md-12 padding-0" style="padding-bottom: 20px;">
							<div class="col-md-6" style="padding-left: 10px;">
								<div class="icheckbox_flat-red" style="position: relative;">
									<input type="checkbox" class="icheck pull-left"
										name="checkbox1" style="position: absolute; opacity: 0;">
									<ins class="iCheck-helper"
										style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
								</div>
								<select>
									<option>Delete</option>
									<option>Ignore</option>
									<option>Cancel</option>
								</select>
							</div>
							<div class="col-md-6">
								<div class="col-lg-12">
									<div class="input-group">
										<input type="text" class="form-control" aria-label="...">
										<div class="input-group-btn">
											<button type="button" class="btn btn-default dropdown-toggle"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												Search<span class="caret"></span>
											</button>
											<ul class="dropdown-menu dropdown-menu-right">
												<li><a href="#">Action</a></li>
												<li><a href="#">Another action</a></li>
												<li><a href="#">Something else here</a></li>
												<li role="separator" class="divider"></li>
												<li><a href="#">Separated link</a></li>
											</ul>
										</div>
										<!-- /btn-group -->
									</div>
									<!-- /input-group -->
								</div>
								<!-- /.col-lg-6 -->
							</div>
						</div>
						<div class="responsive-table">

							<table class="table table-striped table-bordered" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th><div class="icheckbox_flat-red"
												style="position: relative;">
												<input type="checkbox" class="icheck" name="checkbox1"
													style="position: absolute; opacity: 0;">
												<ins class="iCheck-helper"
													style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
											</div></th>
										<th>Name</th>
										<th>Position</th>
										<th>Office</th>
										<th>Age</th>
										<th>Start date</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><div class="icheckbox_flat-red"
												style="position: relative;">
												<input type="checkbox" class="icheck" name="checkbox1"
													style="position: absolute; opacity: 0;">
												<ins class="iCheck-helper"
													style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
											</div></td>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>

									</tr>
									<tr>
										<td><div class="icheckbox_flat-red"
												style="position: relative;">
												<input type="checkbox" class="icheck" name="checkbox1"
													style="position: absolute; opacity: 0;">
												<ins class="iCheck-helper"
													style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
											</div></td>
										<td>Garrett Winters</td>
										<td>Accountant</td>
										<td>Tokyo</td>
										<td>63</td>
										<td>2011/07/25</td>

									</tr>
									<tr>
										<td><div class="icheckbox_flat-red"
												style="position: relative;">
												<input type="checkbox" class="icheck" name="checkbox1"
													style="position: absolute; opacity: 0;">
												<ins class="iCheck-helper"
													style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
											</div></td>
										<td>Ashton Cox</td>
										<td>Junior Technical Author</td>
										<td>San Francisco</td>
										<td>66</td>
										<td>2009/01/12</td>

									</tr>
									<tr>
										<td><div class="icheckbox_flat-red"
												style="position: relative;">
												<input type="checkbox" class="icheck" name="checkbox1"
													style="position: absolute; opacity: 0;">
												<ins class="iCheck-helper"
													style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
											</div></td>
										<td>Cedric Kelly</td>
										<td>Senior Javascript Developer</td>
										<td>Edinburgh</td>
										<td>22</td>
										<td>2012/03/29</td>

									</tr>
									<tr>
										<td><div class="icheckbox_flat-red"
												style="position: relative;">
												<input type="checkbox" class="icheck" name="checkbox1"
													style="position: absolute; opacity: 0;">
												<ins class="iCheck-helper"
													style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
											</div></td>
										<td>Airi Satou</td>
										<td>Accountant</td>
										<td>Tokyo</td>
										<td>33</td>
										<td>2008/11/28</td>

									</tr>
									<tr>
										<td><div class="icheckbox_flat-red"
												style="position: relative;">
												<input type="checkbox" class="icheck" name="checkbox1"
													style="position: absolute; opacity: 0;">
												<ins class="iCheck-helper"
													style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
											</div></td>
										<td>Brielle Williamson</td>
										<td>Integration Specialist</td>
										<td>New York</td>
										<td>61</td>
										<td>2012/12/02</td>

									</tr>
									<tr>
										<td><div class="icheckbox_flat-red"
												style="position: relative;">
												<input type="checkbox" class="icheck" name="checkbox1"
													style="position: absolute; opacity: 0;">
												<ins class="iCheck-helper"
													style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
											</div></td>
										<td>Herrod Chandler</td>
										<td>Sales Assistant</td>
										<td>San Francisco</td>
										<td>59</td>
										<td>2012/08/06</td>

									</tr>
									<tr>
										<td><div class="icheckbox_flat-red"
												style="position: relative;">
												<input type="checkbox" class="icheck" name="checkbox1"
													style="position: absolute; opacity: 0;">
												<ins class="iCheck-helper"
													style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
											</div></td>
										<td>Rhona Davidson</td>
										<td>Integration Specialist</td>
										<td>Tokyo</td>
										<td>55</td>
										<td>2010/10/14</td>

									</tr>
									<tr>
										<td><div class="icheckbox_flat-red"
												style="position: relative;">
												<input type="checkbox" class="icheck" name="checkbox1"
													style="position: absolute; opacity: 0;">
												<ins class="iCheck-helper"
													style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
											</div></td>
										<td>Colleen Hurst</td>
										<td>Javascript Developer</td>
										<td>San Francisco</td>
										<td>39</td>
										<td>2009/09/15</td>

									</tr>
									<tr>
										<td><div class="icheckbox_flat-red"
												style="position: relative;">
												<input type="checkbox" class="icheck" name="checkbox1"
													style="position: absolute; opacity: 0;">
												<ins class="iCheck-helper"
													style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
											</div></td>
										<td>Sonya Frost</td>
										<td>Software Engineer</td>
										<td>Edinburgh</td>
										<td>23</td>
										<td>2008/12/13</td>

									</tr>
								</tbody>
							</table>
						</div>
						<!--                   <div class="col-md-6" style="padding-top:20px;">
                    <span>showing 0-10 of 30 items</span>
                  </div> -->
						<div class="col-md-8">
							<ul class="pagination pull-right">
								<li><a href="#" aria-label="Previous"> <span
										aria-hidden="true">«</span>
								</a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#" aria-label="Next"> <span
										aria-hidden="true">»</span>
								</a></li>
							</ul>
						</div>
					</div>
				</div>

			</div>

			<div class="col-md-5">
				<div class="panel box-v3">
					<div class="panel-heading bg-white border-none">
						<h4>Report</h4>
					</div>
					<div class="panel-body">


						<button class=" btn btn-circle btn-3d btn-lg btn-primary"
							value="primary">
							<span class="fa fa-dot-circle-o"></span>

						</button>

						<button class=" btn btn-circle btn-3d btn-lg btn-primary"
							value="primary">
							<span class="fa fa-times"></span>
						</button>

						<button class=" btn btn-circle btn-3d btn-lg btn-primary"
							value="primary">
							<span class="fa fa-gear"></span>

						</button>

						<button class=" btn btn-circle btn-3d btn-lg btn-primary"
							value="primary">
							<span class="fa fa-paypal"></span>

						</button>
					</div>
				</div>
			</div>
		</div>
	</div> --%>
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