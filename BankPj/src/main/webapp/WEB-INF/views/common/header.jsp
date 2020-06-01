<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${param.title }</title>

</head>
<style>
	
	.top-login{
		width: 100%;
		height : 30px;
		background-color: lightgray;
	}
	
</style>
<body>

		<div class="top-login">
				<c:if test="${empty loginMember }">
				<a href="${path }/member/loginview.do"><span style="font-size: 20px;color: black">로그인</span></a>
				<a href="${path }"><span style="font-size: 20px;color: black;margin-left: 5px">메인으로</span></a>
				</c:if>
				<c:if test="${not empty loginMember }">
				<a href="${path }/member/loginview.do"><span style="font-size: 20px;color: black">${loginMember.m_name }안녕하세요</span></a>
				<a href="${path }"><span style="font-size: 20px;color: black;margin-right: 5px;">메인으로</span></a>
				</c:if>
			</div>
	
	
