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
	 });
	$(function() {
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
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
        <img src='https://dummyimage.com/820x260/ced4da/6c757d.jpg' >
        <span>
            경복궁 풍경 1
        </span>
        <img src='https://dummyimage.com/820x260/ced4da/6c757d.jpg' >
        <span>
            경복궁 풍경 2
        </span>
        <img src='https://dummyimage.com/820x260/ced4da/6c757d.jpg' >
        <span>
            경복궁 풍경 3
        </span>
</div>
</figure>
</div>
	
	<div class="content-box" >
	<h1>경복궁</h1>
조선 왕조의 시작과 끝을 품은 600여 년 역사의 궁궐.
 담 밖으로 보이는 고층 빌딩과 한옥 건물이 어우러져 현대와 과거가 공존하는 묘한 분위기를 자아낸다. 
일제강점기 때 조선총독부 건물로 사용되면서 대부분 소실되었지만 지속적인 복원 사업으로 옛 모습을 찾아가고 있다.
취타대의 연주와 함께 수문장 교대식과 파수 의식이 열려 많은 여행객이 시간 맞춰 방문하고, 밤 풍경을 감상할 수 있는 야간 관람 기간이 되면 표를 구하기가 어려울 만큼 뜨거운 인기를 자랑한다.
	</div>

	<div class="content-box">
	<h3>기본정보</h3>
	<div id="map" style="width:800px;height:300px;"></div>
	<table>
	<tr>
	<th style="width:100px">주소</th>
	<td>서울특별시 종로구 사직로 161</td>
	</tr>
	<tr>
	<th>전화번호</th>
	<td>010-0000-0000</td>
	</tr>
	<tr>
	<th>이용시간</th>
	<td>09:00~17:00</td>
	</tr>
	
	</table>
	
		<div class="content-box">
		 <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-3 justify-content-left">
        <!-- 투어소개 -->
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">경복궁투어</h5>
                                    <!-- Product price-->
                                   15,000원
                                </div>
                            </div>
                        </div>
                    </div>
        <!-- 투어소개 -->
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/300x250/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">경복궁투어</h5>
                                    <!-- Product price-->
                                   15,000원
                                </div>
                            </div>
                        </div>
                    </div>        
         </div>
	</div>	
	<div class="content-box">
      <section class="mb-5">
          <div class="card bg-light">
              <div class="card-body">
                  <!-- Comment form-->
                  <form class="mb-4">
                  <textarea class="form-control" rows="3" placeholder="Join the discussion and leave a comment!"></textarea>
                   <div style="text-align: right;"><button type="button" class="btn btn-primary">submit</button></div>
                  </form>
                  
                  <!-- Single comment-->
                 <div class="comment"> 
                  <div class="d-flex">
                      <div class="ms-3">
                          <div class="fw-bold">홍길동</div>
                          한복입고 가면 무료로 입장 할 수 있어요. 날씨 좋은 날에 가서 사진도 많이 찍고 좋았네요.
                      </div>
                  </div>
                  </div>
                  
                  <!-- Single comment-->
                   <div class="comment">
                  <div class="d-flex">
                      <div class="ms-3">
                          <div class="fw-bold">Commenter Name</div>
                          When I look at the universe and all the ways the universe wants to kill us, I find it hard to reconcile that with statements of beneficence.
                      </div>
                  </div>  
                  </div>  
                                
              </div>
          </div>
      </section>	
	</div>
	
	
</div>
                        


</div>
<jsp:include page="footer.jsp"/>  
    </body>
</html>
