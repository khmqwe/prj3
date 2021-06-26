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
input[type=number]::-webkit-inner-spin-button, 
input[type=number]::-webkit-outer-spin-button { 
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    margin: 0; 
}
</style>

<script type="text/javascript">
$(function() {
	$('#summernote').summernote({
	    placeholder: '입력해주세요.',
	    tabsize: 2,
	    height: 400,
	    toolbar: [
	      ['style', ['style']],
	      ['font', ['bold', 'underline', 'clear']],
	      ['color', ['color']],
	      ['para', ['ul', 'ol', 'paragraph']],
	      ['table', ['table']],
	      ['insert', ['picture']]
	    ]
	 });
	$('.note-statusbar').hide();
	
	$("#insert").click(function() {
		
		var title=$("#tour_title").val();
		if(title == ""){
			alert("제목을 입력해 주세요.");
			$("#tour_title").focus();
			return;
		}//end if
		
		var local=$("#select_local").val();
		if(local == "none"){
			alert("지역을 선택해주세요.");
			return;
		}//end if
		
		var thumb_img=$("#p_thumb_img").val();
		if( thumb_img == "" ){
			alert("업로드할 썸네일 이미지를 선택해주세요.");
			return;
		}//end if
		
		var img1=$("#img1").val();
		if( img1 == "" ){
			alert("업로드할 이미지1을 선택해주세요.");
			return;
		}//end if
		
		var img2=$("#img2").val();
		if( img2 == "" ){
			alert("업로드할 이미지2를 선택해주세요.");
			return;
		}//end if
		
		var img3=$("#img3").val();
		if( img3 == "" ){
			alert("업로드할 이미지3을 선택해주세요.");
			return;
		}//end if
		
		var summernote=$("#summernote").val();
		if( summernote == "" ){
			alert("내용을 작성해 주세요.");
			$("#summernote").focus();
			return;
		}//end if
		
		var latitude=$("#latitude").val();
		if( latitude == "" ){
			alert("위도를 입력해주세요.");
			return;
		}//end if
		
		var longitude=$("#longitude").val();
		if( longitude == "" ){
			alert("경도를 입력해주세요.");
			return;
		}//end if
		
		var addr=$("#addr").val();
		if( addr == "" ){
			alert("주소를 입력해주세요.");
			return;
		}//end if
		
		//파일 확장자 확인부분
		var blockExt=["jpg","gif","png","bmp"];
		var nameArr=[thumb_img,img1,img2,img3];
		var blockFlag=false;
		var flag_cnt = 0;
		
		for (var i = 0; i < nameArr.length; i++) {
			var ext=nameArr[i].substring(nameArr[i].lastIndexOf(".")+1);
			for(var j = 0 ; j < blockExt.length ; j++){
				if( ext.toLowerCase() == blockExt[j]){
					blockFlag=true;
					break;
				}//end if
			}//end for
			if (blockFlag) {
				flag_cnt = flag_cnt + 1;
			}
			blockFlag=false;
		}
		if( flag_cnt != 4 ){
			alert("jpg,gif,png,bmp만 업로드 할 수 있습니다.");
			return;
		}
		
		if (confirm("정말 추가하시겠습니까?")) {
			$("#pFrm").submit();
		}
		
	});
	
});
</script>
</head>
<body>
<div class = "container_1 " style = "height : 100%;">
	<div class = "main" >
		<form action="03_travelManage_add.do" method="post" id="pFrm" enctype="multipart/form-data"> 
			<div><h1 style= "font-weight: bold; text-align: left; color: black;">새 글 쓰기</h1></div>
		
			<div id = "contents_05" style="height: 100%; padding-bottom: 30px;">
			<div id = "title_bar" style = "width : 1150px; text-align: left; padding-top: 20px;">
				<input type = "text" id="tour_title" name="tr_name" placeholder = "제목 : " style="font-size: 25px; width: 500px;">
					<select id="select_local" name="a_num"  size = "0" style = "width : 100px;  height : 40px;">
						<option value="none">지역선택</option>
						<option value="1">서울</option>
						<option value="2">대전</option>
						<option value="3">대구</option>
						<option value="4">부산</option>
						<option value="5">광주</option>
						<option value="6">경기도</option>
						<option value="7">강원도</option>
						<option value="8">충청도</option>
						<option value="9">경상도</option>
						<option value="10">전라도</option>
						<option value="11">제주도</option>
					</select>
				</div>
			<br/><br/>
			<table class="table table-bordered" style = "width : 800px ; height : 140px ; margin: auto; border-color: #ffffff ">
						<tr>
							<td class = "title_btn" width = 120px>썸네일사진</td>
							<td><input type ="file" id="p_thumb_img"  name="thumb_img" class="img_input"></td>
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
					<div><input type = "text" id= "thumbnail" name= "tr_simple_explain"></div>
					<br/>
					
					<div>
						<h3 style = "text-align: left; margin-left: 30px;">설명</h3>
					</div>
					<div style="margin: 0 180px 0 180px; text-align: left;">
						<textarea id="summernote" name="tr_explain"></textarea>
					</div>
			
				<div><h3>기본정보</h3></div>
			<div id = "info_1">
				<div><br/>
				<div><h4>지도 설정</h4></div>
				<table border = "1" cellspacing = "0" bordercolor = "#B4B4B4" style = "width : 800px ; height : 140px ; margin: auto ">
					<tr>
						<td class = "info_title">위도</td>
						<td><input type = "number" class = "text_info" id="latitude" name="tr_latitude"></td>
					</tr>
					<tr>
						<td  class = "info_title">경도</td>
						<td><input type = "number" class = "text_info" id="longitude" name="tr_longitude"></td>
					</tr>
				</table>
				
				<br/><br/>
				
				<div><h4>정보</h4></div>
				<table border = "1" cellspacing = "0" bordercolor = "#B4B4B4" style = "width : 800px ; height : 140px ; margin: auto ">
					<tr>
						<td  class = "info_title">주소</td>
						<td><input type = "text" class = "text_info" id="addr" name="tr_addr"></td>
					</tr>
					<tr>
						<td class = "info_title">이용시간</td>
						<td><input type = "text" class = "text_info" id="time" name="tr_time"></td>
					</tr>
					<tr>
						<td class = "info_title">전화번호</td>
						<td><input type = "text" class = "text_info" id="telnum" name="tr_telnum"></td>
					</tr>
				</table>
				</div>
			</div>
				
			</div>
			<br/>
			
			<div id="buttons" >
				<input type = "button" id="insert"  name="insert"  class = "btn btn-primary" value = "작성" style="width:80px;height:40px; font-weight:bold;"/>
				<a href = "http://localhost/prj3/admin/03_travelManage.do">
				<input type = "button" id="cancel"  name="cancel" class = "btn btn-default" value = "취소"  style = "border: 0.5px solid #dfdfdf"></a>
			</div><br/>
	
		</form>
	</div>
</div>
</body>
</html>