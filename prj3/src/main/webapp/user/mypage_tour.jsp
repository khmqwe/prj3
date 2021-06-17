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
    </head>
    <body id="page-top">
<jsp:include page="header_login.jsp"/>  
<div class="main-content">

<div class="content-box">
<div class="mypage_title"><h2>예약현황</h2></div>
	
	<!--투어 -->
	<div class="tour_content">
		<div style="display: inline-block;"><img class="card-img-top" src="https://dummyimage.com/300x200/dee2e6/6c757d.jpg" alt="..." /></div>
		<div class="tour_info">
		<h4>서울경복궁투어</h4>
		<span>
		대중평화스러운 곳으로 인도하겠다는 커다란 행복스럽고 평화스러운 곳으로 인도하겠다는 커다란 이상을 품었기 때문이다</span>
		<h6>예약날짜:</h6>
		<h6>예약번호:</h6>
		<div class="tour_del"><button type="button" class="btn btn-warning">예약취소</button></div>
		</div>
	</div>
	
	<!--투어 -->
	<div class="tour_content">
		<div style="display: inline-block;">  <img class="card-img-top" src="https://dummyimage.com/300x200/dee2e6/6c757d.jpg" alt="..." /></div>
		<div class="tour_info">
		<h4>서울경복궁투어</h4>
		<span>
		대중평화스러운 곳으로 인도하겠다는 커다란 행복스럽고 평화스러운 곳으로 인도하겠다는 커다란 이상을 품었기 때문이다</span>
		<h6>예약날짜:</h6>
		<h6>예약번호:</h6>
		<div class="tour_del"><button type="button" class="btn btn-warning">예약취소</button></div>
		</div>
	</div>
	<!-- pagination -->
<div class="content-box" style="text-align: center;"> 
<nav>
  <ul class="pagination">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
</div>	
	<!-- pagination끝 -->	
</div>
</div>
<jsp:include page="footer.jsp"/>  
    </body>
</html>
