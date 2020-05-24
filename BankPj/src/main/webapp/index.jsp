<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>오키</h1>
	<h2>응성공했어</h2>
	<h3>왜안되노 ㅡㅡ</h3>
	<a href=""></a>
	<a href="task/accountPage" >계좌신청</a>
	<spring:eval expression="@lang['user.id']"/>
	<spring:eval expression="@lang['user.pw']"/>
	<spring:eval expression="@lang['user.test']"/>
	<spring:eval expression="@lang['user.name']"/>
	<spring:eval expression="@lang['user.phone']"/>
</body>
</html>