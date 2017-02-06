<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</style>
<body>
	
	<form id="ddd" method="post">
		<div class="w3-container w3-teal w3-round-xlarge">
			<h3>해당하는 파일을 기록하시오</h3>
		</div>

		<br>
		<p>
			<label class="w3-text-grey">&nbsp;&nbsp;&nbsp;해당분야</label>
		</p>
		<input class="w3-input w3-border w3-round-large" type="text" name="ppt_kind" placeholder="Field">
		<p>
			<label class="w3-text-grey">&nbsp;&nbsp;&nbsp;제목</label>
		</p>
		<input class="w3-input w3-border w3-round-large" type="text" name="ppt_title" placeholder="Title">
		<p>
			<label class="w3-text-grey">&nbsp;&nbsp;&nbsp;내용</label>
		</p>
		<input class="w3-input w3-border w3-round-large" type="text" name="ppt_desc" placeholder="Content">
		<br>
		</form>
		<!-- 드롭존 폼 -->
		<form action="/ppt/upload2" method="post" class="dropzone"
		id="my-awesome-dropzone">
		<h2 class="w3-panel w3-pale-blue w3-round-xxlarge">DropZone Space upload(PPT & PDF)</h2>
		</form>	
		<p align="center">
		<button type="button" id="up" class="w3-btn w3-padding w3-teal w3-round-xlarge"
				style="width: 120px; ">Upload</button>
		<button type="button" id="reset" class="w3-btn w3-padding w3-teal w3-round-xlarge"
				style="width: 120px; ">Reset</button>		
		<button type="button" id="cancel" class="w3-btn w3-padding w3-teal w3-round-xlarge"
				style="width: 120px; ">Cancel</button>
		</p>
	
</body>

<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/4.3.0/min/dropzone.min.js"></script>
<script src="../resources/dropzone/js/dropzone.js"></script>
<script>
	$(document).ready(function(){
		
		$("#reset").on("click", function(){
			location.reload()
		});
		
		$("#cancel").on("click", function(){
			self.location = "/member/myPage";
		});
	});
</script>
</html>