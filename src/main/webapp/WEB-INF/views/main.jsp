<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>Home</title>
<link href="/resources/css/main.css" rel="stylesheet" />
<link rel="stylesheet" href="/resources/css/search-fast.css" />
<link rel="stylesheet" href="/resources/css/jquery-ui.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body class="is-preload">
	<div class="main">
		<div class="inner">
			<!-- 헤더 -->
			<%@include file="homeNav.jsp"%>
			<!-- 메인 배너 이미지슬라이드 -->
			<section id="banner" class="mainimage">
				<div class="bannerItem">
					<iframe src="/travelInfo/main_img.html" width="100%" height="600px"></iframe>
				</div>
			</section>
			<div class="view">
				<!-- 여행지 검색 -->
				<header class="major" id="mainsort">
					<h2>🌴 설레는 여행! 떠나고 싶으신 곳을 빠르게 찾아보세요</h2>
				</header>
				
				<div class="tabMenuContainer">
					<!-- 탭 메뉴 -->
					<ul class="nav nav-pills">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#qwe">여행</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#asd">항공</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#zxc">호텔</a></li>
					</ul>
				</div>
				
				<div class="itemListContainer">
					<!-- 여행 탭 메뉴 -->
					<div class="itemList item1" id="qwe">
						<form class="tabMenuForm">
							<input type="text" placeholder="여행지를 입력해 주세요."> <input
								type="text" placeholder="출발 일자를 입력해 주세요."> <input
								type="submit" value="검색">
						</form>
					</div>

					<!-- 항공 탭 메뉴-->
					<div class="itemList item2" id="asd">
						<form class="tabMenuForm" name="airinfo" id="airinfo" method="get" action="stay/air_list.jsp">
							<input type="text" name="start_city" autocomplete="off" placeholder="출발지를 입력해주세요."> 
							<input type="text" name="depart_city" autocomplete="off" placeholder="도착지를 입력해주세요.">
							<input type="text" name="start_date" id="date2" autocomplete="off" placeholder="출발일." readonly>
							<input type="text" name="depart_date" id="date3" autocomplete="off" placeholder="도착일." readonly>
							<div class="fieldlabel">
								<span>좌석 등급</span> <select name="seat"
									style="font-size: 1.2em; height: 2.0em;">
									<option value="일반">일반석</option>
									<option value="비지니스">비지니스석</option>
									<option value="일등">일등석</option>
								</select>
							</div>
							<div class="fieldlabel">
								<span>인원</span> 
								<select name="adult" style="font-size: 1.2em; height: 2.0em; margin-left: 1.0em;">
									<c:forEach var="item" begin="1" end="10">
										<option value="${item}">성인 ${item}명😀</option>
									</c:forEach>
								</select>
								<select name="kid" style="font-size: 1.2em; height: 2.0em;">
									<c:forEach var="item" begin="0" end="10">
										<option value="${item}">아동 ${item}명😀</option>
									</c:forEach>
								</select>
							</div>
							<input type="submit" value="검색">
						</form>
					</div>

					<!-- 숙소 탭 메뉴 -->
					<div class="itemList item3 " id="zxc">
						<form class="tabMenuForm">
							<input type="text" name="hotel_travel" autocomplete="off" placeholder="여행지를 입력해주세요." style="width: 26.55em;">
							<input type="text" name="hotel_ckin" id="date4" autocomplete="off" style="margin-right: 2em" placeholder="체크인 날짜" readonly>
							<input type="text" name="hotel_ckout" id="date5" autocomplete="off" placeholder="체크아웃 날짜" readonly>
							<div class="fieldlabel" style="clear: both">
								<span>객실 수</span>
								<select style="font-size: 1.2em; height: 2.0em; width: 100%;">
									<c:forEach var="item" begin="1" end="10">
										<option value="${item}">${item }</option>
									</c:forEach>
								</select>
							</div>
							<div class="fieldlabel" style="margin-left: 2em">
								<p align="left">인원</p>
								<select style="font-size: 1.2em; height: 2.0em; width: 48%">
									<c:forEach var="item" begin="1" end="10">
										<option value="${item}">성인 ${item}명</option>
									</c:forEach>
								</select>
								<select style="font-size: 1.2em; height: 2.0em; width: 48%">
									<c:forEach var="item" begin="1" end="10">
										<option value="${item}">아동 ${item}명</option>
									</c:forEach>
								</select>
							</div>
							<input type="submit" value="검색">
						</form>
						<div id="tab3" class="tabcontent">
							<div class="fieldlabel">
								<span>여행지</span>
								<span class="hotel_travel_search"> </span>
							</div>
							<div class="fieldlabel">
								<span>체크인</span>
								<input type="text" name="hotel_ckin" id="date4" autocomplete="off" tyle="margin-right: 2em" readonly>
							</div>
							<div class="fieldlabel">
								<span>체크아웃</span>
								<input type="text" name="hotel_ckout" id="date5" autocomplete="off" readonly>
							</div>
							<div class="fieldlabel" style="clear: both">
								<span>객실 수</span>
								<select style="font-size: 1.2em; height: 2.0em; width: 100%;">
									<c:forEach var="item" begin="1" end="10">
										<option value="${item}">${item }</option>
									</c:forEach>
								</select>
							</div>
							<div class="fieldlabel" style="margin-left: 2em">
								<p align="left">인원</p>
								<select style="font-size: 1.2em; height: 2.0em; width: 48%">
									<c:forEach var="item" begin="1" end="10">
										<option value="${item}">성인 ${item}명</option>
									</c:forEach>
								</select>
								<select style="font-size: 1.2em; height: 2.0em; width: 48%">
									<c:forEach var="item" begin="1" end="10">
										<option value="${item}">아동 ${item}명</option>
									</c:forEach>
								</select>
							</div>
							<div class="fieldlabel">
								<button class="bttn-bordered bttn-md bttn-primary" style="margin-top: 2.6em; margin-left: 8.12em;">검색</button>
							</div>
						</div>
					</div>
				</div>

				<!-- 국내 항공, 숙박 예약 페이지 바로가기 -->
				<div class="menu">
					<header class="major">
						<h2>🌴 국내여행</h2>
					</header>
					<div class="features">
							<div id="mainlink">
								<i class="icon fas fa-plane"></i>
								<div class="content">
									<a href="/air/main">
										<h3>항공권</h3>
									</a>
								</div>
							</div>
							<div id="mainlink">
								<i class="icon fas fa-home"></i>
								<div class="content">
									<a href="/stay/main">
										<h3>호텔</h3>
									</a>
								</div>
							</div>
							<div id="mainlink">
								<i class="icon far fa-credit-card"></i>
								<div class="content">
									<a href="/travelStory/main">
										<h3>여행이야기</h3>
									</a>
								</div> 
							</div>
					</div>
				</div>
					<!-- 여행 이야기 바로가기 -->
				<div class="imgContainer">
					<header class="major">
						<h2>🌻 여행이야기</h2>
					</header>
					<div class="posts">
						<div class="postsItem">
							<a href="travelStory/storycontent.jsp?seq=3" class="image">
								<img src="/resources/img/11.jpg" alt="1" />
							</a>	
						</div>
						<div class="postsItem">
							<a href="travelStory/storycontent.jsp?seq=3" class="image">
								<img src="/resources/img/11.jpg" alt="1" />
							</a>	
						</div>
						<div class="postsItem">
							<a href="travelStory/storycontent.jsp?seq=3" class="image">
								<img src="/resources/img/11.jpg" alt="1" />
							</a>	
						</div>
						<div class="postsItem">
							<a href="travelStory/storycontent.jsp?seq=3" class="image">
								<img src="/resources/img/11.jpg" alt="1" />
							</a>	
						</div>
						<div class="postsItem">
							<a href="travelStory/storycontent.jsp?seq=3" class="image">
								<img src="/resources/img/11.jpg" alt="1" />
							</a>	
						</div>
						<div class="postsItem">
							<a href="travelStory/storycontent.jsp?seq=3" class="image">
								<img src="/resources/img/11.jpg" alt="1" />
							</a>	
						</div>
					</div>	
				</div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp" %>
</body>

<script src="https://kit.fontawesome.com/f6a43f8b4e.js"
	crossorigin="anonymous"></script>
<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/js/browser.min.js"></script>
<script src="/resources/js/breakpoints.min.js"></script>
<script src="/resources/js/util.js"></script>
<script src="/resources/js/main.js"></script>
<script src="/resources/js/tabMenu.js"></script>
<script src="/resources/js/jquery-3.1.1.min.js"></script>
<script src="/resources/js/query-ui.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="/resources/js/datepicker-ko.js"></script>
</html>
