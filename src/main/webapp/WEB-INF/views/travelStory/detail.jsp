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

.backBtn {
    background-color: #4f96f2;
    color: white;
    width: 100%;
    text-align: center;
    border: none;
    font-size: 13px;
    margin: 50px auto;
    padding: 15px 0px;
    border-radius: 10px;
}


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
    .detailContent {
	    width: 1200px;
	    border: 1px solid #9e9e9e5e;
	    height: 800px;
	    padding: 20px;
	    overflow: auto;
	    border-radius: 9px;
    }
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
				<li><a href="/travelStory/update?seq=${result.seq}">수정</a></li>
				<li><a href="/travelStory/delete?seq=${result.seq }">삭제</a></li>
			</ul>
		</div>

		<div class="content_block" id="content">
			<h3 class="tit_con_title">여행이야기</h3>
			<!-- 주간인기 -->
			<div class="best_review">
				<input type="text" id="title" value="${ result.title}" class="writeInput" readonly>
				<div class="detailContent">
					${result.content }
				</div>
				<div class="favContainer">
					<button id="favBtn" class="favBtn" data-b_no=${result.seq }>👍</button>
					<span id="favNum">${result.favorite}</span>
				</div>
				<button id="backBtn" class="backBtn" onclick='backBtn()'>목록</button>
			</div>
		</div>
	</div>
</body>
<script src="/resources/js/jquery.js"></script>
<script>
	function backBtn(){
		history.back();
	}

</script>
</html>