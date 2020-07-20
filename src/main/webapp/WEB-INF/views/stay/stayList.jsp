<!-- 숙소 메인 페이지에서 여행지 검색하면 검색한 지역 호텔 리스트 보여주는 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<title>새하투어 [여행을 편하게]</title>
<link rel="shortcut icon" href="../favicon.ico"/>
<link rel="stylesheet" href="/resources/css/stay.css">
<style>
div {
	display: block;
}

.fr1rgm1 {
	background: none;
	min-height: 100vh;
	padding: 0;
}

body {
	font-family: NanumSquare;
}

html {
	font-size: 62.5%;
	box-sizing: border-box;
}

*, *:before, *:after {
	box-sizing: inherit;
}

.f12kdqor {
	margin: 0 auto;
	max-width: 90rem;
	position: relative;
}

.f118masp {
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	height: 16.5rem;
	overflow: hidden;
	padding: 0 1rem;
	position: relative;
	width: 100%;
}

.f6nvz4 {
	color: #333;
	font-size: 2rem;
	font-weight: bold;
	padding: 0;
	vertical-align: middle;
}

.f4efeni {
	background-color: #FFFFFF;
	padding: 1.5rem 1.5rem 0;
	position: relative;
	margin-bottom: 30px;
	height: 11em;
}

.fgk86s8::after {
	clear: both;
	content: "";
	display: table;
}

.f1tjvmdt {
	padding: 0.5rem 0;
	vertical-align: middle;
}

.fa89ubw>span, .fluw2jh>span {
	padding-left: 0.1rem;
}

.fa89ubw {
	color: #999;
	font-size: 1.3rem;
	height: 1.5rem;
	margin: 0.5rem 0;
	overflow: hidden;
	position: relative;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.fqkzle0 {
	color: #333;
	display: inline-block;
	font-size: 2rem;
	font-stretch: normal;
	font-weight: bold;
	margin-right: 1rem;
	margin-top: 0.2rem;
}

.frkfzjj {
	color: #999;
	overflow: hidden;
}

.f1j4sdbk {
	color: #666;
	font-size: 1.4rem;
	height: 1.5rem;
	margin: 0.5rem 0;
	position: relative;
}

.f6o7090 {
	background-color: #F5F5F5;
	border-radius: 0.4rem;
	margin: 0.8rem 0;
	position: relative;
}

.f1wuvx1u.yellow i.on {
	background: url(//yaimg.yanolja.com/joy/sunny/static/images/rate-on.svg)
		no-repeat;
}

.f1wuvx1u>i {
	display: inline-block;
	height: 1.5rem;
	vertical-align: top;
	width: 1.5rem;
}

.f1j4sdbk i {
	margin-right: 0.3rem;
	vertical-align: middle;
}
#sub{
    background: #FFFFFF;
    border: 1px solid #FF3478;
    color: #FF3478;
    padding: 0.3rem 0.25rem 0.2rem 0.25rem;
    border-radius: 1rem;
    position: absolute;
    font-size: 0.9rem;
    float: right;
}
input#sub1 {
    background: #FFFFFF;
    border: 1px solid #1891ee;
    color: #1891ee;
    padding: 0.3rem 0.25rem 0.2rem 0.25rem;
    border-radius: 1rem;
    font-size: 0.9rem;
    margin-left: 53px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="ybWrap">
		<div id="wrap">
			<%@include file="../homeNav.jsp" %>
			<div id="recommend">
				<h3 class="txt_tit">
					${region }
					추천호텔
				</h3>
				<div class="hotelListContainer">				
					<!-- foreach 시작 -->
						<c:forEach items="${result }" var="item">	
									<div class="f1f3qima big_banner-place-3017359">																
											<div class="hotelListImgBox">							
											</div>	
											<div class="f4efeni">
												<div class="fdzqypk">
													<a href="/stay/detail?staynum=${item.staynum }&checkIn=${checkIn}&checkOut=${checkOut}">
														<h1 class="f6nvz4 normal">${item.stayname }	<!-- 호텔명 --></h1>
													</a>
												</div>
												<div class="f1j4sdbk">
													<div>
														<div class="f1wuvx1u yellow">
															<i class="on"></i> 
															<span>${item.staygrade }</span>	<!-- 호텔등급 -->
														</div>
													</div>
												</div>
												<div class="fa89ubw">
													<i></i>
													<span>${item.stayaddress }</span>	<!-- 호텔주소 -->
												</div>
												<div class="f6o7090">
													<i></i>
												</div>
												<div class="f1tjvmdt fgk86s8">
													<div class="f1o72kj7">
														<div class="frkfzjj fgk86s8">
															<div class="fqkzle0">
																<!-- 호텔가격 -->
																${item.staycost }<small>원</small>
															</div>
														</div>
													</div>
												</div>
												<input type="hidden" name="checkIn" value="${checkIn }">
												<input type="hidden" name="checkOut" value="${checkOut }">
												<%-- 
												<!--
													<div>
														<span>
															<a href="stay_detail.jsp?stayname=<%=kobean.getStayname()%>&staynum=<%=kobean.getStaynum()%>&staygrade=<%=kobean.getStaygrade()%>&adult=<%=adult%>&kid=<%=kid%>">
																<input type="button" value="예약하기" id="sub">
															</a>
														</span>
													</div>
													<div>
														<span>
															<a href="../wishinsert.jsp?kind=호텔&stayname=<%=kobean.getStayname()%>&staynum=<%=kobean.getStaynum()%>&staygrade=<%=kobean.getStaygrade()%>&adult=<%=adult%>&kid=<%=kid%>&cost=<%=kobean.getStaycost()%>&start=<%=checkin%>&end=<%=checkout%>">
																<input type="button" value="위시리스트" id="sub1">
															</a>
														</span>
													</div>
												  -->--%>
											</div> 
									</div>
						</c:forEach>	
				</div>
			</div>
		</div>
	</div>
</body>
</html>