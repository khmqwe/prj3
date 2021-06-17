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
<div class="content-box">
<div class="mypage_title"><h2>내정보 수정</h2></div>
</div>
<div class="content-box" style="margin-top:50px; text-align:center;">
<br><br>
<h3> <strong>회원님의 개인정보를 안전하게 보호하기 위해<br/>
	<span style="color: #DC1437;">인증 후 변경이 가능</span>합니다.</strong> </h3> <br>
	<br>
	<form action="" method="post" id="" name=""> 
	<input type="password" placeholder="비밀번호를 입력해주세요." id="pass" name="pass"/> <br><br>
	<input type="button" value="확인" id="submitBtn" class="btn btn-secondary" style="width: 200px;"/>
	</form>
	
</div>


</div>
<jsp:include page="footer.jsp"/>  
    </body>
</html>
