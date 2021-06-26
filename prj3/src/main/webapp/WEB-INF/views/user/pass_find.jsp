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
        
   		<script type="text/javascript">
   		
		$(function() {
			find_submit
			 $("#find_submit").click(function(){ 
         		chkNull();
         	});	
			function chkNull(){
            	if( $("#m_id").val() ==""){
            		alert("아이디를 입력해주세요");
            		$("#m_id").focus();
            		return;
            	}//end if
            	if( $("#m_email").val() ==""){
            		alert("이메일을 입력해주세요");
            		$("#m_email").focus();
            		return;
            	}//end if
            	if( $("#inputTel1").val() ==""){
            		alert("연락처를 입력해주세요");
            		$("#inputTel1").focus();
            		return;
            	}//end if
            	if( $("#inputTel2").val() ==""){
            		alert("연락처를 입력해주세요");
            		$("#inputTel2").focus();
            		return;
            	}//end if
            	if( $("#inputTel3").val() ==""){
            		alert("연락처를 입력해주세요");
            		$("#inputTel3").focus();
            		return;
            	}//end if
		      	$("#findFrm").submit();
		   	  }	
		});//ready
		
   	  
   		
   		</script>
        
    </head>
    <body id="page-top">
<jsp:include page="header.jsp"/>  
<div class="main-content">

                        <div class="row justify-content-center" style="margin-top: 200px">
                            <div class="col-lg-3">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header">
									<ol class="breadcrumb">
									  <li><a href="id_find.do"><h3 class="btn btn-default">아이디 찾기</h3></a></li>
									  <li><a href="pass_find.do"><h3 class="btn btn-primary">비밀번호 찾기</h3></a></li>
									</ol>
                                    </div>
                                    <div class="card-body">
                                    
                                        <form action="pass_find_success.do" method="post" id="findFrm">
										<div style="text-align: center;">
										<h3>등록정보로 비밀번호 찾기</h3>
										회원가입 시 등록한 정보로 찾을 수 있습니다.
										</div><br>		                  
										<div id="test"></div>                      					
                                        <!-- 아이디 입력 -->
                                             <div class="form-floating mb-3">
                                                <input class="form-control" id="m_id" name="m_id" type="text" placeholder="id" />
                                                <label for="inputId">id</label>
                                            </div> 
                                        <!-- 이메일 -->
                                              <div class="form-floating mb-3">
                                                <input class="form-control" id="m_email" name="m_email" type="text" placeholder="Email" />
                                                <label for="inputEmail">email</label>
                                            </div>                                        
                                        <!-- 전화번호 -->                                      
										   <div class="row">
										  <div class="col-md-4">
											<div class="form-floating mb-3">
                                                <input class="form-control" id="inputTel1" name="inputTel1"type="text" placeholder="tel1"  maxlength="3"/>
                                                <label for="inputTel">tel</label>
                                            </div> 
										  </div>
										  <div class="col-md-4">
											<div class="form-floating mb-3">
                                                <input class="form-control" id="inputTel2" name="inputTel2"type="text" placeholder="tel2" maxlength="4" />
                                                <label for="inputTel">0000</label>
                                            </div> 
										  </div>
										  <div class="col-md-4">
											<div class="form-floating mb-3">
                                                <input class="form-control" id="inputTel3" name="inputTel3"type="text" placeholder="tel3"  maxlength="4"/>
                                                <label for="inputTel">0000</label>
                                            </div> 
										  </div>
										</div> 
                                        <div style="text-align:right;"><input type="button" id="find_submit" class="btn btn-primary btn-lg" value="비밀번호찾기"/></div>
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
