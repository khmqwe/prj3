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
	<title>08투어수정</title>
	
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
	
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	<!-- include summernote css/js -->
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	
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
	  $('#summernote').summernote({
		  height: 250,                 // set editor height
		  width : 700,
		  minHeight: 250,             // set minimum height of editor
		  maxHeight: 800,             // set maximum height of editor
		  focus: true,
		  placeholder : '내용 입력해주세요',
		  toolbar: [
	          ['style', ['style']],
	          ['font', ['bold', 'underline', 'clear']],
	          ['color', ['color']],
	          ['insert', ['picture']]
	        ] //툴바 필요한것만 놔두고 지워! 
	  });
	  $('.note-statusbar').hide();
	  
	  $("#selectLang").val("${aitd.la_num}").prop("selected", true);
	  
	  $("#insert").click(function() {
		  
		  $("#pFrm").submit();
		  
	  })
	});
</script>
</head>
<body>
<div class = "container_1 ">
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
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">
                    <span style = "font-size: 12px;">관리자 로그아웃</span></a>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
            
	</div>
	<div class = "right_bar" style = "height:1300px;">
		<form action="http://localhost/prj3/admin/08_tourRevise_modify.do" method="post" id="pFrm" enctype="multipart/form-data" > 
		<div><h1 style= "font-weight: bold; margin-left: 20px; color: #000000; font-size: 30px; margin-top: 10px;">투어 수정</h1></div>
		<input type="hidden" value="${ param.to_num }" name="to_num">
		<input type="hidden" value="${ param.tr_num }" name="tr_num">

		<div id = "contents_08">
		<div id = "title_bar">
			<input type = "text" id="tour_title" name="to_name" value="${ aitd.to_name }" placeholder = "제목 : ">
				
			</div>
		<br/><br/>
		<table border = "1" cellspacing = "0" bordercolor = "#B4B4B4" style = "width : 600px ; height : 140px ; margin: auto ">
					<tr>
						<td class = "title_btn" width = 140px>소요시간</td>
						<td style="font-size: 15px;"><input type="text" name="to_take_time" id="to_take_time" value="${ aitd.to_take_time }"></td>
					</tr>
					<tr>
						<td class = "title_btn" width = 140px>언어</td>
						<td>
							<select id="selectLang" name="la_num" style="font-size: 15px;">
								<option value="1">한국어</option>
								<option value="2">영어</option>
								<option value="3">일본어</option>
								<option value="4">중국어</option>
								<option value="5">스페인어</option>
								<option value="6">프랑스어</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class = "title_btn" width = 140px>가격</td>
						<td style="font-size: 15px;"><input type="number" name="to_price" id="to_price" value="${ aitd.to_price }"></td>
					</tr>
					<tr>
						<td class = "title_btn" width = 120px>썸네일사진</td>
						<td style="font-size: 15px;"><input type ="file" id="thumb_img"  name="thumb_img" class="img_input"></td>
					</tr>
					
				</table><br/><br/>
				
				<div><h2 style = "text-align: left; margin-left: 70px;">Info</h2></div>
			<div style = "margin-left: 100px; text-align: left;">
				  <textarea id="summernote" name="plan_explain">${ aitd.plan_explain }</textarea>
			</div>
				
			<div><br/>
			<div><h2 style = "float : left; margin-left: 100px;">이용안내</h2></div><br/><br/>
			<table border = "1" cellspacing = "0" bordercolor = "#B4B4B4" style = "width : 700px ; height : 100px ; margin: auto ">
				<tr>
					<td class = "info_title">집합시간</td>
					<td><input type = "time" class = "text_info" id="to_meeting_time" name="to_meeting_time" value="${ aitd.to_meeting_time }"></td>
				</tr>
				<tr>
					<td  class = "info_title">집합장소</td>
					<td><input type = "text" class = "text_info" id="to_meeting_loc" name="to_meeting_loc" value="${ aitd.to_meeting_loc }"></td>
				</tr>
			</table>
			
			<br/><br/>
			
			<div><h2 style = "float : left; margin-left: 100px;">예약날짜</h2></div><br/><br/>
			<table border = "1" cellspacing = "0" bordercolor = "#B4B4B4" style = "width : 700px ; height : 100px ; margin: auto ">
				<tr>
					<td  class = "info_title">오픈 시작 날짜</td>
					<td><input type = "date" class = "text_info" id="to_start_date" name="to_start_date" value="${ aitd.to_start_date }"></td>
				</tr>
				<tr>
					<td class = "info_title">오픈 마지막 날짜</td>
					<td><input type = "date" class = "text_info" id="to_end_date" name="to_end_date" value="${ aitd.to_end_date }"></td>
				</tr>
			</table>
			</div>
			
		</div>
		<br/>
		
		<div id="buttons" >
			<input type = "button" id="insert"  name="insert"  class = "btn btn-primary" value = "수정" 
			style="width:80px;height:40px; font-weight:bold; font-size: 15px;">
			<a href = "http://localhost/prj3/admin/07_tourManage.do?tr_num=${ param.tr_num }">
			<input type = "button" class = "btn btn-default" value = "취소"  style = "border: 0.5px solid #dfdfdf; font-size: 15px;">
			</a>
		</div><br/>
	
	</form>
	</div>
</div>
</body>
</html>