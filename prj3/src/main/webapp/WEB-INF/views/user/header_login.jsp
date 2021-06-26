<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<script type="text/javascript">
    $(function() {
		$("#checkPassForm").click(function() {
			location.replace("http://localhost/prj3/user/checkPassForm.do")
		});
		$("#logout_btn").click(function() {
			location.replace("http://localhost/prj3/user/logOutProcess.do")
			alert("로그아웃을 완료하였습니다.")
		});
	});//ready  
    </script>
     <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="http://localhost/prj3/index.do">GOTO</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                       <li class="nav-item" style="color: #fff"><c:out value="${MID}" />님</li>
                        <li class="nav-item dropdown">
                            <a  class="btn btn-light" id="navbarDropdown"  role="button" data-bs-toggle="dropdown" aria-expanded="false">마이페이지</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" id ="checkPassForm"  onclick="checkPassForm();" style="cursor: pointer;">내 정보 변경</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a href="http://localhost/prj3/user/mypage_tour.do" class="dropdown-item" >예약한 투어</a></li>
                                <li><a href="http://localhost/prj3/user/mypage_reply.do" class="dropdown-item" style="cursor: pointer;">내가 쓴 리뷰</a></li>
                            </ul>
                        </li> <li class="nav-item">
                       <button type="button" class="btn btn-light" id="logout_btn">로그아웃</button>
                       </li>
                    </ul>
                </div>
            </div>
        </nav>