<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="pptRegister" method="post">
<div class="box-body">
			<div class="form-group">
				<label for="Inputfno">PPT 등록번호</label> 
				<input type="text" name="fno" class="form-control" placeholder="Enter Fno">
			</div>
			<div class="form-group" >
				<label for="InputUserid">등록자</label> 
				<input type="text" name="userid" class="form-control" placeholder="Enter UserID">
			</div>
			<div class="form-group">
				<label for="Inputppt_Kind">분야</label>
				<input type="text" name="ppt_kind" class="form-control" placeholder="Enter Ppt_Kind">
			</div>
			<div class="form-group">
				<label for="Inputppt_Title">제목</label>
				<input type="text" name="ppt_title" class="form-control" placeholder="Enter Ppt_Ttile">
			</div>
			<div class="form-group">
				<label for="Inputppt_Desc">내용</label>
				<input type="text" name="ppt_desc" class="form-control" placeholder="Enter Ppt_Desc">
			</div>	
			<button class="btn btn-primary" type="button" name="submit">등록</button>
		</div>
</form>
</body>
</html>