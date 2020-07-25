<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정</title>
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
		<form method="post" action="/board/update?id=${id}">
			<input type="text" name="title" value="${title}" class="writeInfo title" >
			<input type="text" name="writer" value="${writer}" class="writeInfo" readOnly>
			<textarea name="content">${content}</textarea>
			<input type="submit" value="확인" class="backBtn submit">
		</form>
	</div>
</section>
</body>
</html>