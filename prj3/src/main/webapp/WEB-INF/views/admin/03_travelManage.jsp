<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:if test="${ empty sessionScope.id }">
	<c:redirect url="http://localhost/prj3/admin/admin_login.do"/>
</c:if>
<html>
<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>03관광관리</title>
	
	<!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
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
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="dashBoard.do">Dashboard</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="03_travelManage.do">관광관리</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="10_memberList.do">회원관리</a>
                    <div style = "height : 200px;"></div>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="logout.do">
                   <span style = "font-size: 12px;">관리자 로그아웃</span></a>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="http://localhost/prj3/common/js/scripts.js"></script>
            
	</div>
	
	<div class = "right_bar">
		<div><h1 style= "font-weight: bold; margin-left: 20px; color: #000000; font-size: 30px; margin-top: 20px;">관광관리</h1></div>
		<div><a href = "http://localhost/prj3/admin/05_newWrite.do">
		<input type="button"  value = "새 글 쓰기" id = "newWrite" class = "btn btn-default"/></a></div>
		
	<div class = "table">
		<table border = "1" cellspacing = "0" bordercolor = "#B4B4B4" class = "table table-striped"
		 style = "width : 1100px ; height : 600px ; margin: 20px ">
		<tr class = "content_title">
			<td width = 50px;>번호</td>
			<td width = 150px;>게시글 제목</td>
			<td width = 80px;>지역구분</td>
			<td width = 50px;>작성일</td>
			<td width = 55px;>게시글관리</td>
			<td width = 50px;>리뷰관리</td>
			<td width = 50px;>투어관리</td>
		</tr>
	
	
		<c:forEach var="mtd" items="${ mtdList }">
		<tr>
			<td><c:out value="${ mtd.rnum }"/></td>
			<td><c:out value="${ mtd.tr_name }"/></td>
			<td><c:out value="${ mtd.a_name }"/></td>
			<td><c:out value="${ mtd.tr_date }"/></td>
			<td><a href="04_contentsRevise.do?tr_num=${ mtd.tr_num }"><input type = "button" value = "수정" class = "btn btn-primary" ></a></td>
			<td><a href="06_reviewManage.do?tr_num=${ mtd.tr_num }"><input type = "button" value = "수정" class = "btn btn-primary" ></a></td>
			<td><a href="07_tourManage.do?tr_num=${ mtd.tr_num }"><input type = "button" value = "수정" class = "btn btn-primary" ></a></td>
		</tr>
		</c:forEach>
		</table>
		
		<nav style="text-align: center; font-size: 30px;">
		  <ul class="pagination">
		  	<c:if test="${ pages.prevBtn eq true }">
		    <li>
		      <a href="03_travelManage.do?curPage=${ pages.curPage-1 }&select=${ spVO.select }&name=${ spVO.name }" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		  	</c:if>
		  	
			<c:forEach var="i" begin="${ pages.startPageNum }" end="${ pages.endPageNum }">
				  <li>
					  <a href="03_travelManage.do?curPage=${ i }&select=${ spVO.select }&name=${ spVO.name }">
					  <span style="
					  <c:if test="${ pages.curPage eq i }">
					  color: #ffc800;
					  </c:if>
					  ">
					  <c:out value="${ i }"/>
					  </span>
					  </a>
				  </li>
			</c:forEach>
			
			<c:if test="${ pages.nextBtn eq true }">
		    <li>
		      <a href="03_travelManage.do?curPage=${ pages.curPage+1 }&select=${ spVO.select }&name=${ spVO.name }" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  	</c:if>
		  	
		  </ul>
		</nav>
		
	</div>
	
		
	</div>


</div>

</body>
</html>