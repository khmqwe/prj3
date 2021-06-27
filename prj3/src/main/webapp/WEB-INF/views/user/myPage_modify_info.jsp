<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>GOTO</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="http://localhost/prj3/common/js/scripts.js"></script>
        <!-- jQuery CDN(Contents Delivery Network) -->
 		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>        
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="http://localhost/prj3/common/css/styles.css" rel="stylesheet"/>
        
<style type="text/css">
/* Chrome, Safari, Edge, Opera */
	input::-webkit-outer-spin-button,
	input::-webkit-inner-spin-button {
	  -webkit-appearance: none;
	  margin: 0;
	}

	/* Firefox */
	input[type=number] {
	  -moz-appearance: textfield;
	}
</style>
        
<script type="text/javascript">

function maxLengthCheck(object){
    if (object.value.length > object.maxLength){
        object.value = object.value.slice(0, object.maxLength);
    }    
}

        $(function() { 
        	$("#changebtn").click(function() {
        		if (!checkEmail()) {
        			return;
        		}
        		if (!checkName()) {
        			return;
        		}
        		
        		const tel1 = $("#inputTel1").val();
        		const tel2 = $("#inputTel2").val();
        		const tel3 = $("#inputTel3").val();
        		const telnum = tel1 + "-" + tel2 + "-" + tel3;
        		$("#m_telnum").val(telnum);
    			$("#updateinfoForm").submit();
    		});
       		//아이디 중복확인 팝업 
       		$("#m_pass").click(function() {
       			window.open("modifyPassForm.do","id_pop","width=500px,height=300px");
       		});
        	$("#mainbtn").click(function() {
				location.replace=history.go(-1);
        	});
       });//ready
     
 function checkEmail() {
	var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/; // 이메일 유효성 검사
	var email = $("#inputEmail").val();
	 if(exptext.test(email) == false){
	  alert("이메일형식이 맞지 않습니다.");
	  $("#inputEmail").focus();
	  return false;
	 } else {
	 	return true;
	 }
	
}
       
function checkName() {
	var nameExp = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/; // 이름 유효성 검사
	var name = $("#inPutName").val();
	if(nameExp.test(name) == false){
	  alert("이름형식이 맞지 않습니다.");
	  $("#inPutName").focus();
	  return false;
	 
	 } else {
		 return true;
	 }
}
</script>
        
        
        
    </head>
    <body id="page-top">
<jsp:include page="header.jsp"/>  
<div class="main-content">

                        <div class="row justify-content-center" style="margin-top: 200px">
                            <div class="col-lg-3">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
									 <div class="card-header"><h3 class="text-center font-weight-light my-4">회원정보 변경</h3></div>
                                    <div class="card-body">
                                    
                                         <form  id="updateinfoForm" action="modMyInfoForm.do" method="POST">
                                         <input type="hidden" name="m_telnum" id="m_telnum"/> 
                                         <input type="hidden" name="m_id" value="${ MID }"/> 
										<div style="text-align: center;">
										회원정보를 변경할 수 있습니다. 
										</div><br>		                                        					
                                        <!-- 아이디 입력 -->
                                             <div class="form-group mb-3">
                                                <label for="inputName">id</label>
                                                <span>${MID}</span>
                                            </div> 
                                        <!-- 비밀번호 변경 -->
                                             <div class="form-group mb-3">
                                                <a class="btn btn-primary btn-lg" href="#" id="m_pass">비밀번호 변경</a>
                                            </div> 
                                        <!-- 이름 입력 -->
                                             <div class="form-group mb-3">
                                                <label for="inputName">name</label>
                                                <input class="form-control" id="inPutName" name="m_name" type="text" placeholder="name" value="${ mid.m_name}" />
                                            </div> 
                                        <!-- 이메일 -->
                                              <div class="form-group mb-3">
                                                <label for="inputEmail">email</label>
                                                <input class="form-control" id="inputEmail" name="m_email" type="text" placeholder="Email" value="${ mid.m_email}" />
                                            </div>                                        
                                        <div class="row">
										  <div class="col-md-4">
											<div class="form-group mb-3">
                                                <label for="inputTel">tel</label>
                                                <input class="form-control" id="inputTel1" type="number" maxlength="3" placeholder="" value="${telArr[0]}" oninput="maxLengthCheck(this)"/>
                                            </div> 
										  </div>
										  <div class="col-md-4">
											<div class="form-group mb-3">
                                                <label for="inputTel">　</label>
                                                <input class="form-control" id="inputTel2" type="number" maxlength="4" placeholder="" value="${telArr[1]}" oninput="maxLengthCheck(this)" />
                                            </div> 
										  </div>
										  <div class="col-md-4">
											<div class="form-group mb-3">
                                                <label for="inputTel">　</label>
                                                <input class="form-control" id="inputTel3" type="number" maxlength="4" placeholder="" value="${telArr[2]}" oninput="maxLengthCheck(this)"/>
                                            </div> 
										  </div>
										</div>
										<div style="text-align:right;">
										<input type= "button" id="changebtn" class="btn btn-primary btn-lg" value ="변경" />
										<input  type= "button" id="mainbtn" class="btn btn-primary btn-lg"  value ="취소" />
										</div>                                                                                 
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                    </div>
                                </div>
                            </div>
                        </div>

</div>
<jsp:include page="footer.jsp"/>  
    </body>
</html>
