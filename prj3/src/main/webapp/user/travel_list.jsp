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
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../common/css/styles.css" rel="stylesheet"/>
        <!-- jQuery CDN(Contents Delivery Network) -->
 		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
 		<script type="text/javascript">
 		</script>
 		
    </head>
    <body id="page-top">
<jsp:include page="header.jsp"/>  

<!-- 검색창 -->
<div class="main-content">
<div class="content-box" style="width: 1000px; margin-top: 90px;margin-bottom:30px"> 
	<form id="contactForm">
          <div class="row">
		  <div class="col-md-10">
		    <input class="form-control" id="name" type="text" placeholder="가고싶은 곳을 검색하세요 *" required="required"/>
		  </div>
		  <div class="col-md-2">
		    <button type="button" class="btn btn-warning" style="width:200px">GO</button>
		  </div>
		</div>
	</form>
	<br>
	서울 | 대전 | 대구 | 부산 | 광주 |경기도 | 강원도 | 충청도 | 경상도 | 전라도 | 제주도 
</div>     
<!-- 목록창 -->           
<div class="content-box" >
	<div style="display: inline-block">
	<img class="img-fluid-main" src="../assets/img/portfolio/3.jpg" alt="..." />
	</div>
	<div  style="display: inline-block; vertical-align: top;">
	<h2>경복궁</h2>
	설명
	</div>
</div>
<!-- 목록창 -->           
<div class="content-box" >
	<div style="display: inline-block">
	<img class="img-fluid-main" src="../assets/img/portfolio/3.jpg" alt="..." />
	</div>
	<div  style="display: inline-block; vertical-align: top;">
	<h2>경복궁</h2>
	설명
	</div>


</div>

</div>
<jsp:include page="footer.jsp"/>  
    </body>
</html>
