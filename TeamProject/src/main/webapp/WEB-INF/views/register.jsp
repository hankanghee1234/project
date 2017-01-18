<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="register" method="post">
	<div class="box-body">
		<div class="form-group">
			<label for="exampleInputUserID">아이디</label> 
			<input type="text" name="userid" class="form-control" placeholder="Enter UserID">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword">패스워드</label>
			<input type="text" name="userpw" class="form-control" placeholder="Enter UserPW">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail">이메일</label>
			<input type="text" name="email" class="form-control" placeholder="Enter Email">
		</div>
		<div class="form-group">
			<label for="exampleInputUserName">이름</label>
			<input type="text" name="uname" class="form-control" placeholder="Enter UserName">
		</div>
		<button type="button" class="btn btn-primary" id="createBtn">등록</button>
	</div>
</form>
</body>
</html>