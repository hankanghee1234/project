<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link href="../resources/dropzone/css/dropzone.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<style>
.dropzone {
	border: 2px groove;
}

html {
	position: relative;
	width: 100%;
	height: 100%;
	background: url(../resources/rest.jpg) no-repeat center center;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	background-size: cover;
	-o-background-size: cover;
	z-index: -1;
}

#zone {
	border: 1px solid black;
	border-radius: 17px;
	width: 40%;
	position: absolute;
	left: 30%;
	background-color: rgba(255, 255, 255, 0.5);
}

.dropzone {
	border: 1px solid black;
	background-color: rgba(255, 255, 255, 0.5);
}

#drop-title {
	font-size: 230%;
	font-weight: 200px;
	text-shadow: 2px 2px 2px gray;
}

.input-text { 
	font-size : 230%;
	font-weight: 200px;
	text-shadow: 2px 2px 2px black;

}
</style>

<body>
	<div id="zone">

		<form id="ddd" action="pptCreate" method="post">
			<input id="userid" type="hidden" name="userid" value="${param.userid}">


			<div class="w3-container w3-teal w3-round-xlarge create-title">
				<h3 class="input-text">입력하십시오.</h3>
			</div>

			<br>
			<p>
				<label class="w3-text-black label-text">&nbsp;&nbsp;&nbsp;해당분야</label>
			</p>
			<input class="w3-input w3-border w3-round-large" type="text"
				name="ppt_kind" placeholder="Field" value="">
			<p>
				<label class="w3-text-black label-text">&nbsp;&nbsp;&nbsp;제목</label>
			</p>
			<input class="w3-input w3-border w3-round-large" type="text"
				name="ppt_title" placeholder="Title" value="">
			<p>
				<label class="w3-text-black label-text">&nbsp;&nbsp;&nbsp;내용</label>
			</p>
			<input class="w3-input w3-border w3-round-large" type="text"
				name="ppt_desc" placeholder="Content" value=""> <br>
		</form>

		<div class="drop-space">
			<h2 id="drop-title" class="w3-panel w3-pale-blue w3-round-xxlarge">DropZone Space upload(PPT & PDF)</h2>
			<!-- 드롭존 폼 -->
			<form action="/ppt/upload2" method="post" class="dropzone" id="my-awesome-dropzone"></form>
		</div>

		<div class="btns">
			<p align="center">
				<button type="button" id="up" class="w3-btn w3-padding w3-teal w3-round-xlarge" style="width: 120px;">Upload</button>
				<button type="button" id="reset" class="w3-btn w3-padding w3-teal w3-round-xlarge" style="width: 120px;">Reset</button>
				<button type="button" id="cancel" class="w3-btn w3-padding w3-teal w3-round-xlarge" style="width: 120px;">Cancel</button>
			</p>
		</div>
	</div>
</body>

<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/4.3.0/min/dropzone.min.js"></script>
<script src="../resources/dropzone/js/dropzone.js"></script>
<script>
	$(document).ready(function() {

		$("#reset").on("click", function() {
			location.reload()
		});

		$("#cancel").on("click", function() {
			self.location = "/member/myPage";
		});
	});
</script>
</html>