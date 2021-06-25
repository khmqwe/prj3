<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<c:if test="${ empty MID }">
	<c:redirect url="http://localhost/prj3/index.do"/>
</c:if>
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
<!-- Core theme CSS (includes Bootstrap)-->
<link href="http://localhost/prj3/common/css/styles.css" rel="stylesheet"/>

<style type="text/css">

.modal {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.modal__overlay {
	background-color: rgba(0, 0, 0, 0.4);
	width: 100%;
	height: 100%;
	position: absolute;
}

.modal__content {
	position: relative;
	top: 0px;
	background-color: white;
	width: 30%;
	text-align: center;
	padding: 50px 100px;
	border-radius: 10px;
	box-shadow: 0 10px 20px rgba(0, 0, 0, 0.19), 0 6px 6px rgba(0, 0, 0, 0.23);
	display: flex;
	flex-direction: column;
}

#modal_title {
	margin: 0;
	padding-bottom: 10px;
}

.button {
	margin: 5px;
}

</style>

<script type="text/javascript">
var flag=false;

function checkDelete(r_num) {
	if(!flag){
		if(confirm('정말 삭제하시겠습니까?')) {
			
			location.href="http://localhost/prj3/user/comment_remove.do?r_num="+r_num;
		}
	}
}

function goModal(r_num, r_content) {
	$("#txt").val(r_content);
	$("#r_num").val(r_num);
	$(".modal").toggle();
	flag=true;
}


$(function() {
	$(".modal").css('display', 'none');
	
	$("#btn_cancel").click(function() {
		$(".modal").toggle();
		flag=false;
	});
	
});


</script>

</head>

<body id="page-top">

<jsp:include page="header_login.jsp"/>  

<form action="http://localhost/prj3/user/comment_modify.do" method="post" id="modifyFrm">
<div class="modal">
	<div class="modal__overlay"></div>
	<div class="modal__content">
		<h2 id="modal_title">모달창</h2>
		<textarea rows="5" cols="40" style="resize: none; padding: 10px;" id="txt" name="r_content"></textarea>
		<input type="hidden" id="r_num" name="r_num" value=""/>
		<button id="btn_modify" class="btn btn-primary button">수정</button>
		<input type="button" id="btn_cancel" class="btn btn-secondary button" value="닫기"/>
	</div>
</div>
</form>

<div class="main-content">

<div class="content-box">
<div class="mypage_title"><h2>내가 쓴 글</h2></div>
	
	<c:forEach var="comment" items="${ commentList }">
	<!--리플-->
	<div class="reply_content" style="display: flex;">
		<div><img class="card-img-top" src="http://localhost/prj3/images/travel/${ comment.thumb_img }" alt="..." /></div>
		<div>
			<div class="reply_title" style="padding-left: 10px;"><h4>${ comment.tr_name }</h4></div>
			<div class="reply_date" style="padding-left: 10px; width: 150px;">${ comment.r_date }</div><br>
			<div class="reply_text" style="padding-left: 10px;">${ comment.r_content }</div>
		</div>
		<div>
			<div class="reply_btn_mod">
			<button type="button" class="btn btn-primary btn-sm" onclick="goModal(${ comment.r_num }, '${ comment.r_content }')">수정</button>
			</div>
			<div class="reply_btn_del">
			<button type="button" id="cancelBtn" class="btn btn-secondary btn-sm cancelBtn" onclick="checkDelete(${comment.r_num})">삭제</button>
			</div>
		</div>
	</div>	
	</c:forEach>

	
	<!-- pagination -->
<div class="content-box" style="text-align: center;"> 

	<nav style="text-align: center; font-size: 30px;">
	  <ul class="pagination">
	  	<c:if test="${ pages.prevBtn eq true }">
	    <li>
	      <a href="mypage_reply.do?curPage=${ pages.curPage-1 }" aria-label="Previous">
	        <span aria-hidden="true">&laquo;</span>
	      </a>
	    </li>
	  	</c:if>
	  	
		<c:forEach var="i" begin="${ pages.startPageNum }" end="${ pages.endPageNum }">
			  <li>
				  <a href="mypage_reply.do?curPage=${ i }">
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
	      <a href="mypage_reply.do?curPage=${ pages.curPage+1 }" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
	  	</c:if>
	  	
	  </ul>
	</nav>
	
</div>	
	<!-- pagination끝 -->	
</div>
</div>
<jsp:include page="footer.jsp"/>
    </body>
</html>
