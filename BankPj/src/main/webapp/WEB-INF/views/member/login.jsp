<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	
	<a href="${path }/member/enrollmember.do">회원가입</a>
	
	<form action="${path }/member/login.do" method="post">
		아이디 : <input type="text" name="userid">
		패스워드 : <input type="password" name="userpw">
		<input type="submit" value="로그인">
	</form>
	
</body>
</html>