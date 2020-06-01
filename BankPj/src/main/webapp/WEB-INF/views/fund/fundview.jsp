<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<style>
	table{
		margin: 50px auto;
      	width : 80%;
      	border-top : 3px solid #168;
      }
      
      table th {
      color: #168;
      background: #f0f6f9;
      text-align: center;
      }
      
      table th, table td {
      padding: 10px;
      border: 1px solid #ddd;
      text-align: center;
      font-weight: 550;
      }
     
     .title{
     	margin-top : 50px;
     	display: flex;
     	flex-direction: column;
     	justify-content: center;
     	align-items: center;
     } 
     
</style>

<section>
	<div class="title">
	<h1>펀드 현황</h1>
	<p style="font-size: 13px;color: blue;">이자율은 전일 대비 상승/하강률 입니다</p>
	</div>
	<table>
	<tr><th>펀드이름</th><th>이자율</th><th>현재자금</th><th>신청</th></tr>
	<c:forEach items="${fund }" var="f" varStatus="vs">
		<tr>
			<td>${f.f_name }</td>
			<td>${f.f_per }%</td>
			<td><fmt:formatNumber value="${f.f_money }" maxFractionDigits="3"/>원</td>
			<td><button onclick="apply(${f.f_no})">신청하기</button>
		</tr>
	</c:forEach>
	</table>
	
	<div>
		${pagebar }
	</div>
	
</section>

<script>

	function apply(no){
		var price = prompt('투자금액을 입력하세요', '투자금액');
		location.replace("${path}/fund/fundapply?fno="+no+"&price="+price);
		
	}
	
</script>




<jsp:include page="/WEB-INF/views/common/footer.jsp"/>