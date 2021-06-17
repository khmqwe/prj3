<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>05새글쓰기</title>
	
	<!-- bootstrap -->
	<link href="http://localhost/prj3/common/bootstrap-3.3.2/css/bootstrap.css" rel="stylesheet">
	<!-- jQuery CDN(Contents Delivery Network) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	 <!-- bootstrap -->
	<script src="http://localhost/prj3/common/bootstrap-3.3.2/js/bootstrap.min.js"></script>
	<!-- style CSS -->
	<link href="http://localhost/prj3/common/css/admin_style.css" rel="stylesheet" type="text/css">
	
	<!-- summernote -->
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
	<!-- summernote -->
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
	});
</script>
</head>
<body>
<div class = "container_1 " style = "height : 1600px;">
	<div class = "main" >
		<form action="" method="post" id="pFrm" > 
		<div><h1 style= "font-weight: bold; text-align: left; color: black;">새 글 쓰기</h1></div>
	
		<div id = "contents_05">
		<div id = "title_bar" style = "width : 1150px ;">
			<input type = "text" id="tour_title" placeholder = "제목 : ">
				<select id="select_local"  size = "0" style = "width : 100px;  height : 40px;">
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
		<br/><br/>
		<table class="table table-bordered" style = "width : 800px ; height : 140px ; margin: auto; border-color: #ffffff ">
					<tr>
						<td class = "title_btn" width = 120px>썸네일사진</td>
						<td><input type ="file" id="p_thumb_img"  name="p_thumb_img" class="img_input"></td>
					</tr>
					<tr>
						<td class = "title_btn" width = 120px>사진1</td>
						<td><input type ="file" id="img1"  name="img1"class="img_input" ></td>
					</tr>
					<tr>
						<td class = "title_btn" width = 120px>사진2</td>
						<td><input type ="file" id="img2"  name="img2"class="img_input"></td>
					</tr>
					<tr>
						<td class = "title_btn" width = 120px>사진3</td>
						<td><input type ="file" id="img3"  name="img3"class="img_input"></td>
					</tr>
				</table><br/><br/>
				
				<div><h3 style = "text-align: left; margin-left: 30px;">Thumbnail</h3></div>
				<div><input type = "text" id= "thumbnail"></div>
				<br/>
				
				<div><h3 style = "text-align: left; margin-left: 30px;">설명</h3></div>
				<div style = "margin-left: 250px; width : 800px;">
					<form method="post">
					  <textarea id="summernote" name="editordata"></textarea>
					</form>
			</div>
		
			<div><h3>기본정보</h3></div>
		<div id = "info_1">
			<div><br/>
			<div><h4>지도 설정</h4></div>
			<table border = "1" cellspacing = "0" bordercolor = "#B4B4B4" style = "width : 800px ; height : 140px ; margin: auto ">
				<tr>
					<td class = "info_title">위도</td>
					<td><input type = "text" class = "text_info"></td>
				</tr>
				<tr>
					<td  class = "info_title">경도</td>
					<td><input type = "text" class = "text_info"></td>
				</tr>
			</table>
			
			<br/><br/>
			
			<div><h4>정보</h4></div>
			<table border = "1" cellspacing = "0" bordercolor = "#B4B4B4" style = "width : 800px ; height : 140px ; margin: auto ">
				<tr>
					<td  class = "info_title">주소</td>
					<td><input type = "text" class = "text_info" ></td>
				</tr>
				<tr>
					<td class = "info_title">이용시간</td>
					<td><input type = "text" class = "text_info" ></td>
				</tr>
				<tr>
					<td class = "info_title">전화번호</td>
					<td><input type = "text" class = "text_info" ></td>
				</tr>
			</table>
			</div>
		</div>
			
		</div>
		<br/>
		
		<div id="buttons" >
			<a href = "http://localhost/prj3/admin/03_travelManage.jsp">
			<input type = "button" id="insert"  name="insert"  class = "btn btn-primary" value = "작성" style="width:80px;height:40px; font-weight:bold;"></a>
			<a href = "http://localhost/prj3/admin/03_travelManage.jsp">
			<input type = "button" class = "btn btn-default" value = "취소"  style = "border: 0.5px solid #dfdfdf"></a>
		</div><br/>
	
	</form>
	</div>
</div>
</body>
</html>