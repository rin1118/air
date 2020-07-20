<!-- 국내 호텔 누르면 나오는 숙소 메인 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/stay.css">
<!-- 탭 메뉴 플러그인 -->
<link rel="stylesheet" href="/resources/css/jquery-ui.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.standalone.min.css"><style>

#search_input{
	margin-bottom: 10px;
}

#date1, #date2 {
    border: 1px solid #aaa;
    height: 3.1em;
}
</style>

<!-- 탭 메뉴 스크립트 -->
<link rel="shortcut icon" type="image/x-icon" href="http://172.30.1.3/webcontent/favicon.ico" />
<title>새하투어 [여행을 편하게]</title>
<link rel="shortcut icon" href="../favicon.ico"/>
</head>
<body>
	<div id="ybWrap">
		<div id="wrap">
				<!-- 상단 로고 -->
				<%@include file="../homeNav.jsp" %>
				<div class="hotelContainer">
					<form action="/stay/hotelList" method="get">
						<div width="50px" id="search_input">
							<select id="mainsearch1" name="stayRegion">
								<option value="">도시를 선택해주세요</option>
								<option value="서울">서울</option>
								<option value="경기">경기</option>
								<option value="강원">강원</option>
								<option value="충청">충청</option>
								<option value="경상">경상</option>						
								<option value="전라">전라</option>
								<option value="제주">제주</option>
							</select>
							<input type="text" name="checkin" id="date1" size="12" placeholder="체크인 날짜" readonly >
							<input type="text" name="checkout"   id="date2" size="12" placeholder="체크아웃 날짜" readonly>
							<script>
								$(function(){
									$('#date1').datepicker({
										format : "yyyy-mm-dd" // 달력에서 클릭시 표시할 값 형식
									});
									
									$('#date2').datepicker({
										format : "yyyy-mm-dd" // 달력에서 클릭시 표시할 값 형식
									});
								});
							</script>
							<input type="submit" value="검색" id="mainsearch">
						</div>			
					</form>
				</div>
			</div>
	   </div>
		<div id="recommend">
      	  <h3 class="txt_tit">도시별 추천호텔</h3>
        	<div class="container">
	            <div class="tab_comn">  	
		            <button type="button" class="btn_tab " onclick="openCity(0)" value="0">서울</button>
		            <button type="button" class="btn_tab " onclick="openCity(1)" value="1">경기/인천</button>
		            <button type="button" class="btn_tab " onclick="openCity(2)" value="2">강원</button>
		            <button type="button" class="btn_tab " onclick="openCity(3)" value="3">부산</button>
		            <button type="button" class="btn_tab " onclick="openCity(4)" value="4">경상</button>
		            <button type="button" class="btn_tab " onclick="openCity(5)" value="5">전라</button>
		            <button type="button" class="btn_tab " onclick="openCity(6)" value="6">충청</button>
		            <button type="button" class="btn_tab " onclick="openCity(7)" value="7">제주</button>
	            </div>
           		 
				<!-- 서울 추천호텔 -->
             	<div class="tab_cont" id="div_179900" style="display: block;">
             		<c:forEach items="${list}" var="item">
				        <div class="item_cont" onclick="location.href=/Hotel/Int/Avail/List.aspx?HotelCode=18997&amp;CityCode=179900&amp;CheckIn=2019-04-29&amp;CheckOut=2019-04-30&amp;RoomCnt=1&amp;PaxInfo=2^0^">
							<input type="hidden" name="adult" value="">
							<input type="hidden" name="kid" value="">		
							<a href="/stay/detail?staynum=${item.staynum}">	
					        	<img class="hotelThumbnail" alt="" src="https://i.travelapi.com/hotels/1000000/20000/19000/18997/d83ac8c3_z.jpg">
					        </a>
			                <div class="cont_txt">
								<span class="grade">⭐ ${item.staygrade}</span>	
					            <span class="main">${item.stayname}</span>
					            <span class="sub">${item.stayaddress}</span>
					            <span class="price">${item.staycost}원</span>
					        </div>
				       </div>
			 		</c:forEach>
		 		</div>
				   	      
				<!--경기/인천 -->
				<div class="tab_cont" id="div_179897" style="display: block;">
			    </div>
	            
				<!-- 강원 -->
	            <div id="div_1265" class="tab_cont" style="display: block;">
	          	</div>
	            
	            <!--             부산 -->
	            <div id="div_184245" class="tab_cont" style="display: block;">
			   </div>
			 
				<!--경상제주 -->
				 <div id="div_180030" class="tab_cont" style="display: block;">
				</div>
				
			
				<!--전라도 -->
				<div id="div_974" class="tab_cont" style="display: block;">
		       	</div>
			
				<!--충청 -->
				<div id="div_179898" class="tab_cont" style="display: block;">
		      	</div>
			
				<!-- 제주 -->
				<div id="div_1488" class="tab_cont" style="display: block;">
			    </div>
  		 </div>
   </div>
</body>

<script src="/resources/js/jquery-2.1.1.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="/resources/js/jquery-ui.min.js"></script>
<script src="/resources/js/jquery.js"></script>
<script src="/resources/js/eye.js"></script>
<script src="/resources/js/layout.js"></script>
<script src="/resources/js/utils.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script>
	function openCity(idx) {
		var tabs = $('.btn_tab');
	    var tabs1 = $('.btn_tab').val();
	    var conts = $('.tab_cont');
	//     alert(tabs1[idx]);
	    tabs.removeClass('active');
	    conts.hide();
	    $(tabs[idx]).addClass('active'); 
	    var test = $(tabs[idx]).addClass('active').val();
	    $(conts[idx]).show();  
	};
</script>
</html>