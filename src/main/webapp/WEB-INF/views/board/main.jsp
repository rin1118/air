<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
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

	<table class="listItem">
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일자</th>
		</tr>
		<c:forEach items="${list}" var="item">
				<tr>
					<td>${item.b_no}</td>
					<td>
						<a href="/board/detail?id=${item.b_no}">${item.title}</a>
					</td>
					<td>${item.writer}</td>
					<td>
						<fmt:formatDate value="${item.regdate}" pattern="yyyy.MM.dd" />
					</td>
				</tr>
		</c:forEach>
	</table>
	<div> 
		<ul class="pageContainer">
			<c:if test="${pageMaker.prev }">
				<li><a href="/board/main${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a>
			</c:if>
			<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
				<li><a href="/board/main${pageMaker.makeQuery(idx) }">${idx }</a></li>
			</c:forEach>
			<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
				<li><a href="/board/main${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음</a>
			</c:if>
		</ul>
	</div>
</section>
<script src="/resources/js/boardJS.js"></script>
</body> 
</html>