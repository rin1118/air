<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호텔 예약</title>
<link rel="stylesheet" href="/resources/css/stay.css">
</head>
<body>
<%@include file="../homeNav.jsp" %>
<div class="reservationMain">
	<form class="reservationForm" action="/stay/reservation" method="post">
		<input type="hidden" name="s_num" value="${item.s_num }">
		<input type="hidden" name="book_product" value="${item.roomnum }">
		<div class="hotelInfo">
			<input type="text" name="hotelName" value="${item.hotelName }" readonly>
			<div>
				<span>객실명</span>
				<input type="text" name="roomName" value="${item.roomname }" readonly>			
			</div>
			<div>
				<span>체크인</span>
				<input type="text" name="book_checkin" value="${item.checkIn}" readonly>			
			</div>
			<div>
				<span>체크아웃</span>
				<input type="text" name="book_checkout" value="${item.checkOut }" readonly>		
			</div>
		</div>
		<div class="peopleInfo">
			<span>예약자</span>
			<input type="text" name="name">
			<span>핸드폰 번호</span>
			<input type="text" name="phone">		
		</div>
		<input type="submit" value="예약하기">
	</form>
</div>
</body>
</html>