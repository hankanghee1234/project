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
	<form action="/" method="post" class="dropzone"
		id="my-awesome-dropzone" enctype="multipart/form-data"></form>
		<button>upload</button>

</body>
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/4.3.0/min/dropzone.min.js"></script>
<script src="../resources/dropzone/js/dropzone.js"></script>
</html>