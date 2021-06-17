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
    </head>
    <body id="page-top">
<jsp:include page="header.jsp"/>  
<div class="main-content">

                        <div class="row justify-content-center" style="margin-top: 200px">
                            <div class="col-lg-3">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header">
									<ol class="breadcrumb">
									  <li><a href="#"><h3 class="btn btn-primary">아이디 찾기</h3></a></li>
									  <li><a href="pass_find.jsp"><h3 class="btn btn-default">비밀번호 찾기</h3></a></li>
									</ol>
                                    </div>
                                    <div class="card-body">
                                        <form>
										<div style="text-align: center;">
										<h3>등록정보로 아이디 찾기</h3>
										회원가입 시 등록한 정보로 찾을 수 있습니다.
										</div><br>					
                                        <!-- 이름 입력 -->
                                             <div class="form-floating mb-3">
                                                <input class="form-control" id="inPutName" type="text" placeholder="name" />
                                                <label for="inputName">name</label>
                                            </div> 
                                        <!-- 이메일 -->                                      
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
                                       <div style="text-align:right;"><a class="btn btn-primary btn-lg" href="">아이디 찾기</a></div>
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
