<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>02관리자메인</title>
	
	<!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../common/sidebar/css/styles.css" rel="stylesheet" />
	<!-- Custom fonts for this template-->
    <link href="http://localhost/prj3/common/startbootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

	<!-- bootstrap -->
	<link href="http://localhost/prj3/common/bootstrap-3.3.2/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- jQuery CDN(Contents Delivery Network) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	 <!-- bootstrap -->
	<script src="http://localhost/prj3/common/bootstrap-3.3.2/js/bootstrap.min.js"></script>
	<!-- style CSS -->
	<link href="http://localhost/prj3/common/css/admin_style.css" rel="stylesheet" type="text/css">
	
	<!-- style CSS -->
	<link href="http://localhost/prj3/common/css/admin_style.css" rel="stylesheet" type="text/css">
	<link href = "http://localhost/prj3/common/startbootstrap/css/sb-admin-2.css" rel="stylesheet">
	<link href = "http://localhost/prj3/common/startbootstrap/css/sb-admin-2.min.css" rel="stylesheet">
	
<style type = "text/css">

</style>

<script type="text/javascript">

</script>
</head>
<body>
<div class = "container_1">

	<div id = "left_bar" style = "height : 800px; margin-top: 100px; margin-right: 30px;">
	 	 <div class="d-flex" id="wrapper">
	 	 
            <!-- Sidebar-->
            <div class="border-end bg-white" id="sidebar-wrapper">
                <div class="sidebar-heading border-bottom bg-light"><span style = "font-size: 20px;">ADMIN</span></div>
                <div class="list-group list-group-flush">
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Dashboard</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">관광관리</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">회원관리</a>
                    <div style = "height : 200px;"></div>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">
                   <span style = "font-size: 12px;">관리자 로그아웃</span></a>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
            
	</div>
	
	
	<div class = "right_bar" style = "margin-left: 30px; width : 1200px; ">
		<div style = "margin-top: 20px; margin-left: 20px; "><h1 style= "font-weight: bold; float : left; color : black; font-size : 30px; ">DashBoard</h1></div>
		
	  

		<div id = "identity" style = "float : right ; width : 150px;">
			<div style = "float : left ;"><span class="glyphicon glyphicon-user" aria-hidden="true" id = "graphic" style = "width : 30%"></span></div>
			<div style = "float : left ;"><h4 style = "float : right ; width:80px; margin-top: 10px;">송준희님</h4></div>
		</div>
		
		<div style = "height : 100px;"></div>
		
		<div style = "margin-bottom: 30px;"><h3 style= "font-weight: bold;">인기관광지 Overview</h3></div>

		<div class = "graph">
		<!-- 	<div class="h_graph">
		        <ul>
		            <li style = "height : 15px;"></li>
		            <li><span class="g_term">좋아요<br/>Top1</span><span class="g_bar" style="width:50%"><span>659</span></span></li>
		            <li><span class="g_term">리뷰수</span><span class="g_bar" style="width:25%"><span>111</span></span></li>
		            <li style = "height : 30px;"></li>
		            <li><span class="g_term">좋아요<br/>Top2</span><span class="g_bar" style="width:45%"><span>532</span></span></li>
		            <li><span class="g_term">리뷰수</span><span class="g_bar" style="width:20%"><span>65</span></span></li>
		            <li style = "height : 30px;"></li>
		            <li><span class="g_term">좋아요<br/>Top3</span><span class="g_bar" style="width:20%"><span>223</span></span></li>
		            <li><span class="g_term">리뷰수</span><span class="g_bar" style="width:30%"><span>75</span></span></li>
		        </ul>
		    </div> -->
		    <!-- //UI Object -->
		<!-- Project Card Example -->
                <!-- Content Row -->
             <div class="row" style = "width : 500px;">

                 <!-- Content Column -->
                 <div class="content_column" style = "width : 500px; margin-left: 30px;">

                     <!-- Project Card Example -->
                     <div class="card shadow mb-4"  style = "width : 500px; height : 400px;">
                         <div class="card-header py-3"  style = "width : 500px; height : 60px; ">
                             <h6 class="m-0 font-weight-bold text-primary" style = "font-size: 25px; margin : auto;">월간 Top3</h6>
                         </div>
                         <div class="card-body"  style = "width : 500px;">
                             <h4 class="small font-weight-bold" style = "font-size: 15px;">좋아요 Top 1<span
                                     class="float-right">60%</span></h4>
                             <div class="progress mb-4">
                                 <div class="progress-bar bg-danger" role="progressbar" style="width: 60%"
                                     aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                             </div>
                             <h4 class="small font-weight-bold" style = "font-size: 15px;">리뷰수<span
                                     class="float-right">40%</span></h4>
                             <div class="progress mb-4">
                                 <div class="progress-bar bg-danger" role="progressbar" style="width: 20%"
                                     aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                             </div>
                             
                             <h4 class="small font-weight-bold"style = "font-size: 15px;">좋아요 Top 2<span
                                     class="float-right">60%</span></h4>
                             <div class="progress mb-4">
                                 <div class="progress-bar" role="progressbar" style="width: 60%"
                                     aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                             </div>
                             <h4 class="small font-weight-bold"style = "font-size: 15px;">리뷰수 <span
                                     class="float-right">80%</span></h4>
                             <div class="progress mb-4">
                                 <div class="progress-bar" role="progressbar" style="width: 60%"
                                     aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                             </div>
                             
                             <h4 class="small font-weight-bold"style = "font-size: 15px;">좋아요 Top 3 <span
                                     class="float-right">Complete!</span></h4>
                             <div class="progress">
                                 <div class="progress-bar bg-success" role="progressbar" style="width: 100%"
                                     aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                             </div>
                             <h4 class="small font-weight-bold"style = "font-size: 15px;">리뷰수 <span
                                     class="float-right">Complete!</span></h4>
                             <div class="progress">
                                 <div class="progress-bar bg-success" role="progressbar" style="width: 100%"
                                     aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
        
		</div>
		
		
		
		<div style = "width : 20px;"></div>
		
		<div class = "cards">
		    <!-- Content Row -->
                    <div class="row" style = "margin-left: 20px; margin-top: 40px;">

		<div style = "width : 400px; float : left;">
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-7 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2" >
                                <div class="card-body" >
                                    <div class="">
                                        <div class="col mr-2" >
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1" style = "font-size: 15px;">
                                                회원수<br/>(Total)</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800" style = "font-size: 18px;" >$40,000</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2" >
                                <div class="card-body">
                                    <div class="">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1" style = "font-size: 15px;">
                                                예약된 투어 수 (Monthly)</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800" style = "font-size: 18px;">$215,000</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
		</div>
		<div style = "width : 400px; float : left; font-size: 40px;">
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-7 col-md-6 mb-4">
                            <div class="card border-left-info shadow h-25 py-2">
                                <div class="card-body">
                                    <div class="">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1" style = "font-size: 15px;">리뷰수(Monthly)
                                            </div>
                                            <div class="">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800" style = "font-size: 18px;">50%</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-warning shadow h-25 py-2">
                                <div class="card-body">
                                    <div class="">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1" style = "font-size: 15px;">
                                               총수입 (Monthly)</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800" style = "font-size: 18px;">18</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                   </div>
               </div>
			<!-- <div class = "cards_area">
				<div style = "width : 400px; float : left;">
					<div class = "card" id = "members" style = "margin-left: 10px; float : left; margin-right: 30px; margin-bottom: 30px;" >
					회원수(Total)</div>
					<div class = "card" id = "tours" style = "float : left; " >
					예약된 투어 수 (Monthly)
					</div>
				</div>
				<br>
				<div style = "width : 400px; float : left;">
					<div class = "card" id = "reviews" style = "margin-left: 10px; float : left; margin-right: 30px; " >
					리뷰 수 (Monthly)
					</div>
					<div class = "card" id = "revenue" style = "float : left; ">
					총 수입 (Monthly)
					</div>
				</div>
			</div> -->
		</div>
		
		


	</div>
</div>
</body>
</html>