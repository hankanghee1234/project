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

<style>
body {
	background-image: url("../resources/Theme/assets/img/회사.jpg");
	background-size: cover;
	background-repeat: no-repeat;
}

.modal-content {
	position: relative;
}

.fileDrop {
   width: 80px;
   height: 80px;
   border: 1px groove blue;
}

</style>

<body>

	<!-- start: Content -->
	<div id="content" class="profile-v1">
		<div class="col-md-10 col-sm-10 profile-v1-wrapper" style="color:">
			<div class="col-md-12  profile-v1-cover-wrap"
				style="padding-right: 0px;">
				<div class="profile-v1-pp">
					<img src="show?name=${read.uimg}">
					<div class="presenter-imformatiop"
						style="text-align: left; position: absolute;">
						<!-- 유저 정보 출력 -->
						<h3 style="color: blue;">${read.username}</h3>
						<h3 style="color: yellow;">${read.email}</h3>
					</div>

					<button
						class="reset btn ripple-infinite btn-round btn-3d btn-default btn-lg"
						style="position: relative;">
						<div>
							<span class="glyphicon glyphicon-user"></span>
						</div>
					</button>

					<button
						class="secession btn ripple-infinite btn-round btn-3d btn-default btn-lg"
						style="position: relative;">
						<div>
							<span class="glyphicon glyphicon-remove"></span>
						</div>
					</button>
					             
	                <!-- 로그아웃  -->
	               <button id="logout"
	               		class="secession btn ripple-infinite btn-round btn-3d btn-default btn-lg"
						style="position: relative;">
	               		<div>
	               			<span class="glyphicon glyphicon-off"></span>
	               		</div>
	               	</button>
	               <!-- HOME -->
	               <button id="fpageBtn"
	               class="secession btn ripple-infinite btn-round btn-3d btn-default btn-lg"
						style="position: relative;">
						<div>
							<span class="glyphicon glyphicon-home"></span>
						</div>	
					</button>
	               
	               	<!-- 회원 정보 수정 하기 -->
					<div class="modal-content modal-reset">
						<div class="modal-header" style="height: 50px;">
							<h4>회원정보 수정</h4>
							<h2 class="modal-title">
								<i class="icon-user icons"></i>
							</h2>
						</div>
						<div class="panel-body" style="text-align: center;">
							<div class="modal-body col-md-12" style="line-height: 10px;">
								<form role="form" action="updatePost" method="post">
									<!-- 아이디는 고정값으로 보여주기 -->
									<div class="form-group">
										<label class="col-sm-2 control-label text-right"></label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="userid"
												readonly="readonly" value="${read.userid}">
										</div>
									</div>
									<!-- 비밀번호 -->
									<div class="form-group">
										<label class="col-sm-2 control-label text-right"></label>
										<div class="col-sm-10">
											<input type="password" class="form-control" name="userpw"
												placeholder="패스워드 수정" value="${MemberVO.userpw}">
										</div>
									</div>
									<!-- 이메일 -->
									<div class="form-group">
										<label class="col-sm-2 control-label text-right"></label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="email"
												placeholder="이메일 수정" value="${MemberVO.email}">
										</div>
									</div>
									<!-- 이름 -->
									<div class="form-group">
										<label class="col-sm-2 control-label text-right"></label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="username"
												placeholder="이름 수정" value="${MemberVO.username}">
										</div>
									</div>
									<p><input type="hidden" name="uimg" id="imgsrc"></p>
			                           <div class='fileDrop'></div>                           
			                           <div class="uploadedList"></div>	
								</form>
							</div>
							<!-- 수정확인 버튼 -->
							<button class="btn btn-primary" id="updateBtn">수정</button>
							<button class="btn btn-warning" id="cancelBtn"
								data-dismiss="modal" aria-label="Close">취소</button>
						</div>
						<div class="modal-footer"></div>
					</div>
					<!-- /.회원 정보 수정 하기 -->
					<!-- 회원 정보 삭제 하기 -->
					<div class="modal-content modal-secession">
						<div class="modal-header" style="height: 50px;">
							<h4>회원탈퇴 확인</h4>
							<h2 class="modal-title">
								<i class="icon-user icons"></i>
							</h2>
						</div>
						<div class="panel-body" style="text-align: center;">
							<div class="modal-body col-md-12" style="line-height: 10px;">
								<h3>정말로 회원을 탈퇴하시 겠습니까?</h3>
							</div>
							<button class="btn btn-danger" id="deleteBtn" value="primary">삭제</button>
							<button class="btn btn-warning" id="dangerBtn"
								data-dismiss="modal" aria-label="Close">취소</button>
						</div>
						<div class="modal-footer"></div>
					</div>
				</div>
				<!-- /.회원 정보 삭제 하기 -->
				<div class="col-md-12 profile-v1-cover">
					<img src="../resources/miminium-master/asset/img/bg1.jpg"
						class="img-responsive" style="height: 300px;">
				</div>
			</div>
		</div>
		<!-- 검색 조건 처리 -->
		<div class="col-md-12 col-sm-12 profile-v1-body">
			<div class="panel">
				<div class="col-md-5">
					<div class="panel">
						<div class="panel-body">
							<h3>PPT LIST</h3>
							<div class="col-md-12 padding-0">
								<div class="col-md-8" style="padding-left: 2px;">
									<!-- 검색 조건 처리 -->
									<form method="get" id="sf">
         								<input id="spageHidden" type="hidden" name="page" value="${pageMaker.current}">
        								<input id="fnoHidden" type="hidden" name="fno" value="2">
									<select name="searchType">
										<option value="n"
											<c:out value="${cri.searchType == null?'selected':''}"/>>---</option>
										<option value="k"
											<c:out value="${cri.searchType eq 'k'?'selected':''}"/>>발표분야</option>
										<option value="t"
											<c:out value="${cri.searchType eq 't'?'selected':''}"/>>제목</option>
									</select>
									<!-- input-group -->
									<div class="input-group">
										<div class="input-group-text">
											<input type="text" class="form-control" name="keyword"
												id="keywordInput" value="${cri.keyword}"> 
										</div>
										<!-- /input-group -->
										 
										<!-- btn-group -->
										<div class="input-group-btn">
											<button type="button" class="btn btn-secondary" 
											id="searchBtn">검색</button>
										</div>
										<!-- /btn-group -->
									</div>
									</form>
								</div>
							</div>
						</div>
						<!-- ppt list 출력-->
						<div class="panel-body">
							<div class="responsive-table">
								<table class="table table-bordered table-hover" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>번호</th>
											<th>발표분야</th>
											<th>제목</th>
										</tr>
									</thead>
									<tbody>
									<c:if test="${empty pptUserList}"> 
									<tr>
								<th colspan="3">데이터가 없습니다. 
										 <button id="moveBtn" > 처음 페이지로</button> 
										 </th>
									</tr>
									</c:if>
										<!-- 로그인한 정보에 따른 ppt 리스트 보여주기 -->
										<c:forEach items="${pptUserList}" var="PptVO">
											<ul class="pptUserList">
												<tr id="${PptVO.fno}">
													<th>${PptVO.fno}</th>
													<th>${PptVO.ppt_kind}</th>
													<th><a class="title-tag" id="${PptVO.fno}"
														href="#">${PptVO.ppt_title}</a></th>
												</tr>
											</ul>
										</c:forEach>
										 <!-- /.로그인한 정보에 따른 ppt 리스트 보여주기 -->	 								
									</tbody>
								</table>
							</div>
							<!-- list paging 처리 -->
						<div class="col-md-8">
							<ul class="pagination pull-right">
								<c:if test="${pageMaker.prev ne 0}">
									<li id="pagePrev"><a href="${pageMaker.prev}">이전</a></li>
								</c:if>	 
								<c:forEach begin="${pageMaker.firstPage}" end="${pageMaker.lastPage}" var='idx'>
									<li class='active' id='pageLi'><a href='${idx}'>${idx}</a></li>
								</c:forEach>	 
								<c:if test="${pageMaker.next ne -1}">
									 <li id="pageNext"><a href="${pageMaker.next}">다음</a></li>
								</c:if>
							</ul>
						</div>
						<!-- /.list paging 처리 -->
					</div> 
					<!-- /.ppt list 출력-->
				</div>
			</div>
				
				<div class="col-md-5">
					<div class="panel box-v3">					
						<h4>Select Option</h4>
						<!-- button 처리 -->
						<div class="panel box-v4">				
							<div class="panel-body">
								<button id="circle2" class=" btn btn-circle btn-3d btn-sm btn-primary"
										value="primary">방송</button>		
								<button class=" btn btn-circle btn-3d btn-sm btn-success"
									value="primary" id="createBtn">생성</button>
								<button class=" btn btn-circle btn-3d btn-sm btn-warning"
									value="primary" id="uploadBtn">수정</button>		
								<button class=" btn btn-circle btn-3d btn-sm btn-danger"
									value="primary" id="pptDelBtn">삭제</button>
							</div>
						</div>
						<!-- /. button 처리 --> 
						<!-- ppt 정보 & img 뿌리기 -->
						<div class="panel box-v4">
							<div class="panel-heading bg-white border-none">
								<h4>
									<span class="icon-notebook icons"></span> PPT 정보
								</h4>
							</div>
							<div class="panel-body">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div id="carousel-example-generic" class="carousel slide"
										data-ride="carousel">
										<div class="carousel-inner" id="imgContext">
											<div class="item active">
												<img class="img-responsive"
													data-src="holder.js/900x500/auto"
													src="../resources/miminium-master/asset/img/bg1.jpg">
											</div>
											 <div class="item">
												<img class="img-responsive"
													data-src="holder.js/900x500/auto"
													src="../resources/miminium-master/asset/img/bg1.jpg">
											</div>
											<div class="item">
												<img class="img-responsive"
													data-src="holder.js/900x500/auto"
													src="../resources/miminium-master/asset/img/bg1.jpg">
											</div> 
										</div>
										<a class="left carousel-control" id="prevBtn" href="#carousel-example-generic" 
										role="button" data-slide="prev"> 
											<span class="glyphicon glyphicon-chevron-left"></span></a> 
											<a class="right carousel-control" id="nextBtn" href="#carousel-example-generic" 
											role="button" data-slide="next">
											<span class="glyphicon glyphicon-chevron-right"></span></a>
									</div>
									<div class="panel-body padding-0">
										<div id="context" class="col-md-12 col-xs-12 col-md-12 padding-0 box-v4-alert">
											<h2 id='pTitle'>제목</h2>
											<p id='pDesc'>내용</p>
										</div>
										<div class="calendar fc fc-ltr fc-unthemed">
											<div class="fc-toolbar"></div>
										</div>
									</div>
								</div>
							</div>
							
							<!-- ppt 내용 수정 -->
							<div class="modal-content modal-upload">
								<div class="modal-header" style="height: 50px;">
									<h4>내용수정</h4>
									<h2 class="modal-title">
										<i class="icon-user icons"></i>
									</h2>
								</div>
								<div class="panel-body" style="text-align: center;">
									<form id="ddd" action="update" method="post">
										<input id="userid" type="hidden" name="userid" value="user00">
										<input id="upFno" type="hidden" name="fno" value="2">
										<br>
										<p>
											<label class="w3-text-grey">&nbsp;&nbsp;&nbsp;해당분야</label>
										</p>
										<input class="w3-input w3-border w3-round-large" type="text"
											name="ppt_kind" placeholder="Field" value="">
										<p>
											<label class="w3-text-grey">&nbsp;&nbsp;&nbsp;제목</label>
										</p>
										<input class="w3-input w3-border w3-round-large" type="text"
											name="ppt_title" placeholder="Title" value="">
										<p>
											<label class="w3-text-grey">&nbsp;&nbsp;&nbsp;내용</label>
										</p>
										<input class="w3-input w3-border w3-round-large" type="text"
											name="ppt_desc" placeholder="Content" value=""> <br>
									</form>
									<button type="button" id="up"
										class="w3-btn w3-padding w3-teal w3-round-xlarge"
										style="width: 120px;">Upload</button>
								</div>
									<div class="modal-footer"></div>
							</div> 
							<!-- /. ppt 내용 수정 -->
						</div> <!-- /.ppt 정보 & img 뿌리기 -->
					</div>
				</div> <!-- /.button 처리 -->
			</div>
		</div>
	</div>
	<form id="f1">
		<input id="useridF" type="hidden" name="userid">
	</form>

	<form method="post" id="circle" action="circle">
		<input id="circleHidden" type="hidden" value="9">
	</form>

	<form method="post" id="pptDel" action="pptDel">
		<input id="pptDelHidden" type="hidden" name="fno" value="">
	</form>

	<form method="post" id="broadCast" action="broadCast">
		<input id="broadCastHidden" type="hidden" name="fno" value="">
	</form>
	
	 <form method="get" id="index" action="../index">           
      </form>

	<form method="get" id="move" action="myPage">           
      </form>
	<!-- 로그아웃 폼 -->
	<form method="post" id="logoutForm" action="logout">
		<input id="logoutHidden" type="hidden" name="userid" value="${userid}">
	</form>

	<!-- 페이징 이동시 information 값 저장용 -->
	<input id="infor" type="hidden" name="fno" value="2">

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
	src="../resources/miminium-master/asset/js/plugins/moment.min.js"></script>
<script
	src="../resources/miminium-master/asset/js/plugins/mediaelement-and-player.min.js"></script>
<script
	src="../resources/miminium-master/asset/js/plugins/jquery.nicescroll.js"></script>
<script src="../resources/miminium-master/asset/js/main.js"></script>

<script src="https://code.jquery.com/jquery-2.2.4.js"
	integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
	crossorigin="anonymous"></script>

<script>
	$(document).ready(function() {
		
		 var loginSession = '${userid}';
		 
		 $("#logout").on("click", function(){
             
	         $('#logoutForm').submit();
	               
	      }); // 로그아웃 처리 (강희)
  
		 var pptID = '';
	      
			console.log(loginSession);
			console.log(pptID);
		
		$('#circle2').on("click", function(event) {
			
			var st = (String)(pptID);
			
	      	var formData = new FormData();
	         
	      	formData.append("file", st);
		    
		    $.ajax({
				url : "/member/broadCast/"+pptID, 
				type : "post", 
				success : function(data) {
					console.log(data);
				}
			});    

			 self.location = "http://192.168.0.28:8082/ppt?id="+pptID+"#&userid="+loginSession+"#/"; 

		});

		$("#pptDelBtn").on("click", function() {
			
			$('#pptDel').submit();
		}); // 피피티 삭제
		
		$("#up").on("click", function(){
			
			$("#userid").val(loginSession);
			$("#upFno").val(pptID);
			$("#ddd").submit();
			
			console.log("업데이트 보내기!!!");
			
		});
		
	/* 	var fno = 2; */
		$(".title-tag").on("click", function(event) {

			event.preventDefault();
			
			var fno = $(this).attr('id'); 
			
			$('#infor').val(fno);
			$('#fnoHidden').val(fno);

			touchTitle(fno);

		}); // ajax 처리로 이미지 및 ppt 정보 호출
		
		//즉시 실행 함수로 만들기
		var touchTitle = function(fno){ 
				// fno를 아이디 값에 속성을 매김		
				console.log(fno);
				pptID = fno;
				console.log(pptID);
				
				$('#pptDelHidden').val(pptID);
				/*pptRead를 ajax로 불러오기*/
				$.ajax({
					url : "../ppt/pptRead/" + fno, // pptRead를 controller에 출력하여 fno에 대한 ppt를 읽는다.
					type : "get", // get 방식
		
					success : function(data) {
						console.log(data.ppt_title);
						console.log(data.ppt_desc);
						
						$('#pTitle').empty(); 
						$('#pDesc').empty(); 
						// title과 desc 데이터를 비운다.
						
						$('#pTitle').append("제목 - <p>"  + data.ppt_title + '</p>');
						$('#pDesc').append("내용 - <p>" + data.ppt_desc + '</p>');
						// title과 desc에 대한 내용을 삽입한다.
					}
				}); // ajax로 ppt_title과 ppt_context 내용 출력
			
			/*이미지와 버튼을 한번 없애준후 append로 재 삽입을 한다.*/
			$('#imgContext').remove();
			$('#prevBtn').remove();
			$('#nextBtn').remove();
			
			$('#carousel-example-generic').append( 
					'<div class="carousel-inner" id="imgContext"></div>'
					 + '<a class="left carousel-control" id="prevBtn" href="#carousel-example-generic"' 
					 + 'role="button" data-slide="prev">' 
					 + '<span class="glyphicon glyphicon-chevron-left"></span></a>' 
					 + '<a class="right carousel-control" id="nextBtn" href="#carousel-example-generic"' 
					 + 'role="button" data-slide="next">'
					 + '<span class="glyphicon glyphicon-chevron-right"></span></a>'		
			);
		
			/*imgRead를 ajax로 불러오기*/
			$.ajax({
				url : "../ppt/imgRead/" + fno, // imgRead에 대한 fno을 불러온다.
				type : "get",
						
				success : function(data) {
					 
					$.each(data, function(index, obj){ 
					console.log(obj.img);
					
					
					/*if~else구문으로 img를 active 실시*/
					if(index==0){
	                    $('#imgContext').append(
	                    		  '<div class="item active">'
	                    		+ '<img class="img-responsive"' 
	                    		+ 'data-src="holder.js/900x500/auto"' 
	                    		+ 'src="../ppt/show?name=' + obj.img + '">'
	                    		+ '</div>'
	                        	 
	                    );
					} else {
						 $('#imgContext').append(
	                   		  '<div class="item">'
	                   		+ '<img class="img-responsive"' 
	                   		+ 'data-src="holder.js/900x500/auto"' 
	                   		+ 'src="../ppt/show?name=' + obj.img + '">'
	                   		+ '</div>'
	                       	 
	                   	 );
					};
	                console.log(obj);
	              }); 
				}
			});
		};
		
		var fnoVal = '${cri.fno}'; 
		
		if(fnoVal!=2){
			
			console.log("fno는 2가 아니다"+fnoVal);
			
			$('#fnoHidden').val(fnoVal);
			touchTitle('${cri.fno}'); 
		
		}else if((fnoVal==null)){
			
			console.log("fno는 null 이다"+fnoVal);
			
			touchTitle($('#infor').val());
			$('#pptDelHidden').val($('#infor').val());
		
		}else{
			
			console.log("fno는 2가 맞다"+fnoVal);
			
			touchTitle('${cri.fno}');
			$('#pptDelHidden').val($('#infor').val());
		} // ppt 삭제
		
		$('#searchBtn').on("click", function(event) {
			alert("검색 완료");
			$("#spageHidden").val("1");

			$("#sf").attr("action", "myPage").submit();

		}); // 검색 처리
		
       $("#pagination pull-right").on("click", "a",function(event) {
	         
    	    event.preventDefault();

			var pageNum = $(this).attr('href');
			console.log(pageNum);
			$("#spageHidden").val(pageNum);

			$("#sf").attr("action", "list").attr("method", "GET").submit();
		}); // 페이지 이동
      	
       $('.active').on("click", "a", function(event) {

			event.preventDefault();

			var pageNum = $(this).attr('href');
			console.log(pageNum);
			$("#spageHidden").val(pageNum);

			$("#sf").attr("action", "myPage").attr("method", "GET").submit();
		});
       
       $('#pagePrev').on("click", "a", function(event) {

			event.preventDefault();

			var pageNum = $(this).attr('href');
			var pagePrevNum = pageNum - 1;

			console.log(pageNum + "pageNum");
			console.log(pagePrevNum + "pagePrevNum");

			$("#spageHidden").val(pagePrevNum);
			$("#sf").attr("action", "myPage").attr("method", "GET").submit();

		});

		$('#pageNext').on("click", "a", function(event) {

			event.preventDefault();

			var pageNum = $(this).attr('href');

			console.log(pageNum + "pageNum");

			var pageNextNum = ++pageNum;

			console.log(pageNextNum + "pageNextNum");

			$("#spageHidden").val(pageNextNum);
			$("#sf").attr("action", "myPage").attr("method", "GET").submit();

		});

		var msg = '${msg}';
		
		if (msg == 'success') {
			alert('완료되었습니다.');
		}
		
		var formObj = $("form[role='form']");
		console.log(formObj);

		$("#updateBtn").on("click", function() {
			formObj.submit();
		}); // 유저 정보 update

		$("#deleteBtn").on("click", function() {
			formObj.attr("action", "delete");
			formObj.attr("mehtod", "post");
			formObj.submit();
		}); // 유저 정보 delete

		$("#fpageBtn").on("click", function(){
			console.log('처음으로...');
			$("#index").submit();
		});
		
		$("#moveBtn").on("click", function(){
			console.log('마이페이지 이동.......');
			$("#move").submit();
		});
		
		$("#createBtn").on("click", function(){
			
			var cookie = document.cookie.split(';');
	        console.log('로그인쿠키값!! : ' + cookie);

	        var cooki = JSON.stringify(cookie);


	        var cook = new Array();
	        cook = cooki.split("=");

	        console.log(cook[1]);

	        var cook2 = new Array();
	        cook2 = cook[1].split('"');

	        console.log(cook2[0]);
	        
			$("#useridF").val(cook2[0]);
			
		
			$("#f1").attr("action", "dropzone").submit();
		}); // 생성 페이지 이동
		
		
		var uploadedList = $(".uploadedList");
	      
	      $(".fileDrop").on("dragenter dragover", function(event) {
	         event.preventDefault();
	      });
	      
	      $(".fileDrop").on("drop", function(event) {
	         event.preventDefault();
	         
	         var files = event.originalEvent.dataTransfer.files;
	         var file = files[0];
	         
	         var formData = new FormData();
	         
	         $('.uploadedList').empty();
	         formData.append("file", file);
	         
	         console.log(formData);
	         
	         $.ajax({
	            url : "upload",
	            data : formData,
	            dataType : 'text',
	            type : "post",
	            contentType : false,
	            processData : false,
	            success : function(data) {
	               uploadedList.html("<img src=show?name=" + data + ">");
	               $("#imgsrc").val(data);
	               alert("이미지 수정 완료");
	            }
	         });
	      }); // drag & drop end (강희)
	      

		
	});
</script>

<script>
	$(".modal-content").hide();
	
	$("#cancelBtn").click(function() {
		$(".modal-reset").hide();
	});
	
	$(".reset").click(function() {
		$(".modal-reset").toggle("slow");
	});
	
	$("#dangerBtn").click(function() {
		$(".modal-secession").hide();
	});
	
	$(".secession").click(function() {
		$(".modal-secession").toggle("slow");
	});
	
	$("#uploadBtn").click(function() {
		$(".modal-upload").toggle("slow");
	});
</script>

</html>