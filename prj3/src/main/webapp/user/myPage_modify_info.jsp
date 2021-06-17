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
        <script src="../common/js/scripts.js"></script>
        <!-- jQuery CDN(Contents Delivery Network) -->
 		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>        
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../common/css/styles.css" rel="stylesheet"/>
        
                <script type="text/javascript">

        $(function() { 
       		//아이디 중복확인 팝업 
       		$("#m_pass").click(function() {
       			window.open("mypage_modify_pass.jsp","id_pop","width=500px,height=300px");
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
									 <div class="card-header"><h3 class="text-center font-weight-light my-4">회원정보 변경</h3></div>
                                    <div class="card-body">
                                    
                                        <form>
										<div style="text-align: center;">
										회원정보를 변경할 수 있습니다. 
										</div><br>		                                        					
                                        <!-- 아이디 입력 -->
                                             <div class="form-group mb-3">
                                                <label for="inputName">id</label>
                                                <span>id1234</span>
                                            </div> 
                                        <!-- 비밀번호 변경 -->
                                             <div class="form-group mb-3">
                                                <a class="btn btn-primary btn-lg" href="" id="m_pass">비밀번호 변경</a>
                                            </div> 
                                        <!-- 이름 입력 -->
                                             <div class="form-group mb-3">
                                                <label for="inputName">name</label>
                                                <input class="form-control" id="inPutName" type="text" placeholder="name" value="강인섭"/>
                                            </div> 
                                        <!-- 이메일 -->
                                              <div class="form-group mb-3">
                                                <label for="inputEmail">email</label>
                                                <input class="form-control" id="inputEmail" type="text" placeholder="Email" value="ryeee@naver.com" />
                                            </div>                                        
                                        <div class="row">
										  <div class="col-md-4">
											<div class="form-group mb-3">
                                                <label for="inputTel">tel</label>
                                                <input class="form-control" id="inputTel1" type="text" placeholder="" value="010"/>
                                            </div> 
										  </div>
										  <div class="col-md-4">
											<div class="form-group mb-3">
                                                <label for="inputTel">　</label>
                                                <input class="form-control" id="inputTel2" type="text" placeholder="" value="2336" />
                                            </div> 
										  </div>
										  <div class="col-md-4">
											<div class="form-group mb-3">
                                                <label for="inputTel">　</label>
                                                <input class="form-control" id="inputTel3" type="text" placeholder="" value="8837"/>
                                            </div> 
										  </div>
										</div>
										<div style="text-align:right;">
										<a class="btn btn-primary btn-lg" href="">변경</a>
										<a class="btn btn-primary btn-lg" href="">취소</a>
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
