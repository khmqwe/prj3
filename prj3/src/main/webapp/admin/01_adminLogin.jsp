<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>01관리자로그인</title>
	

	<!-- bootstrap -->
	<link href="http://localhost/prj3/common/bootstrap-3.3.2/css/bootstrap.min.css" rel="stylesheet">
	<!-- jQuery CDN(Contents Delivery Network) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	 <!-- bootstrap -->
	<script src="http://localhost/prj3/common/bootstrap-3.3.2/js/bootstrap.min.js"></script>
	<!-- style CSS -->
	<link href="http://localhost/prj3/common/css/admin_style.css" rel="stylesheet" type="text/css">
	
<style type = "text/css">

</style>

<script type="text/javascript">
$(function(){
	$("#btnLogin").click(function(){
		chkNull(); 
	});//get
	$("#id").keydown(function(evt) {
		if (evt.which == 13) {
			chkNull();
		}
	});
	$("#password").keydown(function(evt) {
		if (evt.which == 13) {
			chkNull();
		}
	});
});//ready

function chkNull() {
	if ($("#id").val() == "") {
		alert("아이디를 입력해주세요.");
		$("#id").focus();
		return;
	}
	if ($("#password").val() == "") {
		alert("비밀번호를 입력해주세요.");
		$("#password").focus();
		return;
	}
	$("#adFrm").submit();
}

</script>
</head>
<body>
<div class = "container_1">
	<div class = "log_in">
<form action="" method="post" id="adFrm"></form>	
		<h1 style= "font-weight: bold; text-align: center;">관리자 로그인</h1><br/><br/>
		아이디<br/>
		 <input type="text" class="inputBox" name= "id" id= "id" /><br/>
		비밀번호 <br/>
		 <input type="password" class="inputBox" name= "password" id= "password"/><br/>
		<input type = "button" class = "btn btn-primary" value = "로그인" id="btnLogin" style = "height : 50px; width : 300px; margin-top: 20px; font-size: 20px; border-radius: 10px;" />
	</div>
	
</nav>
</div>
</body>
</html>