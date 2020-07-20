<!-- 로그인 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<title>새하투어 [여행을 편하게]</title>
	<meta name="description" content="slick Login">
	<meta name="author" content="Webdesigntuts+">
	<link rel="stylesheet" type="text/css" href="/resources/css/style.css" />
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="http://www.modernizr.com/downloads/modernizr-latest.js"></script>
	<script type="text/javascript" src="/resources/js/placeholder.js"></script>
	<link rel="shortcut icon" href="favicon.ico"/>
</head>
<body>
<form id="slick-login" method="post" action="/member/login">
	<input type="text" name="id" class="placeholder" placeholder="아이디를 입력해주세요." required>
	<input type="password" name="pw" class="placeholder" placeholder="비밀번호를 입력해주세요." required>
	<input type="submit" value="Log In">
</form>
</body>
</html>
