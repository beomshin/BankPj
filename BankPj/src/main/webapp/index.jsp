<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
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
	<spring:eval expression="@lang['user.id']"/>
	<spring:eval expression="@lang['user.pw']"/>
</body>
</html>