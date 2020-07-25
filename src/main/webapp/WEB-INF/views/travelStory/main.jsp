<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="ko" class="">
<head>
<style>
h1.tit_logo {
	margin-top: 13px;
}

.gnb_back {
	margin-top: -20px;
}

ul.trv_story_list {
    display: grid;
    grid-template-columns: 285px 284px 284px 283px;
    grid-template-rows: 305px 300px;
    grid-gap: 21px;
}
</style>
<meta charset="utf-8">
<meta http-equiv="Expire" content="-1">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">
<link rel="shortcut icon" type="image/x-icon"
	href="/static/images/common/ico_yb.ico">
<!-- css resources -->
<link href="/resources/css/common.css" rel="stylesheet">
<link href="/resources/css/popup.css" rel="stylesheet">
<link href="/resources/css/template.css" rel="stylesheet">
<link href="/resources/css/content.css" rel="stylesheet">
<link href="/resources/css/font-nanum.css" rel="stylesheet">
<!-- SEO START -->

<title>새하투어 [여행을 편하게]</title>
<!-- SEO END -->
<body>
	<%@include file="../homeNav.jsp" %>
	<div id="wrap">
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
					<h4 class="stit_con_title">주간인기</h4>
					<div class="week_best">
						<ul class="list_best_review">
							<li>
								<strong class="ico_flag_red">주간<br>Best</strong>
								<a href="javascript:;" onclick="goDetail(20000002024)"> 
									<span class="best_con">
									<span class="thumb">
										<img src="https://cimgcdn.ybtour.co.kr/attachHome/YT/MZ/201903/201903081127358911712012001097.jpg" alt="주간인기 상품이미지"></span>
										<span class="ico_brd_tour">여행지정보</span>
										<h5 class="tit_list_block">
											<span class="link_ellipsis multiline"
												style="white-space: normal; height: 48px;">TV 속 그 곳이 알고싶다 - '커피프렌즈' 속 힐링제주
											</span>
										</h5>
									</span>
								</a>
							</li>

							<li>
								<strong class="ico_flag_red">주간<br>Best</strong>
									<a href="javascript:;" onclick="goDetail(20000002004)">
										<span class="best_con"> <span class="thumb">
											<img src="https://cimgcdn.ybtour.co.kr/attachHome/YT/MZ/201902/201902011501190421712012001020.jpg" alt="주간인기 상품이미지"></span> <span class="ico_brd_tour">여행지정보</span>
											<h5 class="tit_list_block">
												<span class="link_ellipsis multiline" style="white-space: normal; height: 48px;">대한민국 인천 국제 공항 4배 더 즐기기-부대시설편</span>
											</h5>
										</span>
									</a>
							</li>

							<li>
								<strong class="ico_flag_red">주간<br>Best</strong>
								<a href="javascript:;" onclick="goDetail(20000001984)">
									<span class="best_con">
									<span class="thumb">
										<img src="https://cimgcdn.ybtour.co.kr/attachHome/YT/MZ/201901/201901311253447971712012001049.jpg" alt="주간인기 상품이미지"></span>
										<span class="ico_brd_tour">여행지정보</span>
											<h5 class="tit_list_block">
												<span class="link_ellipsis multiline" style="white-space: normal; height: 48px;">[노랑풍선 토픽: 미국vs서부] 감동의 대자연코스 vs 신나는 테마파크 코스</span>
											</h5>
									</span>
								</a>
							</li>
						</ul>
					</div>
				</div>

				<!--게시물 내용-->
				<ul class="trv_story_list">
					<c:forEach items="${list}" var="item">
						<li>
							<span class="thumb_pic">
								<img src="${item.preview}" alt="이미지"></span>
							<div class="story_list_info">
								<span class="ico_brd_tour">여행지정보</span>
								<a id="goDetail" href="/travelStory/detail?seq=${item.seq}" data-seq="${item.seq}">
									<h5 class="tit_list_block link_ellipsis multiline" style="white-space: normal; height: 48px;">${item.title }
								</a>
									<h5 class="tit_list_block link_ellipsis multiline" style="white-space: normal; height: 48px;">작성자 : ${item.name }</h5>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>

		<div id="footer">
			<!-- banner -->
			<div class="footer_block">
				<div class="global_block">
					<h5 class="tit_norang">(주)새하투어</h5>
					<address>
						대표이사 이준호 | 서울특별시 중구 수표로 31, 새하투어빌딩<br> 사업자등록번호 104-81-64440 |
						관광사업자등록증번호 제2006-000003호<br> 통신판매업신고번호 제2008-서울중구-0278
					</address>
					<p class="txt_footer_info">
						대표전화 1544-2288 | 이메일 <a href="mailto:master@ybtour.com"
							class="underline_link">master@ybtour.com</a><br> 영업배상책임보험가입
						총 20억원, 인허가보증보험가입 5억원, 한국관광협회중앙회 여행공제회 공제영업보증가입 10억원
					</p>
					<div class="site_blc">
						<ul class="sel_site_list" style="display: none">
							<li><input type="radio" name="sitelink"
								value="http://www.0404.go.kr" id="site1"><label
								for="site1">외교부 해외안전여행</label></li>
							<li><input type="radio" name="sitelink"
								value="http://www.ftc.go.kr" id="site2"><label
								for="site2">공정거래위원회</label></li>
							<li><input type="radio" name="sitelink"
								value="https://www.kca.go.kr/index.do" id="site3"><label
								for="site3">한국소비자원</label></li>
							<li><input type="radio" name="sitelink"
								value="http://www.kata.or.kr" id="site4"><label
								for="site4">한국여행업협회</label></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="floating"></div>
		</div>
	</div>
</body>
<script src="/js/biz/yb.user.js"></script>
<script src="/resources/js/jquery.js"></script>
</html>