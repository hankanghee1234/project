<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert tit</title>
</head>
<body>
	<h1>LIST PAGE</h1>
	<script>
	var result = "${msg}";
	if(result == "success"){
		alert("등록 성공");
	}
	</script>
</body>
</html>