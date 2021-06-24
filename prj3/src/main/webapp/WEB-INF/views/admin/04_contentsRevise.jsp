<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>04게시물수정</title>
	
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
	<!-- Custom fonts for this template-->
    <link href="http://localhost/prj3/common/startbootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

	
	<!-- style CSS -->
	<link href="http://localhost/prj3/common/css/admin_style.css" rel="stylesheet" type="text/css">
	
	<!-- include summernote css/js -->
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	
	
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
	  
	  $("#select_local").val("${itd.a_num}").prop("selected", true);
	  
	  $("#modify").click(function() {
			
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
				thumb_img = "${itd.thumb_img}";
				console.log(thumb_img);
			}//end if
			
			var img1=$("#img1").val();
			if( img1 == "" ){
				img1="${itd.img1}";
				console.log(img1);
			}//end if
			
			var img2=$("#img2").val();
			if( img2 == "" ){
				img2="${itd.img2}";
				console.log(img2);
			}//end if
			
			var img3=$("#img3").val();
			if( img3 == "" ){
				img3="${itd.img3}";
				console.log(img3);
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
			
			if (confirm("정말 수정하시겠습니까?")) {
				$("#pFrm").submit();
			}
			
		});
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
	<div class = "right_bar" style = "height : 1400px;">
		<form action="04_contentsRevise_mod.do" method="post" id="pFrm" name="pFrm" enctype="multipart/form-data"> 
		<input type="hidden" name="tr_num" value="${ param.tr_num }"/>
		<div><h1 style= "font-weight: bold; margin-left: 20px; color: #000000; font-size: 30px; margin-top: 10px;">게시글 수정</h1></div>
		
		
		<div id = "contents_04">
		<div id = "title_bar">
			<input type = "text" id="tour_title" name="tr_name" value="${ itd.tr_name }" placeholder = "제목 : ">
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
		<table border = "1" cellspacing = "0" bordercolor = "#B4B4B4" style = "width : 800px ; height : 140px ; margin: auto ">
					<tr>
						<td class = "title_btn" width = 120px>썸네일사진</td>
						<td><input type ="file" id="p_thumb_img"  name="thumb_img" class="img_input">(선택 안 할 경우 기존 이미지)</td>
					</tr>
					<tr>
						<td class = "title_btn" width = 120px>사진1</td>
						<td><input type ="file" id="img1" name="img1"class="img_input" >(선택 안 할 경우 기존 이미지)</td>
					</tr>
					<tr>
						<td class = "title_btn" width = 120px>사진2</td>
						<td><input type ="file" id="img2" name="img2"class="img_input">(선택 안 할 경우 기존 이미지)</td>
					</tr>
					<tr>
						<td class = "title_btn" width = 120px>사진3</td>
						<td><input type ="file" id="img3"  name="img3"class="img_input">(선택 안 할 경우 기존 이미지)</td>
					</tr>
				</table><br/><br/>
				
				<div><h3 style = "text-align: left; margin-left: 30px;">Thumbnail</h3></div>
				<div style="font-size: 20px;"><input type="text" value="${ itd.tr_simple_explain }" id="thumbnail" name="tr_simple_explain"></div>
				<br/>
				
				<div><h3 style = "text-align: left; margin-left: 30px;">설명</h3></div>
				<div style = "margin-left: 100px; text-align: left;">
				  <textarea id="summernote" name="tr_explain">${ itd.tr_explain }</textarea>
				</div>
		
			<div><h3>기본정보</h3></div>
		<div id = "info">
			<div><br/>
			<div><h4>지도 설정</h4></div>
			<table border = "1" cellspacing = "0" bordercolor = "#B4B4B4" style = "width : 800px ; height : 140px ; margin: auto ">
				<tr>
					<td class = "info_title">위도</td>
					<td><input type = "text" value="${ itd.tr_latitude }" class="text_info" id="latitude" name="tr_latitude"></td>
				</tr>
				<tr>
					<td  class = "info_title">경도</td>
					<td><input type = "text" value="${ itd.tr_longitude }" class="text_info" id="longitude" name="tr_longitude"></td>
				</tr>
			</table>
			
			<br/><br/>
			
			<div><h4>정보</h4></div>
			<table border = "1" cellspacing = "0" bordercolor = "#B4B4B4" style = "width : 800px ; height : 140px ; margin: auto ">
				<tr>
					<td  class = "info_title">주소</td>
					<td><input type = "text" value="${ itd.tr_addr }" class = "text_info" id="addr" name="tr_addr"></td>
				</tr>
				<tr>
					<td class = "info_title">이용시간</td>
					<td><input type = "text" value="${ itd.tr_time }" class = "text_info" name="tr_time"></td>
				</tr>
				<tr>
					<td class = "info_title">전화번호</td>
					<td><input type = "text" value="${ itd.tr_telnum }" class = "text_info" name="tr_telnum"></td>
				</tr>
			</table>
			</div>
		</div>
		
		</div>
		<br/>
		
		<div id="buttons" style="position:absolute; left:1281px;">
			<input type = "button" id="modify"  name="modify"  class = "btn btn-primary" value = "수정" style="width:80px;height:40px; font-weight:bold; margin-right: 10px;"/>
			<a href = "http://localhost/prj3/admin/03_travelManage.do">
			<input type = "button" id="cancel"  name="cancel" class = "btn btn-default" value = "취소"  style = "border: 0.5px solid #dfdfdf"></a>
		</div><br/>
	
	</form>
	</div>
</div>
</body>
</html>