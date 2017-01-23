<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<meta name="description" content="Miminium Admin Template v.1">
<meta name="author" content="Isna Nur Azis">
<meta name="keyword" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- start: Css -->
<link rel="stylesheet" type="text/css"
	href="../resources/miminium-master/asset/css/bootstrap.min.css">

<!-- plugins -->
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
<!-- end: Css -->

<link rel="shortcut icon"
	href="../resources/miminium-master/asset/img/logomi.png">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
</head>


<style>
body {
	/* background-image: url("../resources/conference1.jpg"); */
	background-color: black;
	background-size: cover;
	background-repeat: no-repeat;
}

.modal-content {
	position: relative;
}
</style>

<body>

	<!-- start: Content -->
	<div id="content" class="profile-v1">
		<div class="col-md-10 col-sm-10 profile-v1-wrapper" style="color:">
			<div class="col-md-12  profile-v1-cover-wrap"
				style="padding-right: 0px;">
				<div class="profile-v1-pp">
					<img src="../resources/miminium-master/asset/img/avatar.jpg">


					<div class="presenter-imformatiop"
						style="text-align: left; position: absolute;">
						<h3 class="media-heading" style="color: yellow;">Presenter
							Name</h3>
						<h3 class="media-heading" style="color: yellow;">
							Email :<a href="" class="media-heading">abcd1234@naver.com</a>
						</h3>
					</div>

					<button
						class="reset btn ripple-infinite btn-round btn-3d btn-default btn-lg"
						style="position: relative;">
						<div>
							<span class="icons icon-settings"></span>
						</div>
					</button>
					<div class="modal-content">
						<div class="modal-header" style="height: 50px;">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>

							<h4>회원정보 수정</h4>
							<h2 class="modal-title">
								<i class="icon-user icons"></i>
							</h2>
						</div>

						<div class="panel-body" style="text-align: center;">
							<div class="modal-body col-md-12" style="line-height: 10px;">

								<!-- 이름 -->
								<div class="form-group">
									<label class="col-sm-2 control-label text-right"></label>
									<div class="col-sm-10">
										<input type="name" class="form-control"
											placeholder="이름을 입력해 주십시오.">
									</div>
								</div>

								<!-- 아이디 -->
								<div class="form-group">
									<label class="col-sm-2 control-label text-right"></label>
									<div class="col-sm-10">
										<input type="id" class="form-control"
											placeholder="아이디를 입력해주십시오.">
									</div>
								</div>

								<!-- 비밀번호 -->
								<div class="form-group">
									<label class="col-sm-2 control-label text-right"></label>
									<div class="col-sm-10">
										<input type="password" class="form-control"
											placeholder="비밀번호를 입력해 주십시오.">
									</div>
								</div>

								<!-- 이메일 -->
								<div class="form-group">
									<label class="col-sm-2 control-label text-right"></label>
									<div class="col-sm-10">
										<input type="email" class="form-control"
											placeholder="이메일을 입력해 주십시오.">
									</div>
								</div>

							</div>

							<!-- 							프로파일 삽입 공간
							<div class="panel-body"
								style="position: relative; border: 1px solid black;">프로파일
								첨부 장소</div> -->

							<!-- 수정확인 버튼 -->
							<button class="btn btn-primary btn-3d btn-login">
								Already a User?</button>
						</div>

						<div class="modal-footer"></div>
					</div>

				</div>

				<div class="col-md-12 profile-v1-cover">
					<img src="../resources/miminium-master/asset/img/bg1.jpg"
						class="img-responsive" style="height: 300px;">
				</div>
			</div>

			<!-- 프로필 옆 버튼 공간 추가-->
			<!-- <div class="col-md-3 col-sm-12 padding-0 profile-v1-right">
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

			</div> -->
		</div>



		<div class="col-md-10 col-sm-10 profile-v1-body">
			<div class="col-md-6">
				<div class="panel">
					<div class="panel-body">
						<h3>PPT LIST</h3>
						<div class="col-md-12 padding-0" style="padding-bottom: 20px;">
							<div class="col-md-8" style="padding-left: 10px;">
								<!-- 검색 조건 처리 -->
								<select name="searchType">
									<option value="n" <c:out value="${cri.searchType == null?'selected':''}"/>>---</option>
									<option value="u" <c:out value="${cri.searchType eq 'u'?'selected':''}"/>>USERID</option>
									<option value="k" <c:out value="${cri.searchType eq 'k'?'selected':''}"/>>PPT_KIND</option>
									<option value="t" <c:out value="${cri.searchType eq 't'?'selected':''}"/>>PPT_TITLE</option>
									<option value="d" <c:out value="${cri.searchType eq 'd'?'selected':''}"/>>PPT_DESC</option>
									<option value="uk" <c:out value="${cri.searchType eq 'uk'?'selected':''}"/>>USERID OR PPT_KIND</option>
									<option value="kt" <c:out value="${cri.searchType eq 'kt'?'selected':''}"/>>PPT_KIND OR PPT_TITLE</option>
									<option value="td" <c:out value="${cri.searchType eq 'td'?'selected':''}"/>>PPT_TITLE OR PPT_DESC</option>
								</select>	
							</div>
						</div>
							<div class="col-md-6">
								<div class="col-lg-6">
									<div class="input-group">
										<div class="input-group" style="width:250px;">
											<input type="text" class="form-control" name="keyword" id="keywordInput" value="${cri.keyword}">				
										</div>
										<!-- /input-group -->
										<div class="input-group-btn">
											<button type="button" class="btn btn-primary" id="searchBtn">검색</button>
										</div>
										<!-- /btn-group -->
									</div>
									<!-- /input-group -->
								</div>
								<!-- /.col-lg-6 -->
							</div>
						</div>
					
						<!-- ppt list 작성-->
						<div class="responsive-table">
							<table class="table table-striped table-bordered" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>
											<div class="icheckbox_flat-red" style="position: relative;">
												<input type="checkbox" class="icheck" name="checkbox1"
													style="position: absolute; opacity: 0;">
												<ins class="iCheck-helper"
													style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
											</div>
										</th>
										<th>PPT번호</th>
										<th>PPT등록번호</th>
										<th>발표자</th>
										<th>발표분야</th>
										<th>제목</th>
										<th>내용</th>
									</tr>
								</thead>
								<tbody>
								<!-- ppt 리스트 보여주기 -->
								<c:forEach items="${list}" var="PptVO">
									<ul class="List">
										<tr>
											<td>
												<div class="icheckbox_flat-red" style="position: relative;">
													<input type="checkbox" class="icheck" name="checkbox1"
														style="position: absolute; opacity: 0;">
													<ins class="iCheck-helper"
														style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
												</div>
											</td>
											<td>${PptVO.pptno}</td>
											<td>${PptVO.fno}</td>
											<td>${PptVO.userid}</td>
											<td>${PptVO.ppt_kind}</td>
											<td><a href="#">${PptVO.ppt_title}</a></td>
											<td>${PptVO.ppt_desc}</td>
										</tr>
									</ul>
								</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- list paging 처리 -->
						<div class="col-md-8">
							<ul class="pagination pull-right">
								<c:if test="${pageMaker.prev}">
									<li><a
										href="myPage${pageMaker.makeSearch(pageMaker.startPage - 1)}"
										aria-label="Previous"><span aria-hidden="true">«</span></a></li>
								</c:if>
								<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
									<li class="active" <c:out value="${pageMaker.cri.page == idx?'class = active':''}"/>>
										<a href="myPage${pageMaker.makeSearch(idx)}">${idx}</a>	
									</li>
								</c:forEach>
								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="myPage${pageMaker.makeSearch(pageMaker.endPage + 1)}"
										aria-label="Next"><span aria-hidden="true">»</span></a></li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="panel box-v3">
				<h4>Select Option</h4>
					<div class="panel box-v4">
						<div class="panel-body">
							<button class=" btn btn-circle btn-3d btn-sm btn-primary"
								value="primary">
								<span class="fa fa-dot-circle-o"></span>
							</button>

							<button class=" btn btn-circle btn-3d btn-sm btn-primary"
								value="primary">
								<span class="fa fa-times"></span>
							</button>

							<button class=" btn btn-circle btn-3d btn-sm btn-primary"
								value="primary">
								<span class="fa fa-gear"></span>
							</button>

							<button class=" btn btn-circle btn-3d btn-sm btn-primary"
								value="primary" onclick="location.href='createPage'">
								<span class="fa fa-paypal"></span>
							</button>
						</div>
					</div>

					<div class="panel box-v4">
						<div class="panel-heading bg-white border-none">
							<h4><span class="icon-notebook icons"></span> PPT Imformation</h4>
						</div>
						<div class="panel-body">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div id="carousel-example-generic" class="carousel slide"
									data-ride="carousel">
									<ol class="carousel-indicators">
										<li data-target="#carousel-example-generic" data-slide-to="0"
											class=""></li>
										<li data-target="#carousel-example-generic" data-slide-to="1"
											class="active"></li>
										<li data-target="#carousel-example-generic" data-slide-to="2"
											class=""></li>
									</ol>
									<div class="carousel-inner">
										<div class="item">
											<img class="img-responsive"
												data-src="holder.js/900x500/auto/#777:#555/text:First slide"
												alt="First slide"
												src="../resources/miminium-master/asset/img/bg1.jpg">
										</div>
										<div class="item active">
											<img class="img-responsive"
												data-src="holder.js/900x500/auto/#666:#444/text:Second slide"
												alt="Second slide"
												src="../resources/miminium-master/asset/img/bg1.jpg">
										</div>
										<div class="item">
											<img class="img-responsive"
												data-src="holder.js/900x500/auto/#555:#333/text:Third slide"
												alt="Third slide"
												src="../resources/miminium-master/asset/img/bg1.jpg">
										</div>
									</div>
									<a class="left carousel-control"
										href="#carousel-example-generic" role="button"
										data-slide="prev"> <span
										class="glyphicon glyphicon-chevron-left"></span>
									</a> <a class="right carousel-control"
										href="#carousel-example-generic" role="button"
										data-slide="next"> <span
										class="glyphicon glyphicon-chevron-right"></span>
									</a>
								</div>
								<div class="panel-body padding-0">
							<div class="col-md-12 col-xs-12 col-md-12 padding-0 box-v4-alert">
								<h2>Checking Your Server!</h2>
								<p>Daily Check on Server status, mostly looking at servers
									with alerts/warnings</p>
								<b><span class="icon-clock icons"></span> Today at 15:00</b>
							</div>
							<div class="calendar fc fc-ltr fc-unthemed">
								<div class="fc-toolbar"></div>
							</div>
						</div>			
					</div>
				</div>
			</div>
		</div>
	</div>

				<!--  <div class="media">
                                    <div class="media-left">
                                        <span class="icon-pie-chart icons" style="font-size:2em;"></span>
                                    </div>
                                    <div class="media-body">
                                      <h5 class="media-heading">UI/UX Development</h5>
                                        <div class="progress progress-mini">
                                          <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="19" aria-valuemin="0" aria-valuemax="100" style="width: 19%;">
                                            <span class="sr-only">60% Complete</span>
                                          </div>
                                        </div>
                                    </div>
                                  </div>

                                  <div class="media">
                                    <div class="media-left">
                                        <span class="icon-energy icons" style="font-size:2em;"></span>
                                    </div>
                                    <div class="media-body">
                                      <h5 class="media-heading">Server Optimation</h5>
                                        <div class="progress progress-mini">
                                          <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100" style="width: 55%;">
                                            <span class="sr-only">60% Complete</span>
                                          </div>
                                        </div>
                                    </div>
                                  </div>

                                  <div class="media">
                                    <div class="media-left">
                                        <span class="icon-user icons" style="font-size:2em;"></span>
                                    </div>
                                    <div class="media-body">
                                      <h5 class="media-heading">User Status</h5>
                                        <div class="progress progress-mini">
                                          <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width:20%;">
                                            <span class="sr-only">60% Complete</span>
                                          </div>
                                        </div>
                                    </div>
                                  </div>

                                   <div class="media">
                                    <div class="media-left">
                                        <span class="icon-fire icons" style="font-size:2em;"></span>
                                    </div>
                                    <div class="media-body">
                                      <h5 class="media-heading">Firewall Status</h5>
                                        <div class="progress progress-mini">
                                          <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%;">
                                            <span class="sr-only">60% Complete</span>
                                          </div>
                                        </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="panel-footer bg-white border-none">
                                    <center>
                                      <input type="button" value="download as pdf" class="btn btn-danger box-shadow-none">
                                    </center>
                                </div>
                              </div> -->
			</div>
	<!-- end: content -->

	<button id="mimin-mobile-menu-opener"
		class="animated rubberBand btn btn-circle btn-danger">
		<span class="fa fa-bars"></span>
	</button>
	<!-- end: Mobile -->
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

<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>
		
<!-- 검색 조건 jQuery -->
<script>
	$(document).ready(function() {
		$("#searchBtn").on("click",function(event) {
			self.location = "myPage"+ '${pageMaker.makeQuery(1)}'+ "&searchType="
							+ $("select option:selected").val()+ "&keyword="
							+ $('#keywordInput').val();
		});

	});
</script>	

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


<script>
	$(".modal-content").hide();

	$(".close").click(function() {
		$(".modal-content").hide("slow");
	});

	$(".reset").click(function() {
		$(".modal-content").toggle("slow");

	});
</script>

</html>