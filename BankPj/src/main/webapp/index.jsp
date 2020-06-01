<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<html class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>미니은행 프로젝트</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<meta name="description" content="Responsive Retina-Friendly Menu with different, size-dependent layouts" />
		<meta name="keywords" content="responsive menu, retina-ready, icon font, media queries, css3, transition, mobile" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico"> 
		<link rel="stylesheet" type="text/css" href="resources/css/default.css" />
		<link rel="stylesheet" type="text/css" href="resources/css/component.css" />
		<script src="resources/js/modernizr.custom.js"></script>
		<script type="text/javascript">
		function showPopup() {
			window.open("task/autoService", "자동응답", "width=400, height=300, left=100, top=50,resizable=no");
			}
		</script>
	</head>
	<body>
		<div class="container">	
			<!-- Codrops top bar -->
			<div class="codrops-top clearfix">
				<c:if test="${empty loginMember }">
				<a href="member/loginview.do"><span style="font-size: 20px;">로그인</span></a>
				</c:if>
				<c:if test="${not empty loginMember }">
				<a href="member/loginview.do"><span style="font-size: 20px;">${loginMember.m_name }안녕하세요</span></a>
				</c:if>
			</div>
			<header>
				<h1>미니은행 <span>경제잡담, 입출금, 예금, 펀드를 누려보세요.</span></h1>	
			</header>
			<div class="main clearfix">
				<nav id="menu" class="nav">					
					<ul>
						<li>
							<a href="task/myAccount">
								<span class="icon">
									<i aria-hidden="true" class="icon-home"></i>
								</span>
								<span>내 계좌</span>
							</a>
						</li>
						<li>
							<a href="task/accountPage.do">
								<span class="icon"> 
									<i aria-hidden="true" class="icon-services"></i>
								</span>
								<span>계좌 신청</span>
							</a>
						</li>
						<li>
							<a href="fund/enrollfund.do">
								<span class="icon">
									<i aria-hidden="true" class="icon-portfolio"></i>
								</span>
								<span>내 펀드</span>
							</a>
						</li>
						<li>
							<a href="fund/fundview.do">
								<span class="icon">
									<i aria-hidden="true" class="icon-blog"></i>
								</span>
								<span>펀드 정보</span>
							</a>
						</li>
						<li>
							<a href="chat/chat.do">
								<span class="icon">
									<i aria-hidden="true" class="icon-team"></i>
								</span>
								<span>경제 채팅방</span>
							</a>
						</li>
						<li>
							<a href="#" onclick="showPopup()">
								<span class="icon">
									<i aria-hidden="true" class="icon-contact"></i>
								</span>
								<span>응답서비스</span>
							</a>
						</li>
					</ul>
				</nav>
			</div>
		</div><!-- /container -->
		<script>
			//  The function to change the class
			var changeClass = function (r,className1,className2) {
				var regex = new RegExp("(?:^|\\s+)" + className1 + "(?:\\s+|$)");
				if( regex.test(r.className) ) {
					r.className = r.className.replace(regex,' '+className2+' ');
			    }
			    else{
					r.className = r.className.replace(new RegExp("(?:^|\\s+)" + className2 + "(?:\\s+|$)"),' '+className1+' ');
			    }
			    return r.className;
			};	

			//  Creating our button in JS for smaller screens
			var menuElements = document.getElementById('menu');
			menuElements.insertAdjacentHTML('afterBegin','<button type="button" id="menutoggle" class="navtoogle" aria-hidden="true"><i aria-hidden="true" class="icon-menu"> </i> Menu</button>');

			//  Toggle the class on click to show / hide the menu
			document.getElementById('menutoggle').onclick = function() {
				changeClass(this, 'navtoogle active', 'navtoogle');
			}

			// http://tympanus.net/codrops/2013/05/08/responsive-retina-ready-menu/comment-page-2/#comment-438918
			document.onclick = function(e) {
				var mobileButton = document.getElementById('menutoggle'),
					buttonStyle =  mobileButton.currentStyle ? mobileButton.currentStyle.display : getComputedStyle(mobileButton, null).display;

				if(buttonStyle === 'block' && e.target !== mobileButton && new RegExp(' ' + 'active' + ' ').test(' ' + mobileButton.className + ' ')) {
					changeClass(mobileButton, 'navtoogle active', 'navtoogle');
				}
			}
		</script>
	</body>
</html>