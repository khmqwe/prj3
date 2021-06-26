<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <script type="text/javascript">
    $(function() {
		$("#login_btn").click(function() {
			$("#loginFrm").submit();
		});
	});//ready
    </script>
<jsp:include page="header.jsp"/>  
<div class="main-content">

                        <div class="row justify-content-center" style="margin-top: 200px">
                            <div class="col-lg-3">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Login</h3></div>
                                    <div class="card-body">
                                        <form  id="loginFrm" action="loginProcess.do" method="post">
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputEmail" type="email" name="MID" placeholder="name@example.com" />
                                                <label for="inputEmail">id</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputPassword" type="password"  name="MPASS" placeholder="Password" />
                                                <label for="inputPassword">Password</label>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="id_find.do">아이디/비밀번호를 잊으셨나요?</a>
                                                <input type="button" class="btn btn-primary" value="로그인"  id="login_btn" />
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="joinForm.do">회원이 아니신가요?</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>

</div>
<jsp:include page="footer.jsp"/>  
    </body>
</html>
