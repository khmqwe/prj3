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
	<title>11회원관리</title>
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

$(function() {
	
	$("#insert").click(function() {
		if (confirm("정말 삭제하시겠습니까?")) {
			$("#pFrm").submit();
		} else {
			return;
		}
	});
	
});


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
	</div>
	
	<div class = "right_bar">
		<form action="http://localhost/prj3/admin/11_memberManage_remove.do" method="post" id="pFrm" > 
		<div><h1 style= "font-weight: bold; margin-left: 20px; color: #000000; font-size: 30px; margin-top: 10px;">
		회원 관리</h1></div>
		<input type="hidden" name="m_id" value="${ amdd.m_id }"/>
		
	<div id = "contents_11" style="height:100%;">
		<div style = "height : 20px;"></div>
		<div><h2 style = "float : left; margin-left: 100px;">기본정보</h2></div><br/><br/>
		<table border = "1" cellspacing = "0" bordercolor = "#B4B4B4" style = "width : 600px ; height : 140px ; margin: auto ">
					<tr>
						<td class = "title_btn" width = 140px>이름</td>
						<td style="font-size: 20px;"><c:out value="${ amdd.m_name }"/></td>
					</tr>
					<tr>
						<td class = "title_btn" width = 140px>아이디</td>
						<td style="font-size: 20px;"><c:out value="${ amdd.m_id }"/></td>
					</tr>
					<tr>
						<td class = "title_btn" width = 140px>이메일</td>
						<td style="font-size: 20px;"><c:out value="${ amdd.m_email }"/></td>
					</tr>
					<tr>
						<td class = "title_btn" width = 140px>휴대전화</td>
						<td style="font-size: 20px;"><c:out value="${ amdd.m_telnum }"/></td>
					</tr>
					<tr>
						<td class = "title_btn" width = 140px>가입일</td>
						<td style="font-size: 20px;"><c:out value="${ amdd.m_date }"/></td>
					</tr>
					
				</table><br/><br/>
				
		
			<div style="padding-bottom: 20px;"><br/>
			<div><h2 style = "float : left; margin-left: 100px;">예약현황</h2></div><br/><br/>
			<table border = "1" cellspacing = "0" bordercolor = "#B4B4B4" style = "width : 700px ; height : 130px ; margin: auto ">
				<tr>
					<td class = "info_title" style = "height : 20px;">예약번호</td>
					<td class = "info_title">투어이름</td>
					<td class = "info_title">투어날짜</td>
					
				</tr>
				
				<c:forEach var="amdd2" items="${ amdd2List }">
				<tr>
					<td class = "info_detail" ><c:out value="${ amdd2.b_num }"/></td>
					<td class = "info_detail"><c:out value="${ amdd2.to_name }"/></td>
					<td class = "info_detail"><c:out value="${ amdd2.b_due_date }"/></td>
				</tr>
				</c:forEach>
			</table>
		</div>	
		</div>	
			<br/><br/>
			
			<br/><br/>
		
		<div id="buttons" style="margin-right: 50px;">
			
			<input type = "button" id="insert" name="insert" class = "btn btn-primary" value = "삭제" 
			style="width:80px;height:40px; font-weight:bold; font-size: 15px; margin-right: 10px;">
			<a href = "http://localhost/prj3/admin/10_memberList.do"><input type = "button" class = "btn btn-default" value = "취소"  
			style = "border: 0.5px solid #dfdfdf; font-size: 15px;"></a>
		</div><br/>
	
	</form>
	</div>
</div>
</body>
</html>