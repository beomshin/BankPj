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
<div>
<form id="frm_pw" name="frm_pw" >
<input type="hidden" id="m_no" name="m_no" value="${sessionScope.loginMember.m_no }">
</form>
<button id="account_Btn">계좌정보 보기</button>
</div>
<div id="account_list" style="display: none">
<table class="account_tbl" id="account_tbl">
<caption>내 계좌정보</caption>
</table>
</div>
</body>
<script type="text/javascript">
$("#account_Btn").click(function(){
	
	$.ajax({
		type : 'POST',
		url : "accountInfo",
		data : $("#frm_pw").serialize(),
		success : function(data) {	
				var data = data;
				var str = '<TR>';
				alert("계좌정보를 불러옵니다.");
				$('#account_Btn').css("display","none");
				$('#account_list').css("display","block");
				
				$.each(data, function(i) {
					if(data[i].a_type == "N") {
						data[i].a_type = "입출금";
					}else {
						data[i].a_type = "예금";
					}
					
					 str += '<th>계좌번호</th><td>'+data[i].a_account + '<th>잔액</th></td><td>' + data[i].a_money + '원</td><th>통장</th><td>' + data[i].a_type + '</td>';
					 str += '</TR>';
				});
					$("#account_tbl").append(str);
		},
		error : function(request, status, error) {
				alert("비밀번호가 틀립니다.");
		}
	});
});
</script>
</html>