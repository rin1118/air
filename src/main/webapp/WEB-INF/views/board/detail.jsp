<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/board.css" rel="stylesheet"/> 
</head>
<body>
<%@include file="../homeNav.jsp" %>
<section class="main">
	<div class="page_navigation">
		<ul class="page_nav">
			<li><a href="/board/write">글쓰기</a></li>
			<li><a href="/board/main">홈</a></li>
		</ul>
	</div>
	<header class="major" id="mainsort">
		<h1>공지사항</h1>
	</header>
	<div class="registerForm">
		<form id="boardForm">
			<span class="submitContainer">
				<input type="submit" value="수정" id="boardUpdateBtn" class="registerSubmit">
				<input type="submit" value="삭제" id="boardDeleteBtn" class="registerSubmit">			
			</span>			
			<input type="text" name="title" value="${title}" class="writeInfo title" readOnly>
			<input type="text" name="writer" value="${writer}" class="writeInfo" readOnly>
			<textarea name="content" readOnly >${content }</textarea>
			<input type="hidden" name="id" value="${id}">
			<button class="backBtn" id="backBtn">목록</button>
		</form>
	</div>
</section>
<script src="/resources/js/boardJS.js"></script>	
</body>
</html>