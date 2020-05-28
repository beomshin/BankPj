<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
var msg = '${msg}';
$(document).ready(function(){
	if(msg != "") 
    alert(msg);
});
</script>
</head>
<body>
비밀번호 인증
<form id="frm_pw" name="frm_pw">
<input type="password" id="m_pw" name="m_pw">
<input type="hidden" id="m_no" name="m_no" value="${sessionScope.loginMember.m_no }">
</form>
ajax 처리해서 ~~ 비번확인하궁 ~~ 계좌정보 불러올겡~~~
</body>
</html>