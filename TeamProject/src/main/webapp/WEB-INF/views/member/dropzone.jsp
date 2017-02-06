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

<body>
	<!-- 드롭존 폼 -->
	<form action="/ppt/upload2" method="post" class="dropzone"
		id="my-awesome-dropzone"></form>

	<form id="ddd" method="post">
		<div class="w3-container w3-teal">
			<h2>Input Form</h2>
		</div>
		
			<br>
			<p>
				<label class="w3-text-grey">Name</label> <input
					class="w3-input w3-border" type="text" required>
			</p>
			<p>
				<label class="w3-text-grey">Email</label> <input
					class="w3-input w3-border" type="text" required>
			</p>
			<p>
				<label class="w3-text-grey">Subject</label>
				<textarea class="w3-input w3-border" style="resize: none"></textarea>
			</p>
			<br>
			<div class="w3-row">
				<div class="w3-half">
					<input id="milk" class="w3-check" type="checkbox" checked="checked">
					<label class="w3-validate">Milk</label> <br> <input id="sugar"
						class="w3-check" type="checkbox"> <label
						class="w3-validate">Sugar</label> <br> <input id="lemon"
						class="w3-check" type="checkbox" disabled> <label
						class="w3-validate">Lemon (Disabled)</label> <br>
					<br>
				</div>

				<div class="w3-half">
					<input id="male" class="w3-radio" type="radio" name="gender"
						value="male" checked> <label class="w3-validate">Male</label>
					<br> <input id="female" class="w3-radio" type="radio"
						name="gender" value="female"> <label class="w3-validate">Female</label>
					<br> <input id="unknown" class="w3-radio" type="radio"
						name="gender" value="" disabled> <label
						class="w3-validate"> Don't know (Disabled)</label>
				</div>
			</div>
			<p>
				<button type="button" class="w3-btn w3-padding w3-teal"
					style="width: 120px">Send &nbsp; &#10095;</button>
			</p>

		</form>

		<button id="up">upload</button>
		ㅎㅇㅎㅇ
</body>
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/4.3.0/min/dropzone.min.js"></script>
<script src="../resources/dropzone/js/dropzone.js"></script>
</html>