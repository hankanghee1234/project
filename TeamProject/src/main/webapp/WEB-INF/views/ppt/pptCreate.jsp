<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
.fileDrop {
	width: 300px;
	height: 300px;
	border: 2px groove blue;
	}
</style>
<body>
<form action="pptCreate" method="post">
	<div class="form-group">
		<label class="col-sm-2 control-label text-right"></label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="userid" 
			readonly="readonly" value="${read.userid}">
		</div>
	</div>
	 <div class="form-group">
		<label class="col-sm-2 control-label text-right"></label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="fno" 
			readonly="readonly" value="${read.fno}">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label text-right"></label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="ppt_kind"
				placeholder="분야" value="${PptVO.ppt_kind}">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label text-right"></label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="ppt_title"
				placeholder="제목" value="${PptVO.ppt_title}">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label text-right"></label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="ppt_desc"
				placeholder="내용" value="${PptVO.ppt_desc}">
		</div>
	</div>
	<p><input type="hidden" name="originname" value="test.pdf"></p>
	<p><input type="hidden" name="copyname" value="test.pdf"></p>
	<p><input type="hidden" name="img" id="imgsrc"></p>
		
	<div class="fileDrop">
	<h3 class="upload-title">파일 업로드 실시</h3>
	<div class="uploadedList"></div>
	</div>	
	
	<button type="submit" class="btn btn-primary">등록</button>
	
</form>
</body>

<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous"></script>
		
<script>
	
	$(document).ready(function() {
		
		var msg = '${msg}';
		
		if (msg == 'success') {
			alert('완료되었습니다.');
		}
		
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
				url : "../ppt/upload",
				data : formData,
				dataType : 'text',
				type : "post",
				contentType : false,
				processData : false,
				success : function(data) {
					uploadedList.html("<img src=show?name=" + data + ">");
					$("#imgsrc").val(data);
					alert("이미지 등록 완료");
				}
			});
		});

	});
</script>

</html>