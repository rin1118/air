<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/editor.css" type="text/css" />
<link rel="stylesheet" href="/resources/css/common.css" type="text/css" />
<link rel="stylesheet" href="/resources/css/content.css" type="text/css" />
<link href="/resources/css/board.css" rel="stylesheet"/> 
<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
<style>
div #title {
	margin-bottom: 30px;
}
input#save_button {
    transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
    background-color: transparent;
    border-radius: 0.375em;
    border: 0;
    box-shadow: inset 0px 0px 0px 2px #aaa;
    cursor: pointer;
    font-family: NanumSquare;
    font-size: 0.8em;
    font-weight: 700;
    height: 3.5em;
    letter-spacing: 0.075em;
    line-height: 3.5em;
    padding: 0 1.25em;
    text-align: center;
    text-decoration: none;
    text-transform: uppercase;
    white-space: nowrap;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../homeNav.jsp" %>
	<div id="container">
		<div class="page_navigation">
			<ul class="page_nav">
				<li><a href="/board/write">글쓰기</a></li>
				<li><a href="/board/main">홈</a></li>
			</ul>
		</div>
		<header class="major" id="mainsort">
			<h1>공지사항</h1>
		</header>
			<!-- 주간인기 -->
		<div class="registerForm">
			<form name="frm" id="boardForm" action="/board/write" method="post">
				<input type="text" name="title"  class="writeInfo title"  required placeholder="제목">
				<input type="text" name="writer"   class="writeInfo" value="${member.getName()}" readonly>
				<textarea name="content" placeholder="내용"></textarea>
				<input type="submit" class="backBtn submit" value="작성">
			</form>
		</div>
	</div>
</body>
</html>