<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>GOTO</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        
        <!-- Core theme JS-->
        <script src="http://localhost/prj3/common/js/scripts.js"></script>
        <!-- jQuery CDN(Contents Delivery Network) -->
 		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>        
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="http://localhost/prj3/common/css/styles.css" rel="stylesheet"/>


	<script type="text/javascript">
	$(function() {
		var today = new Date();   
	
		var year = today.getFullYear(); // 년도
		var month = today.getMonth() + 1;  // 월
		month < 10 ? month = "0"+month : month = month;
		var date = today.getDate();  // 날짜
		date < 10 ? date = "0"+date : month = month;
		
		$("#bookDate").val(year+'-'+month+'-'+date);
	
		$.datepicker.setDefaults({
	        dateFormat: 'yy-mm-dd',	//날짜 포맷이다. 보통 yy-mm-dd 를 많이 사용하는것 같다.
	        minDate: 0, 
	        maxDate: new Date('${ todList1.to_end_date}'),
	        prevText: '이전 달',	// 마우스 오버시 이전달 텍스트
	        nextText: '다음 달',	// 마우스 오버시 다음달 텍스트
	        closeText: '닫기', // 닫기 버튼 텍스트 변경
	        currentText: '오늘', // 오늘 텍스트 변경
	        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],	//한글 캘린더중 월 표시를 위한 부분
	        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],	//한글 캘린더 중 월 표시를 위한 부분
	        dayNames: ['일', '월', '화', '수', '목', '금', '토'],	//한글 캘린더 요일 표시 부분
	        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],	//한글 요일 표시 부분
	        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],	// 한글 요일 표시 부분
	        showMonthAfterYear: true,	// true : 년 월  false : 월 년 순으로 보여줌
	        yearSuffix: '년',	//
	        showButtonPanel: true,	// 오늘로 가는 버튼과 달력 닫기 버튼 보기 옵션
	//        buttonImageOnly: true,	// input 옆에 조그만한 아이콘으로 캘린더 선택가능하게 하기
	//        buttonImage: "images/calendar.gif",	// 조그만한 아이콘 이미지
	//        buttonText: "Select date"	// 조그만한 아이콘 툴팁
	        onSelect:function(d){   
	            $("#bookDate").val(d);
	        }  
	    });
		 $('#calender').datepicker();
		 
		 $('.btn-success').on('click', function(){
			$.ajax({
				type: 'POST',
				url: 'tour_success.do',
				dataType: 'text',
				data: {
					bookingDate: $("#bookDate").val(),
					tourNum: $('#to_num').val()
				},
				success: function(rst){
					if(rst === 'success'){
						alert('예약이 완료되었습니다.');
						location.href="http://localhost/prj3/user/mypage_tour.do";
					}else{
						alert('로그인 해주세요');
						location.href="http://localhost/prj3/user/loginForm.do";
						
					}
					
				},
				fail: function(err, t){
					console.log(err);
				}
			});
		 });
	});//ready
	</script>
    </head>
    <body id="page-top">
<jsp:include page="header.jsp"/>  
<div class="main-content">
<div style="text-align: center; margin-top:150px;">

	<div class="content-box" >
	<h1>${todList1.to_name}</h1>
	<table>
	<tr>
	<th>소요시간</th>
	<td class="tb_text">${todList1.to_take_time} </td>
	<th>언어</th>
	<td class="tb_text">${todList1.la_name}</td>
	<th>가격</th>
	<td class="tb_text">${todList1.to_price}</td>
	</tr>
	</table>
		<hr>
		${todList1.plan_explain}
		<hr>
	</div>
	<!-- 이용안내 -->
	<div class="content-box">
	<h3>이용안내</h3>
	<table>
		<tr>
		<th style="width:100px">집합시간</th>
		<td>${todList1.to_meeting_time}</td>
		</tr>
		<tr>
		<th>집합위치</th>
		<td>${todList1.to_meeting_loc}</td>
		</tr>
	</table>
	<hr>
	</div>
	<!-- 예약날짜 -->
	<div class="content-box">
	<div id="calender" style="margin-left:270px"></div>
	</div><br>
	<input type="hidden" id="to_num" value="${todList1.to_num}">
	<input type="hidden" id="bookDate">
	<input type="button" class="btn btn-success"  value="예약하기">
</div>
</div>
<jsp:include page="footer.jsp"/>  
    </body>
</html>
