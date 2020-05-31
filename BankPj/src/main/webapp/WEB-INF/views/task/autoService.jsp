<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function auto_Service() {
	var el = document.getElementById("auto_content");
	var input = document.getElementById("service_input");
	
	if(input.value == 1 ) {
		el.innerHTML = "<spring:eval expression="@lang['auto.one']"/>를 선택하셨습니다.";
		input.value = null;	
	}else if(input.value == 2 ) {
		el.innerHTML = "<spring:eval expression="@lang['auto.two']"/>를 선택하셨습니다.";
		input.value = null;	
		
	}else if(input.value == 3 ) {
		el.innerHTML = "<spring:eval expression="@lang['auto.thr']"/>를 선택하셨습니다.";
		input.value = null;	
		
	}else if(input.value == 4 ) {
		el.innerHTML = "<spring:eval expression="@lang['auto.for']"/>를 선택하셨습니다.";
	}else {
		alert("잘못된 입력입니다. 문의 숫자만 입력해주세요.");
		input.value = null;	
		return false;
	}
	
}
</script>
</head>
<body>
<div style="text-align:center">
<h1>응답서비스 봇</h1>
<a href="autoService">처음으로 돌아가기</a>
</div>
<div id="auto_content">
<h3>무엇을 도와드릴까요?</h3>
<spring:eval expression="@lang['auto.one']"/> <br>
<spring:eval expression="@lang['auto.two']"/> <br>
<spring:eval expression="@lang['auto.thr']"/> <br>
<spring:eval expression="@lang['auto.for']"/> <br>

<div style="position:absolute; bottom:10px">
<input type="text" id="service_input" name="service_input" style="width:375px">&nbsp;<button onclick="auto_Service()">전송</button>
</div>
</div>
</body>
</html>