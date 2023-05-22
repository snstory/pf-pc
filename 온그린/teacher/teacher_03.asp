<%
pageNum = 3
subNum01 = 3
subNum02 = ""

dim pathArr(2,1)
pathArr(0,0) = "Teacher Hole"
pathArr(0,1) = "/teacher/teacher_01.asp"
pathArr(1,0) = "아마추어 고수방"
pathArr(1,1) = ""

titleImgSrc = "/images/teacher/s_title_03.gif"
titleImgMent = "아마추어 고수방"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<div class="bbs01">
	<div class="bbs01_wrap">
		<ul>
			<li class="bbs01_sect">
				<div class="bbs01_wp">
					<h2><strong>김민경 프로의</strong> 프로골퍼 따라잡기</h2>

					<div class="pinfo">
						<p class="pic"><img src="/images/common/test_img/hole18_01.jpg" alt="김민경 프로" /></p>
						<p class="explain">김민경 프로의 골프코스 공략 경험을 집대성하여 연습장에서는 얻을 수 없는 실전 노하우를 바탕으로 아마추어들이 쉽게 접할 수 있는 체계적인 골프레슨</p>
						<p class="preview"><a href="teacher_03_view.asp"><img src="/images/common/btns/preview.gif" alt="미리보기" /></a></p>
					</div>
				</div>
			</li>

			<li class="bbs01_sect">
				<div class="bbs01_wp">
					<h2><strong>김민경 프로의</strong> 프로골퍼 따라잡기</h2>

					<div class="pinfo">
						<p class="pic"><img src="/images/common/test_img/hole18_01.jpg" alt="김민경 프로" /></p>
						<p class="explain">김민경 프로의 골프코스 공략 경험을 집대성하여 연습장에서는 얻을 수 없는 실전 노하우를 바탕으로 아마추어들이 쉽게 접할 수 있는 체계적인 골프레슨</p>
						<p class="preview"><a href="teacher_03_view.asp"><img src="/images/common/btns/preview.gif" alt="미리보기" /></a></p>
					</div>
				</div>
			</li>
		</ul>
	</div>
</div>

<!-- 페이징 -->
<div class="bbsPaz bbsPaz_pd01">
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
