<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<title>06리뷰관리</title>
	
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

function isRemove() {
	if (confirm("정말 삭제하시겠습니까?")) {
		return true;
	} else {
		return false;
	}
}

</script>

</head>
<body>
<div class = "container_1">
	<div id = "left_bar" style = "height : 700px;">
	 	 <div class="d-flex" id="wrapper">
            <!-- Sidebar-->
            <div class="border-end bg-white" id="sidebar-wrapper">
                <div class="sidebar-heading border-bottom bg-light"><span style = "font-size: 20px;">ADMIN</span></div>
                <div class="list-group list-group-flush">
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Dashboard</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="03_travelManage.do">관광관리</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="10_memberList.do">회원관리</a>
                    <div style = "height : 200px;"></div>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">
                    <span style = "font-size: 12px;">관리자 로그아웃</span></a>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
            
	</div>
	
	<div class = "right_bar" style="height: 100%;">
		<div style = "height : 60px; width: 930px;"><h1 style= "font-weight: bold; margin-top: 20px; color : black">리뷰관리</h1></div>
	
	
	<div id = "contents_06" style="min-height: 800px; height:100%; padding-bottom: 60px;">
	<c:if test="${ not empty icdList }">
		<div style="display:inline-block; width: 580px; text-align: left; height: 70px; line-height: 40px; font-size:25px; color:#000; padding: 20px 0 0 0;">
			<c:out value="${ irtd.tr_name }"/>
		</div>
		<div style="display:inline-block; font-size:15px; color:#000; text-align: right; padding: 0 0 10px 80px; font-weight: bold;"><c:out value="${ irtd.a_name }"/></div><br/><br/>
		<div><h3 style = "font-size: 25px; color : black; font-weight: bold; padding: 0 0 10px 60px;">다녀왔어요</h3></div>
            
            <c:forEach var="icd" items="${ icdList }">
            <div class="card shadow mb-4" id= "review_content">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary" style = "font-size: 15px; float : left"><c:out value="${ icd.m_name }"/> &nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${ icd.r_date }"/></h6>
                   
                   <a href="http://localhost/prj3/admin/06_reviewManage_remove.do?r_num=${ icd.r_num }&tr_num=${ param.tr_num }" onclick= "isRemove()">
                   <input type = "button" class = "btn btn-primary" class="removeBtn" value = "삭제" style = "font-size: 13px; height : 24px; float : right;"/>
                   </a>
                </div>
                <div class="card-body">
                    ${ icd.r_content }
                </div>
            </div>
            </c:forEach>
    </c:if>
    <c:if test="${ empty icdList }">
    	<div style="position: relative; top: 350px;">
	    	<h1>등록된 리뷰가 없습니다</h1>
    	</div>
    </c:if>	
	</div>
	
		<nav style="text-align: center; font-size: 30px;">
		  <ul class="pagination">
		  	<c:if test="${ pages.prevBtn eq true }">
		    <li>
		      <a href="06_reviewManage.do?curPage=${ pages.curPage-1 }&tr_num=${ param.tr_num }" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		  	</c:if>
		  	
			<c:forEach var="i" begin="${ pages.startPageNum }" end="${ pages.endPageNum }">
				  <li>
					  <a href="06_reviewManage.do?curPage=${ i }&tr_num=${ param.tr_num }">
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
		      <a href="06_reviewManage.do?curPage=${ pages.curPage+1 }&tr_num=${ param.tr_num }" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  	</c:if>
		  	
		  </ul>
		</nav>
		
	</div>
</div>
</body>
</html>