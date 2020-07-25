<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/editor.css" type="text/css" />
<link rel="stylesheet" href="/resources/css/common.css" type="text/css" />
<link rel="stylesheet" href="/resources/css/content.css" type="text/css" />
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
				<li><a href="/travelStory/writeView">글쓰기</a></li>
				<li><a href="/travelStory/main">홈</a></li>
			</ul>
		</div>

		<div class="content_block" id="content">
			<h3 class="tit_con_title">여행이야기</h3>
			<!-- 주간인기 -->
			<div class="best_review">
				<%@include file="./editor_frame.jsp" %>	
			</div>
		</div>
	</div>
</body>
</html>