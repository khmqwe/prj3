<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>GOTO</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"
	rel="stylesheet" type="text/css" />
<!-- Bootstrap core JS-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="http://localhost/prj3/common/js/scripts.js"></script>
<!-- jQuery CDN(Contents Delivery Network) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- Core theme CSS (includes Bootstrap)-->
<link href="http://localhost/prj3/common/css/styles.css"
	rel="stylesheet" />
<script type="text/javascript">
$(function() { 
           //버튼 기능
		 $("#idChk").click(function(){ 
			 window.open("idDupForm.do","id_pop","width=500px,height=300px");
  		});		
          	 $("#sign_button").click(function(){ 
            		chkNull();
            	});	
       		//비밀번호 확인 
		       	$("#pass_fail").hide();
            	$("#inputPasswordCheck").keyup(function(evt){ 
            		if( $("#inputPassword").val() == $("#inputPasswordCheck").val()){
            			$("#pass_success").show();
            			$("#pass_fail").hide();
            		}else{
            			$("#pass_success").hide();
            			$("#pass_fail").show();
            		}
            	});
			//alert 기능 
            function chkNull(){
            	if(  $("#inputTel1").val().length <= 2 ){
            		alert("연락처를 확인해주세요");
            		$("#inputTel1").focus();
            		return;
            	}//end if
            	if(  $("#inputTel2").val().length <= 3 ){
            		alert("연락처를 확인해주세요");
            		$("#inputTel2").focus();
            		return;
            	}//end if
            	if(  $("#inputTel3").val().length <= 3){
            		alert("연락처를 확인해주세요");
            		$("#inputTel3").focus();
            		return;
            	}//end if
            	if(  $("#inputPassword").val() != $("#inputPasswordCheck").val() ){
            		alert("비밀번호를 확인해주세요");
            		$("#inputPassword").focus();
            		return;
            	}//end if
				if( $("#id").val() ==""){
            		alert("아이디는 필수 입력");
            		$("#id").focus();
            		return;
            	}//end if
            	if( $("#inputPassword").val() ==""){
            		alert("비밀번호는 필수 입력");
            		$("#inputPassword").focus();
            		return;
            	}//end if
            	if( $("#inputPasswordCheck").val() ==""){
        			alert("비밀번호는 필수 입력");
        			$("#inputPasswordCheck").focus();
        		return;
        	}//end if
            	if( $("#inPutName").val() ==""){
            		alert("이름은 필수 입력");
            		$("#inPutName").focus();
            		return;
            	}//end if
            	if( $("#inputEmail").val() ==""){
            		alert("이메일는 필수 입력");
            		$("#inputEmail").focus();
            		return;
            	}//end if
            	if( $("#inputTel1").val() ==""){
            		alert("연락처는 필수 입력");
            		$("#inputTel1").focus();
            		return;
            	}//end if
            	if( $("#inputTel2").val() ==""){
            		alert("연락처는 필수 입력");
            		$("#inputTel2").focus();
            		return;
            	}//end if
            	if( $("#inputTel3").val() ==""){
            		alert("연락처는 필수 입력");
            		$("#inputTel3").focus();
            		return;
            	}//end if
            	$("#signFrm").submit();
            }//chkNull 
           
       });//ready
        </script>
</head>
<body id="page-top">
	<jsp:include page="header.jsp" />
	<div class="main-content">

		<div class="row justify-content-center" style="margin-top: 200px">
			<div class="col-lg-3">
				<div class="card shadow-lg border-0 rounded-lg mt-5">
					<div class="card-header">
						<h3 class="text-center font-weight-light my-4">회원가입</h3>
					</div>
					<div class="card-body">
					<form  id="signFrm" action="joinProcess.do" method="post">
							<!-- 아이디 입력 -->
							<div class="row">
								<div class="col-xs-12 col-md-8">
									<div class="form-floating mb-3">
										<input class="form-control" id="MID" type="text" readonly="readonly"	placeholder="id" name="MID" /> 
											<label for="inputid">id</label>
									</div>
								</div>
								<div class="col-xs-6 col-md-4">
									<button type="button" class="btn btn-warning" id ="idChk"">중복확인</button>
								</div>
							</div>
							<!-- 비밀번호 입력 -->
							<div class="row">
								<div class="col-md-6">
									<div class="form-floating mb-3">
										<input class="form-control" id="inputPassword" type="password" placeholder="Password" name="MPASS" /> <label
											for="inputPassword">Password</label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-floating mb-3">
										<input class="form-control" id="inputPasswordCheck" type="password" placeholder="Password" name="MPASSCH" /> 
											<label for="inputPassword" id="pass_success">Password check</label> 
											<label for="inputPassword" id="pass_fail" style="color:red">비밀번호 불일치</label>
									</div>
								</div>
							</div>
							<!-- 이름 입력 -->
							<div class="form-floating mb-3">
								<input class="form-control" id="inPutName" type="text"	placeholder="name" name="MNAME" /> 
								<label for="inputName">name</label>
							</div>
							<!-- 이메일 -->
							<div class="form-floating mb-3">
								<input class="form-control" id="inputEmail" type="text"placeholder="Email" name="MEMAIL" /> 
								<label for="inputEmail">email</label>
							</div>
							<div class="row">
								<div class="col-md-4">
									<div class="form-floating mb-3">
										<input class="form-control" id="inputTel1" type="text"  maxlength="3" 	placeholder="tel1" name="MTELNUM1" /> 
											<label for="inputTel">tel</label>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-floating mb-3">
										<input class="form-control" id="inputTel2" type="text"  maxlength="4" 	placeholder="tel2" name="MTELNUM2" /> 
										<label for="inputTel"></label>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-floating mb-3">
										<input class="form-control" id="inputTel3" type="text"  maxlength="4" 	placeholder="tel3" name="MTELNUM3" /> 
										<label for="inputTel"></label>
									</div>
								</div>
							</div>
							<input type="button" class="btn btn-primary btn-lg" value="가입" id="sign_button" />
						</form>
					</div>
					<div class="card-footer text-center py-3"></div>
				</div>
			</div>
		</div>

	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
