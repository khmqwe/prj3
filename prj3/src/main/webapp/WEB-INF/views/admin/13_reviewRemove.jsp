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
	<title>회원삭제</title>
	<!-- bootstrap -->
	<link href="http://localhost/team_prj/common/bootstrap-3.3.2/css/bootstrap.min.css" rel="stylesheet">
	<!-- jQuery CDN(Contents Delivery Network) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	 <!-- bootstrap -->
	<script src="http://localhost/team_prj/common/bootstrap-3.3.2/js/bootstrap.min.js"></script>
	<!-- style CSS -->
	<link href="http://localhost/team_prj/common/css/admin_style.css" rel="stylesheet" type="text/css">
	
<style type = "text/css">

</style>

<script type="text/javascript">

</script>
</head>
<body>
<div class = "container">
	<div class = "box">
		<div class = "content"style = "font-size: 30px;">
			리뷰를 삭제하시겠습니까? 
		</div>
		<br/><br/><br/><br/>
		<div class = "button_33_box">
			<input type = "button"  class = "btn btn-primary" value = "예" style = "width : 80px; height:40px; font-size: 15px;">
			<input type = "button" class = "btn btn-default"  value = "아니오"  style = "width : 80px; height:40px; font-size: 15px; ">
		</div>
	</div>

</div>
</body>
</html>