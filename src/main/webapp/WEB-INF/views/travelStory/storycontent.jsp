<!-- 메인화면에 있는 여행 이야기 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.*"%>
<%@ page import="java.util.*"%>
<% 
	String seq = request.getParameter("seq");
	Dbcon dbcon = new Dbcon();

	ArrayList board = dbcon.boardSelect(seq);
	StoryBean bean = new StoryBean();

%>
<!DOCTYPE html>
<html>
<head>
<style>

#container {position:relative;width:1200px; padding-bottom:100px; margin:auto}

.tit_con_title.line {
    padding: 10px 0 20px 0;
    margin-bottom: 40px;
    border-bottom: 2px solid #222;
}

.tit_con_title {
    margin-bottom: 20px;
    line-height: 1;
    font-size: 32px;
    font-family: "Noto_m";
    color: #222;
}

.tbl_cell {
    width: 780px;
    height: 80px;
    display: table-cell;
    line-height: 1.4;
    vertical-align: middle;
}

.tit_con_title.line + .brd_title {
    margin-top: -40px;
    border-bottom:2px solid #222;
}

.tit_con_title + .brd_title {
    margin-top: -20px;
}

.brd_title {
    position: relative;
    height: 80px;
    padding: 0 20px;
    font-size: 18px;
    font-family: "Noto_m";
}

html, body {
    position: relative;
    height: 100%;
    font-family: "NanumSquare";
    font-size: 15px;
    word-break: break-all;
    color: #555;
}

.brd_editor.story_brd_editor {
    border-bottom: 0;
    text-align: center;
    background: #a9bac02e;
}


</style>
<meta charset="UTF-8">
<title>새하투어 [여행을 편하게]</title>
<link rel="shortcut icon" href="../favicon.ico"/>
</head>
<body>
<h1 class="tit_logo">
					<a href="../main.jsp"><img src="../images/mainlogo.png"
						alt="새하투어" width="140em"></a>
</h1>
<div id="container">
		<div class="page_navigation">
			<ul class="page_nav">
<!-- 				<li><a href="/index.yb">홈</a></li> -->
<!-- 				<li><a href="javascript:void(0);">여행이야기</a></li> -->
			</ul>
		</div>
		<%
			for(int i=0;i<board.size();i++){
				bean = (StoryBean)board.get(i);
		
		%>
		<div class="content_block" id="content">
			<h3 class="tit_con_title line">여행이야기</h3>
			<h4 class="brd_title">
				<span class="tbl_cell">
					<span class="brd_tag">
						<span class="ico_brd_tour">여행지정보</span>		
					</span>
						<%=bean.getTitle()%>
					<span class="brd_date"><%=bean.getDate() %></span>
				</span>
			</h4>
			
			<div class="brd_editor story_brd_editor" white-space="pre">	<!-- 글 내용 -->
			
			
				
			<p><img width="400" height="310" alt="" src="https://cimgcdn.ybtour.co.kr/attachHome/img/webImg/2019/4/19/201904191452333130.jpg"></p>
			<p><img width="400" height="300" alt="" src="https://cimgcdn.ybtour.co.kr/attachHome/img/webImg/2019/4/19/201904191452449230.jpg"></p>
			
			<%=bean.getContent() %>
			</div>
		<% 
			}
		%>	
			



<!-- 밑에서부터 하단 좋아요, 소셜공유, 댓글창				 -->
				
<!-- 블로그형 End -->			
<!-- 				<div class="trv_story_recomm"> -->
<!-- 					<span class="recommand_btn_area"> -->
<!-- 						<button class="btn_like " id="btnLike" type="button"><span>좋아요</span></button> -->
<!-- 						<span class="recommand_num emp_blue">0</span> -->
<!-- 						<button class="btn_sns" onclick="share()" type="button"><span>소셜공유</span></button> -->
<!-- 					</span> -->
<!-- 				</div>		 -->
<!-- 			</div> -->
			
			<!-- 댓글영역 -->
<!-- 			<div class="box_cmt"> -->
				<!-- 내가작성한 댓글보기 -->
				
	            <!-- 내가작성한 댓글보기 -->
                <!-- 댓글쓰기 -->
<!--                 <div class="write_cmt"> -->
<!--                     <form action="#none"> -->
<!--                         <fieldset> -->
<!--                             <legend class="skip">댓글 작성</legend> -->
<!--                             <strong class="tit">내용입력</strong> -->
<!--                             <textarea name="contents" class="tf_write" id="insertContents" placeholder="내용을 입력하세요." rows="10" cols="30">내용을 입력하세요.</textarea> -->
<!--                             <button class="btn_cof" id="btnCommentInsert" type="button">등록하기</button> -->
<!--                         </fieldset> -->
<!--                     </form> -->
<!--                 </div> -->
                <!-- // 댓글쓰기 -->
                <!-- 댓글수정 -->
                <!-- <div class="desc_cmt">
                    <ul class="list_user">
                        <li class="name">서노*님</li>
                        <li class="date">2019.01.01 22:00</li>
                    </ul>
                    <form action="#none">
                        <fieldset>
                            <legend class="skip">댓글 작성</legend>
                            <textarea class="tf_modify" name="" id="" cols="30" rows="10"></textarea>
                            <button type="button" class="btn_cof">수정하기</button>
                            <div class="box_btn">
                                <button type="button" class="btn_wit">수정 취소</button>
                                <button type="button" class="btn_wit">삭제</button>
                            </div>
                        </fieldset>
                    </form>
                </div> -->
                <!-- // 댓글수정 -->
	            <!-- // 댓글영역 -->
<!-- 			</div> -->
			
			<!-- 관련상품 -->
			
            <!-- // 관련상품 -->
<!--             <table class="tbl_pren"> -->
<!--                 <caption> -->
<!--                   		이전 다음 게시물 -->
<!--                 </caption> -->
<!--                 <colgroup> -->
<!--                 <col style="width: 100px;"> -->
<!--                 <col> -->
<!--                 </colgroup> -->
<!--                 <tbody> -->
                
<!--                 <tr> -->
<!--                     <th scope="row">이전 글</th> -->
<!--                     <td><a class="title_link" onclick="goDetail('20000001964');" href="javascript:;">TV 속 그 곳이 알고싶다 - '미운우리새끼' 속 두바이 자유여행 추.천.코.스</a></td> -->
<!--                 </tr> -->
                
                
<!--                 </tbody> -->
<!-- 			</table> -->
<!--             <div class="btn_area"> -->
<!--                 <button class="btn_cof cfrm" onclick="goList();" type="button">목록</button> -->
<!--             </div> -->
		</div>
	</div>
</body>
</html>