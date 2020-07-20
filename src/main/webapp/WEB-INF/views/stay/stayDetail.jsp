<!-- 숙소 검색 후 숙소 상세내용 보여주는 뷰 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/stayDetail.css" />
<meta charset="UTF-8">
<title>새하투어 [여행을 편하게]</title>
<link rel="shortcut icon" href="../favicon.ico"/>
<link rel="stylesheet" href="/resources/css/jquery-ui.min.css">
</head>
<body>
	<!-- 	상단 배너 -->
	<%@include file="../homeNav.jsp" %>
		<!-- 내용 -->
		<div class="f12kdqor" style="padding-bottom: 7rem">	
			<div class="imgBox">
				이미지 자리
			</div>
				<section class="f16lutfq">
					<h1 class="f1nf7oqs">${result.getStayname() }</h1>	<!-- 호텔명 -->
					<div>
						<div class="fuxyyig">
							<!--호텔등급 -->
							<span class="f11kvaew"><i></i>
								<span class="review-score">${result.getStaygrade() }</span>
							</span>
							<a class="review-arrow"></i></a>
						</div>
						<div class="f1wkdtt2"></div>
					</div>
				</section>
				<div class="f1mgyl9u">
					<section class="fhibsb6 fgk86s8" id="select-dates">
						<div class="fsjwkir">
							<div class="f1tpk9t3">
								<div class="box__subtitle">체크인</div>
								<div class="box__date">
									<input type="text" name="checkin" id="date1" size="12" autocomplete="off"  value="${checkIn }"/>
									<img class="f1wpwigu" src="//yaimg.yanolja.com/joy/sunny/static/images/ico-arrow-down-subcolor.svg" alt="down icon">
								</div>
							</div>
							<div class="fnb3cn3"></div>
							<div class="f1tpk9t3">
								<div class="box__subtitle">체크아웃</div>
								<div class="box__date">
									<input type="text" name="checkout" id="date2" size="12" autocomplete="off" value="${checkOut }"/>
									<img class="f1wpwigu"
										src="//yaimg.yanolja.com/joy/sunny/static/images/ico-arrow-down-subcolor.svg"
										alt="down icon">
								</div>
							</div>
						</div>
					</section>
					
					<!--호텔객실 -->
					<section class="f1cpfv9y">
						<c:forEach items="${rooms}" var="room">
								<div class="fpsf722 fgk86s8">
								<div class="f1twe41a">
									<div class="fwy280d">
										<li class="f1c15dir" style="background-image: url(https://yaimg.yanolja.com/v5/2019/04/19/17/640/5cb98417987ca3.58696944.jpg)"></li>
										<span class="f1hhmhuv">
											<img src="//yaimg.yanolja.com/joy/sunny/static/images/logo-yanolja-white.svg" alt="객실 사진">
										</span>
									</div>
								</div>
								<div class="fjdwf02 fgk86s8">
									<div class="f1uq95fu align-left fgk86s8">
										<h2 class="f81nzkr">${room.roomname }</h2>
									</div>							
									<a href="/stay/reservation?s_num=${result.getStaynum() }&hotelName=${result.getStayname() }&roomname=${room.roomname }&roomnum=${room.roomnum}&checkIn=${checkIn}&checkOut=${checkOut}">
										<span id="sub">예약하기</span>
									</a>;
									<div class="f18h5s33">${room.roomintro }</div>
									<div class="f18auojw">기준 ${room.people } / 최대 ${room.peoplemax }</div>
									<div class="f1d3p90v">
										<div class="align-right fhhs6c6 fgk86s8">
											<div class="fgk86s8">
												<h3 class="f179396a">숙박</h3>
												<span class="f51t7vk">15:00 부터</span>
												<span class="f10zirhv reserve-price">${room.price}원</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
				</section>
			
			<section class="f1pn2l1a">
				<div class="fvemr5r">
					<h2>숙소 소개</h2>
					<p>${result.getStayintro() }</p>
					<br>
				</div>
			</section>
			<section class="f11amndo">
				<div class="f1a3bp24"></div>
				<h2>편의시설 및 서비스</h2>
				<div class="f1uw0dhu swiper">
					<div
						class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-free-mode">
						<div class="swiper-wrapper"
							style="transform: translate3d(0px, 0px, 0px);">
							<div class="swiper-slide facility-icon swiper-slide-active">
								<img
									src="//yaimg.yanolja.com/files/2016/0531/20160531160353767c5598-e606-484d-ba08-cc1251226b4a.png"
									alt="facility icon">
								<div>주차가능</div>
							</div>
							<div class="swiper-slide facility-icon swiper-slide-next">
								<img
									src="//yaimg.yanolja.com/files/2016/0823/201608231730055f427611-63e8-4ca4-b576-e8102202276a.png"
									alt="facility icon">
								<div>24시간데스크</div>
							</div>
							<div class="swiper-slide facility-icon">
								<img
									src="//yaimg.yanolja.com/files/2016/0823/20160823172930eb2fbbde-ec55-46b3-99b3-c911d7bc52a6.png"
									alt="facility icon">
								<div>수화물보관</div>
							</div>
							<div class="swiper-slide facility-icon">
								<img
									src="//yaimg.yanolja.com/files/2016/0823/2016082317275290d9de1e-9003-4784-92ee-d0916a6eb2f1.png"
									alt="facility icon">
								<div>어메니티</div>
							</div>
							<div class="swiper-slide facility-icon">
								<img
									src="//yaimg.yanolja.com/files/2016/0823/20160823172714acc428c4-2b39-41d7-9d95-0bdddff15174.png"
									alt="facility icon">
								<div>비즈니스</div>
							</div>
							<div class="swiper-slide facility-icon">
								<img
									src="//yaimg.yanolja.com/files/2016/0823/201608231715079ce7f292-e8f5-4fad-a562-aed6c7153eb3.png"
									alt="facility icon">
								<div>객실금연</div>
							</div>
							<div class="swiper-slide facility-icon">
								<img
									src="//yaimg.yanolja.com/files/2016/0531/20160531161429b65e9c2b-b3c1-40b5-8293-6d1ff9903560.png"
									alt="facility icon">
								<div>수영장</div>
							</div>
							<div class="swiper-slide facility-icon">
								<img
									src="//yaimg.yanolja.com/files/2016/0531/201605311619014d59a14a-d087-4bc3-a3a4-e1e0254eee17.png"
									alt="facility icon">
								<div>와이파이</div>
							</div>
							<div class="swiper-slide facility-icon">
								<img
									src="//yaimg.yanolja.com/files/2016/0531/201605311629470478b82d-3777-4550-8142-db753dd02b1a.png"
									alt="facility icon">
								<div>조식운영</div>
							</div>
						</div>
					</div>
				</div>
				<div class="f1mzfcic facility">
					<ul></ul>
				</div>
			</section>
			<section class="f1pn2l1a location-container">
				<div class="f1wt3gig">
					<div>
						<div class="f1bu63pe fgk86s8">
							<i class="icon-location"></i><span class="address-detail">${stay.getAdress() }</span>
							<span class="copy-address"></span>
						</div>
					</div>
			</section>
			</a>
		</div>
		</div>
		

<script src="/resources/js/jquery.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="/resources/js/jquery-2.1.1.min.js"></script>
<script src="/resources/js/query-ui.min.js"></script>
<script src="/resources/js/datepicker-ko.js"></script>
<script>
$(function(){
	$("#date1").datepicker();
	$("#date2").datepicker();
});
</script>	
</body>
</html>


