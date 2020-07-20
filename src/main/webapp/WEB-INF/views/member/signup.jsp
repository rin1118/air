<!-- 회원가입 뷰 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>새하투어 [여행을 편하게]</title>
<link rel="shortcut icon" href="favicon.ico"/>
<script src="/resources/js/jquery.js"></script>
<script>

   function validate() {

	   var re = /^[a-zA-Z](?=.{0,28}[0-9])[0-9a-zA-Z]{4,19}$/; // 아이디가 적합한지 검사할 정규식
	   var repw = /^[a-zA-Z0-9]{8,16}$/; // 비밀번호가 적합한지 검사할 정규식
	   var mailCheck = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/; // 이메일이 적합한지 검사할 정규식
	   var reNum = /^[0-9]+$/; // 전화번호 적합한지 검사할 정규식
	   var nameCheck = /^[가-힣]{2,7}$/; // 이름이 적합한지 검사할 정규식
	   var numCheck1 = /^(?:[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))$/; // 주민번호 앞자리가 적합한지 검사할 정규식
	   var numCheck2 = /^[1-4][0-9]{6}$/; // 주민번호 뒷자리가 적합한지 검사할 정규식

	   var userName = document.getElementById("userName").value; //이름
	   var userId = document.getElementById("userId").value;  //아이디
	   var userPw = document.getElementById("userPw").value;  //비밀번호
	   var email = document.getElementById("email").value; // 이메일 앞자리
	   var userPwCheck= document.getElementById("userPwCheck").value; //비밀번호확인
	   var phone = document.getElementById("phone").value; //폰번호

	   if(userId=="") {
	      alert("아이디를 입력해주세요");
	      return false;
	   }

	   if(!re.test(userId)) {
	      alert("아이디는 5~20자의 영문자와 숫자만 사용 가능합니다.");
	      return false;
	   }

	   if(userPw=="") {
	      alert("비밀번호는 8~16자 영문자와 숫자를 사용하세요.");
	      return false;
	   }

	   if(!repw.test(userPw)) {
	      alert("비밀번호는 8~16자 영문자와 숫자를 사용하세요.");
	      return false;
	   }

	   if(userPw != userPwCheck) {
	     alert("비밀번호가 일치하지 않습니다.");
	     return false;
	   }

     if(!nameCheck.test(userName)) {
       alert("이름을 확인해주세요.");
       return false;
     }

     if(!mailCheck.test(email)) {
       alert("이메일 형식을 확인해주세요");
       return false;
     }

     if(!reNum.test(phone)) {
       alert("핸드폰 번호 형식을 확인해주세요");
       return false;
     }
   }
</script>

<style>
#container, #footer, #header {
    margin: 0 auto;
    max-width: 768px;
    min-width: 460px;
}
#header {
    position: relative;
    overflow: hidden;
    padding: 62px 0 59px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.join_title {
    margin: 19px 0 8px;
    font-size: 14px;
    font-weight: 700;
}
body, button, dd, dl, dt, fieldset, form, h1, h2, h3, h4, h5, h6, input, legend, li, ol, p, select, table, td, textarea, th, ul {
    margin: 0;
    padding: 0;
}

body, button, input, select, table, textarea {
    font-family:NanumSquare;
    font-size: 12px;
    -webkit-text-size-adjust: none;
}
body {
    position: relative;
    background: #f5f6f7;
}
#header .h_logo::before {
    content: "\00a0";
    font-size: 0px;
   
}
#header .h_logo {
    display: block;
    overflow: hidden;
    width: 214px;
    height: 63px;
    margin: 0 auto;
    background: url('images/mainlogo.png');
    background-repeat: no-repeat;
	background-size: initial;
	margin-left: 13.6em;
	
}
a {
    text-decoration: none;
}
.ps_box.int_id {
    padding-right: 110px;
}
.ps_box, .ps_box_disable {
    display: block;
    position: relative;
    width: 100%;
    height: 51px;
    border: solid 1px #dadada;
    padding: 10px 14px 10px 14px;
    background: #fff;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    vertical-align: top;
}
.int {
    display: block;
    position: relative;
    width: 100%;
    height: 29px;
    padding-right: 25px;
    line-height: 29px;
    border: none;
    background: #fff;
    font-size: 15px;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    z-index: 10;
    *position:absolute: ;
    *top:0: ;
    *left:0: ;
    apperance: none;
    -webkit-apperance: none;
}
button, input, select, textarea {
    border: 0;
    border-radius: 0;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
}
.step_url {
    position: absolute;
    top: 16px;
    right: 13px;
    font-size: 15px;
    line-height: 18px;
    color: #8e8e8e;
}
.join_birthday .ps_box {
    padding: 11px 14px;
}
.bir_mm + .bir_dd, .bir_yy + .bir_mm {
    padding-left: 10px;
}
.bir_dd, .bir_mm, .bir_yy {
    display: table-cell;
    table-layout: fixed;
    width: 147px;
    vertical-align: middle;
    *display:block: ;
    *float:left: ;
}
input:-ms-input-placeholder.int {
    color: #8e8e8e;
}
#container, #footer, #header {
    margin: 0 auto;
    max-width: 768px;
    min-width: 460px;
}
#footer {
    clear: both;
    margin: 0 auto;
    padding: 30px 0 15px 0;
    text-align: center;
}
#footer ul li a:hover, #footer ul li a:hover strong {
    color: #skyblue;
}
#footer a:hover {
    text-decoration: underline;
}
#footer a {
    text-decoration: none;
    color: #333;
}
#footer * {
    font-size: 12px;
    font-style: normal;
    line-height: normal;
    margin: 0;
    padding: 0;
    list-style: none;
    color: #333;
}
a:active, a:focus, a:hover {
    text-decoration: underline;
}
.join_membership#header {
    padding-bottom: 20px;
}
.ipin_box, .row_group {
    overflow: hidden;
    width: 100%;
}
.row_group + .row_group {
    margin-top: 20px;
}
:root .sel {
    background: #fff url(https://static.nid.naver.com/images/join/pc/sel_arr_2x.gif) 100% 50% no-repeat;
    -webkit-background-size: 20px 8px;
    background-size: 20px 8px;
}
.sel {
    width: 100%;
    height: 29px;
    padding: 7px 8px 6px 7px\9;
    font-size: 15px;
    line-height: 18px;
    color: #000;
    border: none;
    border-radius: 0;
    *height:auto: ;
    *margin-top:3px: ;
    -webkit-appearance: none;
}
.btn_primary {
    color: #fff;
    background-color: skyblue; /*가입버튼색깔*/
}
.btn_type {
    display: block;
    width: 100%;
    padding: 21px 0 17px;
    font-size: 20px;
    font-weight: 700;
    text-align: center;
    cursor: pointer;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}
.ps_box.int_pass::after {
    background: #fff url(https://static.nid.naver.com/images/ui/join/pc_icon_pass_180417.png) 0 0 no-repeat;
}
.ps_box.int_pass::after, .ps_box.int_pass_check2::after, .ps_box.int_pass_check::after, .ps_box.int_pass_step1::after, .ps_box.int_pass_step2::after, .ps_box.int_pass_step3::after, .ps_box.int_pass_step4::after {
    content: "";
    display: inline-block;
    position: absolute;
    top: 50%;
    right: 16px;
    width: 18px;
    height: 20px;
    margin-top: -10px;
    cursor: pointer;
}
.ps_box.int_pass, .ps_box.int_pass_check, .ps_box.int_pass_check2 {
    padding-right: 40px;
}

.ps_box, .ps_box_disable {
    display: block;
    position: relative;
    width: 100%;
    height: 51px;
    border: solid 1px #dadada;
    padding: 10px 14px 10px 14px;
    background: #fff;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    vertical-align: top;
}
.ps_box.int_pass_check::after {
    right: 13px;
    width: 20px;
    height: 20px;
    background: #fff url(https://static.nid.naver.com/images/ui/join/pc_icon_check_disable_180417.png) 0 0 no-repeat;
}

</style>
</head>
<body>
<div class="join_membership" id="header" role="banner">
    <h1><a class="h_logo" href="main.jsp"><span class="blind"></span></a></h1>
</div>
<div id="container" role="main">
        <div id="content">
            <!-- tg-text=title -->
            <h2 class="blind">새하투어 회원가입</h2>      
	         <form name="registerform" action="/member/signUp" method="post">
	            <div class="join_content">
	                <!-- 아이디, 비밀번호 입력 -->
	                <div class="row_group">
	                    <div class="join_row">
	                        <h3 class="join_title"><label for="id">아이디</label></h3>
	                        <span class="ps_box int_id">
								<input name="id" title="ID" class="int" id="id" type="text" maxlength="20" required>
	                            <span class="step_url"></span></span>
	                        <span class="error_next_box" id="idMsg" role="alert" style="display: none;"></span>
	                    </div>

		                <div class="join_row">
		                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
		                    <span class="ps_box int_pass" id="pswd1Img">
								<input name="pw" title="비밀번호 입력" class="int" id="pswd1" aria-describedby="pswd1Msg" type="password" maxlength="20" required>
			                    <span class="lbl">
			                    	<span class="step_txt" id="pswd1Span"></span>
			                    </span>	
							</span>
		                    <span class="error_next_box" id="pswd1Msg" role="alert" style="display: none;">5~12자의 영문 소문자, 숫자와 특수기호(_)만 사용 가능합니다.</span>
		
		                    <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
		                    <span class="ps_box int_pass_check" id="pswd2Img">
								<input name="userPwCheck" title="비밀번호 재확인 입력" class="int" id="pswd2" aria-describedby="pswd2Blind" type="password" maxlength="20" required>
								<!-- 	<span class="wa_blind" id="pswd2Blind">설정하려는 비밀번호가 맞는지 확인하기 위해 다시 입력 해주세요.</span> -->
							</span>
		                    <span class="error_next_box" id="pswd2Msg" role="alert" style="display: none;"></span>
		                </div>
	              	  </div>
                	<!-- // 아이디, 비밀번호 입력 -->

	                <!-- 이름, 생년월일 입력 -->
	                <div class="row_group">
	                    <div class="join_row">
	                        <h3 class="join_title">
	                        	<label for="name">이름</label>
	                        </h3>
	                        <span class="ps_box box_right_space">
								<input name="name" title="이름" class="int" id="name" type="text" maxlength="40" required>
							</span>
	                        <span class="error_next_box" id="nameMsg" role="alert" style="display: none;"></span>
	                    </div>
	                 </div>
	
	                   <span class="error_next_box" id="genderMsg" role="alert" style="display: none;"></span>
	                   <div class="join_row join_email">
	                       <h3 class="join_title"><label for="email">이메일<span class="terms_choice"></span></label></h3>
	                       <span class="ps_box int_email box_right_space">
								<input name="email" class="int" id="email" aria-label="선택입력" type="text" maxlength="100" required>
							</span>
	                   </div>
	                    <span class="error_next_box" id="emailMsg" role="alert" style="display: none;"></span>
  
						<h3 class="join_title">
							<label for="email">전화번호</label>
						</h3>
		                <div class="int_mobile_area">
							<span class="ps_box int_mobile">
							<label class="lbl" for="phoneNo">
								<input name="phone" class="int" id="phoneNo" aria-label="전화번호 입력" type="tel" maxlength="16" placeholder="전화번호 입력" required>
							</label>
							</span>
		                </div>
                 </div>
                 <div class="btn_area">
                    <button class="btn_type btn_primary" id="btnJoin" type="submit"><span>가입하기</span></button>
                 </div>
	    	</form>
	   </div>
</div>
    
	<div id="footer" role="contentinfo">
		<ul>
			<li><a href="#">이용약관</a></li>
			<li><strong><a href="#">개인정보처리방침</a></strong></li>
			<li><a href="#">책임의 한계와 법적고지</a></li>
			<li><a href="#" target="_blank">회원정보 고객센터 </a></li>
		</ul>
		<address>
			<em><a class="logo" href="main.jsp" target="_blank"><span class="blind">SAIHA</span></a></em>
			<em class="copy">Copyright</em>
			<em class="u_cri">©</em>
			<a class="u_cra" href="main.jsp" target="_blank">SAIHA Corp.</a>
			<span class="all_r">All Rights Reserved.</span>
		</address>
	</div>
</body>
