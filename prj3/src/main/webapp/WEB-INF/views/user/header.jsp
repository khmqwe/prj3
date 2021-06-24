<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<c:choose>
    	<c:when test ="${ empty MID }">
		<jsp:include page="header_login2.jsp"/>
 		</c:when>
 		<c:otherwise >
		<jsp:include page="header_login.jsp"/>
 		</c:otherwise>
 	</c:choose>