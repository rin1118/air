<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/home.css" rel="stylesheet" />
</head>
<body>
	<header class="headerContainer"> 
		<div>		
				<a href="/">
					<img src="/resources/img/mainlogo.png" id="mainlogo">
				</a> 
				<ul class="icons">
					<c:choose>
						<c:when test="${empty member}"> 
							<a href="/member/login">
								<input type="button" value="로그인" width="30px" id="login"></a>
							<a href="/member/signUp">
								<input type="button" value="회원가입" id="signup"></a>
						</c:when>
					</c:choose>
					<c:if test="${!empty member}">
							<span id="hello">${member.getId()}님 환영합니다!</span>
							<a href="/member/logout">
								<input type="button" value="로그아웃" id="logout">
							</a>
					</c:if>
				</ul>
		</div>
		<div>
			<nav class="header">
				<ul>
					<li><a href="/board/main">공지사항</a></li>
					<li><a href="/air/main">항공권</a></li>				
					<li><a href="/stay/main">호텔</a></li>
					<li><a href="/travelStory/main">여행 이야기</a></li>
				</ul>
			</nav>
		</div>
	</header>
</body>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
</html>