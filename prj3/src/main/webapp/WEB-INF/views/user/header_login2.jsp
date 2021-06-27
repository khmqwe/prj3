<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<script type="text/javaScript">
	function loginForm( ){
    	 location.href = "http://localhost/prj3/user/loginForm.do";
	}
	function joinForm( ){
    	 location.href = "http://localhost/prj3/user/signUpTerm.do";
	}
</script>
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="http://localhost/prj3/index.do">GOTO</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                        <li class="nav-item"><button type="button" class="btn btn-light" onclick="loginForm();">로그인</button></li>
                        <li class="nav-item"><button type="button" class="btn btn-light" onclick="joinForm();">회원가입</button></li>
                    </ul>
                </div>
            </div>
        </nav>
