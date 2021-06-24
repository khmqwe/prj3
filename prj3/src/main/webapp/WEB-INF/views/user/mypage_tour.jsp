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
    <script type="text/javascript">
	    $(document).ready(function(){
	    	$('.btn-cancle').on('click', function(){
	    		console.log($(this)[0].id);
	    		$.ajax({
	    			url: 'mypage_tour_cancel.do',
	    			type: 'POST',
	    			dataType: 'text',
					data: {
						tr_num: $(this)[0].id
					},
					success: function(rst){
						if(rst === 'success'){
							alert('예약이 취소되었습니다.');
							location.href="mypage_tour.do";
						}else{
							alert('에러가 발생하였습니다.');
						}
					}
	    		});
	    	});
	    });
	</script>
    <body id="page-top">
<jsp:include page="header_login.jsp"/>  
<div class="main-content">

<div class="content-box">
<div class="mypage_title"><h2>예약현황</h2></div>
	
	<!--투어 -->
	<c:forEach var="item" items="${bookingList}" begin="0" end="10" step="1" varStatus="status">
	    <div class="tour_content">
		<div style="display: inline-block;">
		<img class="card-img-top" src='http://localhost/prj3/images/tour/${ item.thumb_img}'/>
		</div>
		<div class="tour_info">
		<h4>${item.to_name}</h4>
		<h6>예약날짜: ${item.b_due_date}</h6>
		<h6>예약번호: ${item.r_num }</h6>
		<div class="tour_del"><button type="button" class="btn btn-warning btn-cancle" id="${item.b_num}">예약취소</button></div>
		</div>
	</div>
	</c:forEach>
	
	<!-- 
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
	</div> -->
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
