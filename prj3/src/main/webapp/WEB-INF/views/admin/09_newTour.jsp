<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:if test="${ empty sessionScope.id }">
	<c:redirect url="http://localhost/prj3/admin/admin_login.do"/>
</c:if>
<c:if test="${ empty sessionScope.id }">
	<c:redirect url="http://localhost/prj3/admin/admin_login.do"/>
</c:if>
<html>
<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>09새투어등록</title>
	
	<!-- style CSS -->
	<link href="http://localhost/prj3/common/css/admin_style.css" rel="stylesheet" type="text/css">
	
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	<!-- include summernote css/js -->
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<style type = "text/css">

</style>

<script type="text/javascript">
$(function() {
	  $('#summernote').summernote({
		  height: 250,                 // set editor height
		  width : 700,
		  minHeight: null,             // set minimum height of editor
		  maxHeight: null,             // set maximum height of editor
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
	  
	  $("#insert").click(function() {
		  
		  $("#pFrm").submit();
	  });
	  
	});
</script>
</head>
<body>
<div class = "container">
	<div class = "main">
		<form action="http://localhost/prj3/admin/addTourProcess.do" method="post" id="pFrm" enctype="multipart/form-data"> 
		<div><h1 style= "font-weight: bold; text-align: center; color: black;">새 투어 등록</h1></div>
		<input type="hidden" value=${ param.tr_num } name="tr_num"/>
		<div id = "contents_09">
		<div id = "title_bar">
			<input type = "text" id="tour_title" name="to_name" placeholder = "제목 : ">
			</div>
		<br/><br/>
		<table class="table table-bordered" style = "width : 800px ; height : 140px ; margin: auto; border-color: #ffffff ">
					<tr>
						<td class = "title_btn" width = 150px;>소요시간</td>
						<td><input type ="text" class="img_input" id="to_take_time" name="to_take_time"></td>
					</tr>
					<tr>
						<td class = "title_btn" width = 150px;>언어</td>
						<td style="text-align: left;">
							<select id="selectLang" name="la_num" style="font-size: 15px; margin-left: 20px;">
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
						<td class = "title_btn" width = 150px;>가격</td>
						<td><input type ="number" class="img_input" id="to_price" name="to_price"></td>
					</tr>
					<tr>
						<td class = "title_btn" width = 120px>썸네일사진</td>
						<td><input type ="file" id="thumb_img"  name="thumb_img" class="img_input"></td>
					</tr>
				</table><br/><br/>
				
			<div><h2 style = "text-align: left; margin-left: 100px;">Info</h2></div>
			<div style = "margin-left: 250px; width : 800px;">
			<textarea id="summernote" name="plan_explain"></textarea>
			</div>
				
			<div><br/>
			<div><h2 style = "float : left; margin-left: 100px;">이용안내</h2></div><br/><br/>
			<div>
			<table border = "1" cellspacing = "0" bordercolor = "#B4B4B4" style = "width : 700px ; height : 100px ; margin: auto ">
				<tr>
					<td class = "info_title">집합 시간</td>
					<td><input type = "time" class = "text_info" id="to_meeting_time" name="to_meeting_time"></td>
				</tr>
				<tr>
					<td  class = "info_title">집합 장소</td>
					<td><input type = "text" class = "text_info" id="to_meeting_loc" name="to_meeting_loc"></td>
				</tr>
			</table>
			</div>
			<br/><br/>
			
			<div><h2 style = "float : left; margin-left: 100px;">예약날짜</h2></div><br/><br/>
			<table border = "1" cellspacing = "0" bordercolor = "#B4B4B4" style = "width : 700px ; height : 100px ; margin: auto ">
				<tr>
					<td  class = "info_title">오픈 시작 날짜</td>
					<td><input type = "date" class = "text_info" id="to_start_date" name="to_start_date"></td>
				</tr>
				<tr>
					<td class = "info_title">오픈 마지막 날짜</td>
					<td><input type = "date" class = "text_info" id="to_end_date" name="to_end_date"></td>
				</tr>
			</table>
			</div>
			
		</div>
		<br/>
		
		<div id="buttons" >
			<input type = "button" id="insert"  name="insert"  class = "btn btn-primary" value = "작성" style="width:80px;height:40px; font-weight:bold;">
			<a href = "http://localhost/prj3/admin/07_tourManage.do?tr_num=${ param.tr_num }">
			<input type = "button" class = "btn btn-default" value = "취소"  style = "border: 0.5px solid #dfdfdf"></a>
		</div><br/>
	
	</form>
	</div>
</div>
</body>
</html>