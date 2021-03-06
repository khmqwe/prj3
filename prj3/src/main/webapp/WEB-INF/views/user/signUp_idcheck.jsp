 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>

<!-- Core theme CSS (includes Bootstrap)-->
<link href="http://localhost/prj3/common/css/styles.css"
	rel="stylesheet" />
<!-- jQuery CDN(Contents Delivery Network) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- Bootstrap core JS-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
.idtitle {
	font-size: 25px;
}

#wrap {
	text-align: center;
	border: 1px solid #333;
	width: 400px;
	height: 270px;
	padding: 30px;
	margin: 15px auto
}

.use {
	font-size: 14px;
	color: #fff;
	background-color: #333;
	width: 100px;
	height: 27x;
	font-weight: bold;
}
</style>
<script type="text/javascript">
function useId(){
	opener.document.getElementById("MID").value = document.getElementById("MID").value;
	self.close();
	
}
function check(re, what, message) {
    if(re.test(what.value)) {
        return true;
    }
    alert(message);
    what.value = "";
    what.focus();
    //return false;
}
function checkId() {
	 var re = /^[a-zA-Z0-9]{4,12}$/; // 아이디
	 const userId = $("#MID").val();
	 if(!re.test(userId)){
	  alert("4~12자리 영문대소문자와 숫자로만 입력해주세요");
	  $("#use").css("display", "none");
	  return false;
	 } else {
		 return true;
	 }
}
$(function() { 
    //버튼 기능
	 $("#chkid").click(function(){ 
		if (checkId()) {
		$("#idfrm").submit();
		}
	});		
    
	 const result = "${ result }";
	 if (result == "사용가능한 아이디 입니다.") {
		 $("#use").css("display", "block");
	 } else {
		 $("#use").css("display", "none");
	 }
    
});		
</script>
</head>
<body>
	<form action="idDupProcess.do" id="idfrm" method="POST">
		<div align="center" id="wrap">
			<span class="idtitle"><strong>ID CHECK</strong> 아이디 중복확인</span> <br/>
			사용하고자 하는 아이디를 입력해주세요.<br/> 
			아이디 중복확인 후 사용 가능한 아이디를 등록합니다. 
			<br/><br /> 
			<c:out value="${result}" />
			<input type="text" class="inputbox" name="MID" id="MID"  value="<c:out value="${ID}"/>" /> 
			<input type="button" value="ID 중복확인" class="btn btn-default" id="chkid" /><br />
			<input style="display: none; margin: auto;" type="button" value="사용하기" class="use" id="use"  onclick="useId()"/>
		</div>
	</form>

</body>
</html>