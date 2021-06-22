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
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="http://localhost/prj3/common/css/styles.css" rel="stylesheet"/>
        <!-- jQuery CDN(Contents Delivery Network) -->
 		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <!-- 지도API -->
        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=59ec84d8e23979dbf76a7062c762864d"></script>
        
        <!-- coin slider -->
		 <script type="text/javascript" src="http://localhost/prj3/common/coin/coin-slider.js"></script>
		 <link rel="stylesheet" href="http://localhost/prj3/common/coin/coin-slider-styles.css" type="text/css" />
 <script type="text/javascript">
 

 </script>
	<script>
	 $(document).ready(function() {
	     $('#coin-slider').coinslider({ 
	    	 width: 820, 
	    	 navigation: true, 
	    	 delay: 2000,
	    	 effect:'rain'
	     });
	     
	     if ("${sessionScope.mid}" == "") {
	    	 $("#likeDiv").css("display", "none");
	     } else {
	    	 $("#likeDiv").css("display", "block");
	     }
	     
	     $("#like").click(function() {
	    	 $.ajax({
	 			
	 			url:"travel_like.do",
	 			data: "tr_num="+${ travelInfo.tr_num },
	 			dataType: "json",
	 			type:"get",
	 			error:function(xhr, status, error) {
	 				console.log("스테터스 : " + xhr.status);
	 				console.log("스테터스 텍스트 : " + xhr.statusText);
	 				console.log("에러 : " + xhr.error);
	 			},
	 			success:function(json) {
	 				if (json.like == "yes") {
	 					$("#like").html("♥");
	 				} else {
	 					$("#like").html("♡");
	 				}
	 			}
	 			
	 		});
	     });
	    	 
	     $('#commentBtn').click(function() {
	    	
	    	 if ("${sessionScope.mid}" == "") {
	    		 alert("로그인 후 댓글을 입력할 수 있습니다.");
	    	 } else {
	    		 //로그인이 되었을 때 submit으로 Controller로 넘기는 부분.
	    	 }
				    	 
	     });
	     
	 });
	$(function() {
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(${ travelInfo.tr_latitude }, ${ travelInfo.tr_longitude }), // 지도의 중심좌표
	        level: 4 // 지도의 확대 레벨
	    };

	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

	// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
	var mapTypeControl = new kakao.maps.MapTypeControl();

	// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
	// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
	map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

	// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
	var zoomControl = new kakao.maps.ZoomControl();
	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
	});
	
	
	</script>
        
        
    </head>
    <body id="page-top">
<jsp:include page="header.jsp"/>  
<div class="main-content">

<div style="text-align: center; margin-top:150px;">
 <!-- Preview image figure-->
  <figure class="mb-4">
	<div id="coin-slider"  class="content-box" >
        <img src='http://localhost/prj3/images/travel/${ travelInfo.img1 }'/>
        <span>
            <c:out value="${ travelInfo.tr_name }"/> 풍경 1
        </span>
        <img src='http://localhost/prj3/images/travel/${ travelInfo.img2 }'/>
        <span>
            <c:out value="${ travelInfo.tr_name }"/> 풍경 2
        </span>
        <img src='http://localhost/prj3/images/travel/${ travelInfo.img3 }'/>
        <span>
            <c:out value="${ travelInfo.tr_name }"/> 풍경 3
        </span>
</div>
</figure>
</div>
	<div class="content-box" >
	<div style="text-align: right;" id="likeDiv">
	<span style="font-size: 30px; padding-bottom: 20px;">Like</span>
	<c:if test="${ heart eq true }">
		<span id="like" style="color:#DC143C;font-size: 60px; cursor: pointer;">♥</span>
	</c:if>
	<c:if test="${ heart eq false }">
		<span id="like" style="color:#DC143C;font-size: 60px; cursor: pointer;">♡</span>
	</c:if>
	</div>
	<h1><c:out value="${ travelInfo.tr_name }"/></h1>
	${ travelInfo.tr_explain }
	</div>

	<div class="content-box">
	<h3>기본정보</h3>
	<div id="map" style="width:800px;height:300px;"></div>
	<br/>
	<table style="border-spacing: 30px; border-collapse: separate;">
	<tr>
	<th style="width:100px">주소</th>
	<td><c:out value="${ travelInfo.tr_addr }"/></td>
	</tr>
	<tr>
	<th>전화번호</th>
	<td><c:out value="${ travelInfo.tr_telnum }"/></td>
	</tr>
	<tr>
	<th>이용시간</th>
	<td>
	<c:forTokens var="time" items="${ travelInfo.tr_time }" delims=",">
		<c:out value="${ time }"/><br/>
	</c:forTokens>
	</td>
	</tr>
	
	</table>
	
		<div class="content-box">
		 <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-3 justify-content-left">
        <!-- 투어소개 -->
        	<c:if test="${ not empty travelTour }">
        		<c:forEach var="tour" items="${ travelTour }">	
		             <div class="col mb-5">
		                 <div class="card h-100">
		                     <!-- Product image-->
		                     <a href="tour_info.do?to_num=${ tour.to_num }">
		                     <img class="card-img-top" src="http://localhost/prj3/images/tour/${ tour.thumb_img }" alt="..." />
		                     </a>
		                     <!-- Product details-->
		                     <div class="card-body p-4">
		                         <div class="text-center">
		                             <!-- Product name-->
		                             <h5 class="fw-bolder"><c:out value="${ tour.to_name }"/></h5>
		                             <!-- Product price-->
		                            <c:out value="${ tour.to_price }"/>원
		                         </div>
		                     </div>
		                 </div>
		             </div>
		     	</c:forEach>
             </c:if> 
                   
         </div>
	</div>	
	<div class="content-box">
      <section class="mb-5">
          <div class="card bg-light">
              <div class="card-body">
                  <!-- Comment form-->
                  <form class="mb-4">
                  <textarea name="r_content" id="r_content" class="form-control" rows="3" placeholder="Join the discussion and leave a comment!"></textarea>
                   <div style="text-align: right;"><button type="button" class="btn btn-primary" id="commentBtn" name="commentBtn">submit</button></div>
                  </form>
                  
                  <!-- Single comment-->
                 <c:if test="${ not empty travelComment }">
                 <c:forEach var="cment" items="${ comments }">
	                <div class="comment"> 
	                	<div class="d-flex">
	                    	<div class="ms-3" style="width:700px;">
	                        	<div class="fw-bold"><c:out value="${ cment.m_name }"/></div>
	                         	${ cment.r_content }<br/><br/>
	                         	<div style="text-align: right; font-size: 15px;"><c:out value="${ cment.r_date }"/></div>
	                         	
	                    	</div>
	                 	</div>
	                 </div>
	              </c:forEach>
                  </c:if>
                  
                  
                  
              </div>
              
              <nav style="text-align: center;">
				  <ul class="pagination">
				  
				    <c:if test="${ pages.prevBtn eq true }">
				    <li>
				      <a href="travel_info.do?curPage=${ pages.curPage-1 }&tr_num=${ travelInfo.tr_num }" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				  	</c:if>
				  	
					<c:forEach var="i" begin="${ pages.startPageNum }" end="${ pages.endPageNum }">
						  <li class="
						  <c:if test="${ pages.curPage eq i }">
							  active
						  </c:if>
						  ">
							  <a href="travel_info.do?curPage=${ i }&tr_num=${ travelInfo.tr_num }">
							  <c:out value="${ i }"/>
							  </a>
						  </li>
					</c:forEach>
				    
					<c:if test="${ pages.nextBtn eq true }">
				    <li>
				      <a href="travel_info.do?curPage=${ pages.curPage+1 }&tr_num=${ travelInfo.tr_num }" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  	</c:if>
				  	
				  </ul>
				</nav>

          </div>
      </section>	
	</div>
	
	
</div>
                        


</div>
<jsp:include page="footer.jsp"/>  
    </body>
</html>
