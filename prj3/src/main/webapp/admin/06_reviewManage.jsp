<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<title>06리뷰관리</title>
	
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
	<div id = "left_bar" style = "height : 800px;">
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
	
	<div class = "right_bar">
		<div style = "height : 60px;"><h1 style= "font-weight: bold; margin-top: 20px; color : black">리뷰관리</h1></div>
		
	<div id = "contents_06">
		<div id = "title_bar">
			<input type = "text" id="tour_title" placeholder = "제목 : " style = "font-size: 14px;">
			<select id="select_local"  size = "0" style = "width : 100px;  height : 40px; font-size: 14px;">
				<option>지역선택</option>
				<option>서울</option>
				<option>경기</option>
				<option>강원</option>
				<option>대전</option>
				<option>대구</option>
				<option>부산</option>
				<option>광주</option>
				<option>충청도</option>
				<option>전라도</option>
				<option>제주도</option>
			</select>
		</div>
		<div><h3 style = "font-size: 25px; color : black; font-weight: bold;">다녀왔어요</h3></div>
            
            <div class="card shadow mb-4" id= "review_content">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary" style = "font-size: 15px; float : left">송준희</h6>
                   <a href = "http://localhost/prj3/admin/13_reviewRemove.jsp">
                   <input type = "button" class = "btn btn-primary" value = "삭제" style = "font-size: 13px; height : 24px; float : right;"></a>
                </div>
                <div class="card-body">
                    리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰
                    리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰
                    리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰
                    리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰
                    리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰
                    리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰
                </div>
            </div>
            <div class="card shadow mb-4" id= "review_content">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary" style = "font-size: 15px; float : left">송준희</h6>
                     <a href = "http://localhost/prj3/admin/13_reviewRemove.jsp">
                     <input type = "button" class = "btn btn-primary" value = "삭제" style = "font-size: 13px; height : 24px; margin-bottom:5px; float : right;"></a>
                </div>
                <div class="card-body">
                    리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰
                    리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰
                    리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰
                </div>
            </div>
            <div class="card shadow mb-4" id= "review_content">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary" style = "font-size: 15px; float : left">송준희</h6>
                    <a href = "http://localhost/prj3/admin/13_reviewRemove.jsp">
                     <input type = "button" class = "btn btn-primary" value = "삭제" style = "font-size: 13px; height : 24px; float : right;"></a>
                </div>
                <div class="card-body">
                    리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰
                    리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰
                    리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰
                </div>
            </div>
            <div class="card shadow mb-4" id= "review_content">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary" style = "font-size: 15px; float : left">송준희</h6>
                     <a href = "http://localhost/prj3/admin/13_reviewRemove.jsp">
                     <input type = "button" class = "btn btn-primary" value = "삭제" style = "font-size: 13px; height : 24px; float : right;"></a>
                </div>
                <div class="card-body">
                    리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰
                    리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰
                    리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰
                </div>
            </div>
            
            <a href = "http://localhost/prj3/admin/03_travelManage.jsp">
            <input type = "button" value = "목록" id = "btn_list" class = "btn btn-primary" style = "font-size: 15px;"/>
            </a>
	</div>
		<!-- <nav>
		<ul class="pagination" style = "float: left ; margin-left: 350px; font-size: 15px;">
			    <li>
			      <a href="#" aria-label="Previous">
			        <span aria-hidden="true" style="color: #3B8841">&laquo;</span>
			      </a>
			    </li>
			    <li><a href="#" style="color: #3B8841">1</a></li>
			    <li><a href="#" style="color: #3B8841">2</a></li>
			    <li><a href="#" style="color: #3B8841">3</a></li>
			    <li><a href="#" style="color: #3B8841">4</a></li>
			    <li>
			      <a href="#" aria-label="Next">
			        <span aria-hidden="true" style="color: #3B8841">&raquo;</span>
			      </a>
			    </li>
			</ul>
		</nav> -->
	</div>


</div>

</body>
</html>