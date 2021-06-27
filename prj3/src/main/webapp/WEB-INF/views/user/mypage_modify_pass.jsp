<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>

    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="http://localhost/prj3/common/css/styles.css" rel="stylesheet"/>
    <!-- jQuery CDN(Contents Delivery Network) -->
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
 	<!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
 .idtitle{font-size:25px;}
 #wrap{text-align: center; border:1px solid #333; width:400px;height:250px;padding:20px; margin:15px auto }
 .use{font-size: 14px; color:#fff; background-color:#333; width:100px; height:27px; font-weight:bold;}
</style>



<script type="text/javascript">

function chkPW(){
	 var pw = $("#newPass1").val();
	 var num = pw.search(/[0-9]/g);
	 var eng = pw.search(/[a-z]/ig);
	 var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
	
	 if(pw.length < 8 || pw.length > 20){
	  alert("비밀번호를 8자리 ~ 20자리 이내로 입력해주세요.");
	  return false;
	 }else if(pw.search(/\s/) != -1){
	  alert("비밀번호는 공백 없이 입력해주세요.");
	  return false;
	 }else if(num < 0 || eng < 0){
	  alert("비밀번호 영문,숫자를 혼합하여 입력해주세요.");
	  return false;
	 }else {
	    return true;
	 }
}

 function successPass(){
	 
	if ($("#newPass1").val() == "") {
		alert("비밀번호 입력란이 비어있습니다.");
		$("#newPass1").focus();
	}  else if ($("#newPass2").val() == "") {
		alert("비밀번호 입력란이 비어있습니다.");
		$("#newPass2").focus();
	} else if ($("#newPass1").val() != $("#newPass2").val()) {
		alert("비밀번호가 다릅니다.");
	} else if (chkPW()) {
		alert("변경되었습니다.");
		$("#passfrm").submit();
	} else {
		return;
	}
}

$(function() {
	
	if ("${ passCheck}" == "true") {
		self.close();
	}
});
 
</script>

</head>
<body>

<div align="center" id="wrap">
<form action="modifyPassProcess.do" name="passfrm" id ="passfrm" method="post">
<span class="idtitle"><strong>비밀번호</strong> 변경</span> <br>
비밀번호를 변경해주세요.<br>
<table id="tab">
		
		<tr>
			<td><strong>새로운 비밀번호</strong></td>
			<td><input type="password" name="newPass1" id="newPass1"/></td>
		</tr>
		<tr>
			<td><strong>비밀번호 확인</strong></td>
			<td><input type="password" name="newPass2" id="newPass2"/></td>
		</tr>
	</table>
	<br>
<input type="button" value="변경하기" class="use" id="success"  onclick="successPass()" >
</form>
</div>

</body>
</html>