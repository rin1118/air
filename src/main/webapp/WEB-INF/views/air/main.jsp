<!-- 국내 호텔 누르면 나오는 숙소 메인 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript" src="/resources/js/jquery.js"></script>
<script type='text/javascript' src='/resources/js/jquery.jsjquery.bgiframe.min.js'></script>
<script type='text/javascript' src='/resources/js/jquery.jsjquery.ajaxQueue.js'></script>
<script type='text/javascript' src='/resources/js/jquery.jsjquery.autocomplete.js'></script>
<link rel="stylesheet" type="text/css" href="/resources/css/jquery.autocomplete.css" />

<link rel="stylesheet" href="/resources/css/air.css">
<script src="/resources/js/jquery.js"></script>
<script src="/resources/js/datepicker.js"></script>
<script src="/resources/js/eye.js"></script>
<script src="/resources/js/layout.js"></script>
<script src="/resources/js/utils.js"></script>

<!-- 탭 메뉴 플러그인 -->
<script src="calendar/jquery-2.1.1.min.js"></script>
<link rel="stylesheet" href="/resources/jquery-ui.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="/resources/jquery-ui.min.js"></script>
<script src="/resources/datepicker-ko.js"></script>

<style>
#search_input{
	margin-bottom: 10px;
}
#date1, #date2 {
    border: 3px solid #aaa;
    height: 3.1em;
}
</style>

<!-- 탭 메뉴 스크립트 -->
<script>
function openCity(idx) {
    var tabs = $('.btn_tab');
    var conts = $('.tab_cont');
    tabs.removeClass('active');
    conts.hide();
    $(tabs[idx]).addClass('active'); 
    $(conts[idx]).show();
};

// 달력
$(function(){
	$("#date1").datepicker();
	$("#date2").datepicker();
});
</script>


<script>
var availableTags = [
	'서울',
	'서울 서대문구',
	'서울 강남구',
	'서울 송파구',
	'경기',
	'경기 고양시',
	'경기 수원시',
	'경기 광명시',
	'부산',
	'부산 해운대구',
	'인천',
	'대전',
	'대전 광역시',
	'광주',
	'광주광역시',
	'광주 서구',
	'강원도',
	'경상도',
	'경상남도',
	'전라남도',
	'전라도',
	'전남',
	'충청남도'
];
</script>

<link rel="shortcut icon" type="image/x-icon" href="http://172.30.1.3/webcontent/favicon.ico" />
<title>새하투어 [여행을 편하게]</title>
<link rel="shortcut icon" href="../favicon.ico"/>

</head>
<body>
	<%@include file="../homeNav.jsp" %>
	<div id="ybWrap">
		<div id="wrap">
		<form action="/air/airList" method="get">      
			<div class="main search_wrap" id="ybSearchRoom">	
	        	<div class="container">
					<div width="50px" id="search_input">
						<span>
							<select id="mainsearch1" name="start_city">
								<option value="">출발지를 선택해주세요!</option>
								<option value="인천">인천</option>
								<option value="부산">부산</option>
								<option value="김포">김포</option>		
								<option value="김해">김해</option>				
								<option value="대구">대구</option>
								<option value="광주">광주</option>
								<option value="제주">제주</option>
							</select>
						</span>
						<span>
							<select id="mainsearch1" name="depart_city">
								<option value="">도착지를 선택해주세요!</option>
								<option value="인천">인천</option>
								<option value="부산">부산</option>
								<option value="김포">김포</option>
								<option value="김해">김해</option>
								<option value="대구">대구</option>						
								<option value="광주">광주</option>
								<option value="제주">제주</option>
							</select>
						</span>
						<span>
							<input type="text" name="start_date" readonly id="date1" size="12" placeholder="출발일 날짜"/>
						</span>
						<span>
							<input type="text" name="depart_date"  readonly id="date2" size="12" placeholder="도착일 날짜"/>
						</span>
					</div>
					<div>
						<select name="seat" id="mainsearch1">
							<option value="">좌석등급을 선택해주세요!</option>
						    <option value="일반">일반석</option>
						    <option value="비지니스">비지니스석</option>
							<option value="일등">일등석</option>
						</select>				
						<select name="adult" id="mainsearch">
						    <option value="1">성인1명</option>
						    <option value="2">성인2명</option>
						    <option value="3">성인3명</option>
						    <option value="4">성인4명</option>
						    <option value="5">성인5명</option>
						    <option value="6">성인6명</option>
						    <option value="7">성인7명</option>
						    <option value="8">성인8명</option>
						    <option value="9">성인9명</option>
						</select>						
						<select name="kid" id="mainsearch">
						    <option value="0">아동0명</option>
						    <option value="1">아동1명</option>
						    <option value="2">아동2명</option>
						    <option value="3">아동3명</option>
						</select>
						<input type="submit" value="검색" id="mainsearch">
					</div>
				</div>
			  </div>
			</form>
		</div>
   </div>
</body>
</html>