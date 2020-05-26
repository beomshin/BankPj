<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<section>
	
	<h2>회원가입</h2>
	<form action="${path }/member/enrollmemberEnd.do" method="post">
		아이디<input type="text" name="m_id" placeholder="아이디 입력">
		비밀번호<input type="password" name="m_pw" placeholder="비밀번호 입력"> 
		비밀번호 확인<input type="password" placeholder="비밀번호 확인">
		주소<input type="text" name="m_addr" placeholder="주소 입력">
		이름<input type="text" name="m_name" placeholder="이름 입력">
		<label><input type="radio" name="m_gender" value="M">남자</label>
		<label><input type="radio" name="m_gender" value="F">여자</label>
		나이<input type="number" name="m_age" min="1" max="120" step="1">
		연락처<input type="text" name="m_phone">
	<input type="submit" value="제출"> 
	</form>
</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>