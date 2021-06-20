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
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="http://localhost/prj3/common/css/styles.css" rel="stylesheet"/>
        <!-- jQuery CDN(Contents Delivery Network) -->
 		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
 		<script type="text/javascript">
 		
 		$(function() {
	
 			$("#btnGo").click(function() {
 				$("#contactForm").submit();
 			});
 			
 		});
 		</script>
 		
    </head>
    <body id="page-top">
<jsp:include page="header.jsp"/>  
<!-- 검색창 -->
<div class="main-content">
<div class="content-box" style="width: 1000px; margin-top: 90px;margin-bottom:30px"> 
	<form id="contactForm" name="contactForm" action="travel_list.do">
          <div class="row">
		  <div class="col-md-10">
		    <input class="form-control" id="name" name="name" type="text" placeholder="가고싶은 곳을 검색하세요 *" required="required"/>
		    <input type="hidden" name="curPage" value="1"/>
		    <input type="hidden" name="select" value="travel_name"/>
		  </div>
		  <div class="col-md-2">
		    <button type="button" id="btnGo" name="btnGo" class="btn btn-warning" style="width:200px">GO</button>
		  </div>
		</div>
	</form>
	<br><a href="travel_list.do?curPage=1&select=areaNumber&name=1" style="text-decoration: none;">서울</a> | 
	<a href="travel_list.do?curPage=1&select=areaNumber&name=2" style="text-decoration: none;">대전</a> | 
	<a href="travel_list.do?curPage=1&select=areaNumber&name=3" style="text-decoration: none;">대구</a> | 
	<a href="travel_list.do?curPage=1&select=areaNumber&name=4" style="text-decoration: none;">부산</a> | 
	<a href="travel_list.do?curPage=1&select=areaNumber&name=5" style="text-decoration: none;">광주</a> | 
	<a href="travel_list.do?curPage=1&select=areaNumber&name=6" style="text-decoration: none;">경기도</a> | 
	<a href="travel_list.do?curPage=1&select=areaNumber&name=7" style="text-decoration: none;">강원도</a> | 
	<a href="travel_list.do?curPage=1&select=areaNumber&name=8" style="text-decoration: none;">충청도</a> | 
	<a href="travel_list.do?curPage=1&select=areaNumber&name=9" style="text-decoration: none;">경상도</a> | 
	<a href="travel_list.do?curPage=1&select=areaNumber&name=10" style="text-decoration: none;">전라도</a> | 
	<a href="travel_list.do?curPage=1&select=areaNumber&name=11" style="text-decoration: none;">제주도</a> 
</div>     
<!-- 목록창 -->
<c:forEach var="page" items="${ pageList }">
	<div class="content-box" style="display: flex;" >
		<div style="flex: 1;">
		<a href="travel_info.do?tr_num=${ page.tr_num }">
		<img class="img-fluid-main" src="http://localHost/prj3/images/travel/${ page.thumb_img }" alt="..." />
		</a>
		</div>
		<div style="padding-left: 20px; flex: 8;">
			<h2><c:out value="${ page.tr_name }"/></h2>
			<h5><c:out value="${ page.a_name }"/></h5>
			${ page.tr_simple_explain }
		</div>
		<div style="flex: 1;">
			<span style="color: #FF0000; font-size: 20px;">♥&nbsp;</span><c:out value="${ page.like_cnt }"/>
		</div>
	</div>
</c:forEach>  

<nav style="text-align: center; font-size: 30px;">
  <ul class="pagination">
  	<c:if test="${ pages.prevBtn eq true }">
    <li>
      <a href="travel_list.do?curPage=${ pages.curPage-1 }&select=${ spVO.select }&name=${ spVO.name }" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
  	</c:if>
  	
	<c:forEach var="i" begin="${ pages.startPageNum }" end="${ pages.endPageNum }">
		  <li>
			  <a href="travel_list.do?curPage=${ i }&select=${ spVO.select }&name=${ spVO.name }">
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
      <a href="travel_list.do?curPage=${ pages.curPage+1 }&select=${ spVO.select }&name=${ spVO.name }" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  	</c:if>
  	
  </ul>
</nav>

<!-- pagination -->

</div>
<jsp:include page="footer.jsp"/>  
    </body>
</html>
