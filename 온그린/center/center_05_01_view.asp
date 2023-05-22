<%
pageNum = 6
subNum01 = 5
subNum02 = 1

dim pathArr(3,1)
pathArr(0,0) = "고객센터"
pathArr(0,1) = "/center/center_01_list.asp"
pathArr(1,0) = "이벤트"
pathArr(1,1) = "/center/center_05_01.asp"
pathArr(2,0) = "진행중인이벤트"
pathArr(2,1) = ""

titleImgSrc = "/images/center/s_title_05_01.gif"
titleImgMent = "진행중인이벤트"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<h2 class="cnt02"><img src="/images/center/pg_03.gif" alt="진행중인 이벤트" /></h2>

<div class="cnt05">
	<h2>제주 10회 제주 사은행사</h2>
	<span>이벤트 기간 : 2010-06-14 ~ 2010-10-21</span>
</div>

<!-- 이벤트 이미지 영역 -->
<div class="cnt06"><img src="/images/common/test_img/event_pic_02.jpg" width="608" height="662" alt="" /></div>
<!-- //이벤트 이미지 영역 -->

<div class="cnt07">
	<a href="#" onclick="history.back();return false;"><img src="/images/common/btns/list.gif" alt="목록" /></a>
</div>

<!-- #include virtual = "/include/bottom.asp" -->
