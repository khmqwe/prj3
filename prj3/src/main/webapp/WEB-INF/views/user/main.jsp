<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>GOTO</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="common/favicon.ico" />
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
        <link href="http://localhost/prj3/common/css/styles.css" rel="stylesheet" />
      <script type="text/javascript">
      $(document).ready(function(){
        $('.content-like').click(function(){
          $('.content-like').toggleClass("heart-active")
          $('.text-like').toggleClass("heart-active")
          $('.numb').toggleClass("heart-active")
          $('.heart').toggleClass("heart-active")
        });
        
        $("#btnGO").click(function() {
        	check();
        	$("#contactForm").submit();
        })
        
      });

function check() {
	if($("#select option:selected").val() =="none" && $("#name").val() != "") {
		alert("???????????? ????????? ????????? ?????????.");
		return;
	}

	if(($("#select option:selected").val() =="travel_area" && $("#name").val() == "") ||
			($("#select option:selected").val() =="travel_name" && $("#name").val() == "")) {
		alert("???????????? ??????????????????.");
		return;
	}
}
      
    </script>
        
    </head>
    <body id="page-top">
		<jsp:include page="header.jsp"/>
		
        <!-- Masthead-->
        <header class="masthead">
            <div class="container">
                <div class="masthead-subheading">Welcome!</div>
                <form id="contactForm" name="contactForm" action="http://localhost/prj3/user/travel_list.do">
                <input type="hidden" name="curPage" value="1"/>
                 <div class="row">
                  <div class="col-md-2" style="text-align: right;">
				    <select id="select" name="select" style="width: 100px; height: 40px">
				    <option value="none">--??????--</option>
				    <option value="travel_area">??????</option>
				    <option value="travel_name">??????</option>
				    </select>
				  </div>
				  <div class="col-md-8">
				    <input class="form-control" id="name" name="name" type="text" placeholder="???????????? ?????? ??????????????? *" required="required"/>
				  </div>
				  <div class="col-md-2">
				    <button type="button" id="btnGO" name="btnGO" class="btn btn-warning" style="width:200px">GO</button>
				  </div>
				</div>
                </form>            
            </div>
        </header>
      
        <!--?????? ????????????-->
        <section class="page-section bg-light" id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">??????????????????</h2>
                </div>
                <div class="row">
                
               		<c:forEach var="ttd" items="${ ttdList1 }">
	                    <div class="col-lg-3 col-sm-6 mb-4">
	                        <!-- Portfolio item 1-->
	                        <div class="portfolio-item">
	                            <a class="portfolio-link" href="http://localhost/prj3/user/travel_info.do?tr_num=${ ttd.tr_num }">
	                                <img class="img-fluid-main" src="http://localhost/prj3/images/travel/${ ttd.thumb_img }" alt="travel_picture" />
	                            </a>
	 						  <div class="portfolio-caption">
	
	                                <div class="portfolio-caption-heading">${ttd.tr_name}</div>
	                                <div class="portfolio-caption-subheading text-muted"><span style="color:#DC143C; font-size:30px;">???</span>&nbsp;&nbsp;${ttd.like_cnt}</div>
	                            </div>
	                        </div>
	                    </div>
               		</c:forEach>
                    
                </div>
                
                <!--?????? ????????????-->
                <br>
 				<div class="text-center">
                    <h2 class="section-heading text-uppercase">??????????????????</h2>
                </div>
                <div class="row">
                    
                    <c:forEach var="ttd" items="${ ttdList2 }">
	                    <div class="col-lg-3 col-sm-6 mb-4">
	                        <!-- Portfolio item 1-->
	                        <div class="portfolio-item">
	                            <a class="portfolio-link" href="http://localhost/prj3/user/travel_info.do?tr_num=${ ttd.tr_num }">
	                                <img class="img-fluid-main" src="http://localhost/prj3/images/travel/${ ttd.thumb_img }" alt="travel_picture" />
	                            </a>
	 						  <div class="portfolio-caption">
	
	                                <div class="portfolio-caption-heading">${ttd.tr_name}</div>
	                                <div class="portfolio-caption-subheading text-muted"><span style="color:#DC143C; font-size:30px;">???</span>&nbsp;&nbsp;${ttd.like_cnt}</div>
	                            </div>
	                        </div>
	                    </div>
               		</c:forEach>
                    
                </div>                
                
            </div>
        </section>
 <jsp:include page="footer.jsp"/>      
    </body>
</html>
