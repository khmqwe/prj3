<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
       		//아이디 중복확인 팝업 
       		$("#idchk").click(function() {
       			window.open("singUp_idcheck.jsp","id_pop","width=500px,height=300px");
       		});
       		 
       });//ready
        
        </script>
    </head>
    <body id="page-top">
<jsp:include page="header.jsp"/>  
<div class="main-content">
						 
                        <div class="row justify-content-center" style="margin-top: 200px">
                            <div class="col-lg-3">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">회원가입</h3></div>
                                    <div class="card-body">
                                        <form action="singUp_success.jsp">
                                        <!-- 아이디 입력 -->
											<div class="row">
												<div class="col-xs-12 col-md-8">
												<div class="form-floating mb-3">
												<input class="form-control" id="id" type="text" placeholder="id"/>
												<label for="inputid">id</label>
												</div>
												</div>
												 <div class="col-xs-6 col-md-4"><button type="button" class="btn btn-warning" id="idchk">중복확인</button></div>
											</div>
                                        <!-- 비밀번호 입력 -->	
                                        <div class="row">
										  <div class="col-md-6">
										  <div class="form-floating mb-3">
                                                <input class="form-control" id="inputPassword" type="password" placeholder="Password" />
                                                <label for="inputPassword">Password</label>
                                            </div>
										  </div>
										  <div class="col-md-6">
										  <div class="form-floating mb-3">
                                                <input class="form-control" id="inputPasswordCheck" type="password" placeholder="Password" />
                                                <label for="inputPassword">Password check</label>
                                            </div>
										  </div>
										</div>										
                                        <!-- 이름 입력 -->
                                             <div class="form-floating mb-3">
                                                <input class="form-control" id="inPutName" type="text" placeholder="name" />
                                                <label for="inputName">name</label>
                                            </div> 
                                        <!-- 이메일 -->
                                              <div class="form-floating mb-3">
                                                <input class="form-control" id="inputEmail" type="text" placeholder="Email" />
                                                <label for="inputEmail">email</label>
                                            </div>                                        
                                        <div class="row">
										  <div class="col-md-4">
											<div class="form-floating mb-3">
                                                <input class="form-control" id="inputTel1" type="text" placeholder="tel1" />
                                                <label for="inputTel">tel</label>
                                            </div> 
										  </div>
										  <div class="col-md-4">
											<div class="form-floating mb-3">
                                                <input class="form-control" id="inputTel2" type="text" placeholder="tel2" />
                                                <label for="inputTel">0000</label>
                                            </div> 
										  </div>
										  <div class="col-md-4">
											<div class="form-floating mb-3">
                                                <input class="form-control" id="inputTel3" type="text" placeholder="tel3" />
                                                <label for="inputTel">0000</label>
                                            </div> 
										  </div>
										</div>                                                                                     
                                                <a class="btn btn-primary btn-lg" href="singUp_success.jsp">가입</a>
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
