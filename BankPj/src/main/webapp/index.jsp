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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
function showPopup() { window.open("task/autoService", "자동응답", "width=400, height=300, left=100, top=50,resizable=no"); }
</script>
</head>
<body>
	<h1>오키</h1>
	<h2>응성공했어</h2>
	<h3>왜안되노 ㅡㅡ</h3>
	<h4>되나</h4>
	<h2>그러네?</h2>잘되잖아 시팔련아 ㅡㅡ
	<a href="member/loginview.do">로그인</a>
	<a href="task/accountPage.do" >계좌신청</a>
	<a href="task/myAccount" >내계좌</a>
	<button id="auto_Btn"  onclick="showPopup()">자동응답</button>
	<a href="chat/chat.do">익명채팅방</a>
	<a href="fund/enrollfund.do">펀드만들기</a>
	<a href="fund/fundview.do">펀드보러가기</a>
	<a href="fund/test.do">스케줄러 펀드 변경</a>
	<spring:eval expression="@lang['user.id']"/>
	<spring:eval expression="@lang['user.pw']"/>
	<spring:eval expression="@lang['user.test']"/>
	<spring:eval expression="@lang['user.name']"/>
	<spring:eval expression="@lang['user.phone']"/>
</body>
</html>