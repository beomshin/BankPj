<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
function myFunction() {
	  var txt;
	  var person = prompt("성함(서명)을 해주세요.:", "서명");
	  if (person == null || person == "") {
	    txt = "<spring:eval expression="@lang['msg.empty']"/>";
	    document.getElementById("empty").innerHTML = txt;
	  } else {
	    txt = person;
	    document.getElementById("m_name").value = txt;
	    document.getElementById("empty").innerHTML = "";
	  }
	}
	

$(document).ready(function (e){
	$('#accountOK').click(function(){
		var frmArr = ["sign_check","a_type","m_name", "a_pw"];  
		
		for(var i=0;i<frmArr.length;i++){
			if($.trim($('#'+frmArr[i]).val()) == ''){
				alert('<spring:eval expression="@lang['msg.empty']"/>');
				$('#'+frmArr[i]).focus();
				return false;
			}
		}
		if('${sessionScope.loginMember.m_name}' != $('#m_name').val()) {
			$('#m_name').val("");
			alert('서명과 본인이름이 다릅니다.');
			return false;
		}else {
		$('#frm').submit();
		}
	});
});
</script>
<style type="text/css">
div {
	margin-bottom: 50px;
}
</style>
</head>
<body>
<h2>계좌신청</h2>

<form action="myAccount.do" method="POST" id="frm" name="frm">
<div>
<input type="hidden" id="m_no" name="m_no" value="${sessionScope.loginMember.m_no }"> 
<input type="hidden" id="m_phone" name="m_phone" value="${sessionScope.loginMember.m_phone }"> 
만드실 계좌 통장을 선택해주세요.
<select id="a_type" name="a_type">
	<option value="">계좌선택</option>
	<option value="N">일반통장</option>
	<option value="S">적금통장</option>
</select>
</div>
<div>
사용하실 비밀번호를 입력해주세요. [최대 11자리]
<input type="password" id="a_pw" name="a_pw" maxlength="11">
</div>
</form>
<div>
<spring:eval expression="@lang['cont.sign']"/>
<select id="sign_check" name="sign_check">
	<option value="">동의안함</option>
	<option value="agree">동의함</option>
</select>
</div>

계좌 개설을 동의하면 서명을 해주세요.
<button onclick="myFunction()">서명</button>
<input type="text" id="m_name" name="m_name" readonly/>
<p id="empty"></p>

<button id="accountOK" name="accountOK">계좌신청</button>
</body>
</html>