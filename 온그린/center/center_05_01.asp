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

<div class="cnt04">
	<ul>
		<li>
			<h3><img src="/images/common/test_img/event_pic_01.gif" width="240" height="100" alt="" /></h3>
			<dl>
				<dt>제주 10회 제주 사은행사</dt>
				<dd>이벤트 기간 : 2010-06-14 ~ 2010-10-21</dd>
			</dl>
			<a href="center_05_01_view.asp"><img src="/images/common/btns/more_read.gif" alt="자세히보기" /></a>
		</li>
		<li>
			<h3><img src="/images/common/test_img/event_pic_01.gif" width="240" height="100" alt="" /></h3>
			<dl>
				<dt>제주 10회 제주 사은행사</dt>
				<dd>이벤트 기간 : 2010-06-14 ~ 2010-10-21</dd>
			</dl>
			<a href="center_05_01_view.asp"><img src="/images/common/btns/more_read.gif" alt="자세히보기" /></a>
		</li>
	</ul>
</div>

<!-- 페이징 -->
<div class="bbsPaz bbsPaz_pd04">
	<a href="#"><img src="/images/common/btns/prev_LL.gif" alt="이전 10개보기" /></a>
	<a href="#"><img src="/images/common/btns/prev_L.gif" alt="이전보기" /></a>

	<span>
		<strong>1</strong>
		<a href="#">2</a>
		<a href="#">3</a>
		<a href="#">4</a>
		<a href="#">5</a>
		<a href="#">6</a>
		<a href="#">7</a>
		<a href="#">8</a>
		<a href="#">9</a>
		<a href="#">10</a>
	</span>

	<a href="#"><img src="/images/common/btns/next_L.gif" alt="다음보기" /></a>
	<a href="#"><img src="/images/common/btns/next_LL.gif" alt="다음 10개보기" /></a>
</div>
<!-- //페이징 -->

<!-- #include virtual = "/include/bottom.asp" -->
