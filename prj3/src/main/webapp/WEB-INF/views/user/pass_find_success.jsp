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
    </head>
    <body id="page-top">
<jsp:include page="header.jsp"/>  
<div class="main-content">
				
				
			<div class="content-box" style="margin-top:300px; text-align: center;">
				<c:if test="${ np eq null }">
				<h2><strong>검색된 정보가 없습니다.</strong></h2>
				이름과 핸드폰번호를 확인해주세요. 
				<br><br>
				<a id="loginBtn" href="login.jsp" class="btn btn-primary" >확인</a>
				</c:if>
			
				<c:if test="${ np ne null }">
				<h2>
					<strong>임시 비밀번호는 <c:out value="${ np }"/> 입니다.</strong>
				</h2>
				<br> <a id="loginBtn" href="login.jsp" class="btn btn-primary" >확인</a>
				</c:if>
			</div>


</div>
<jsp:include page="footer.jsp"/>  
    </body>
</html>
