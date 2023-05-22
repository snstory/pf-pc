<%
pageNum = 3
subNum01 = 2
subNum02 = ""

dim pathArr(2,1)
pathArr(0,0) = "Teacher Hole"
pathArr(0,1) = "/teacher/teacher_01.asp"
pathArr(1,0) = "팬클럽"
pathArr(1,1) = ""

titleImgSrc = "/images/teacher/s_title_02.gif"
titleImgMent = "팬클럽"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<div class="tch01">
	<div class="tch01_area">
		<h1 class="name">Have fun!!! <strong>김민경 프로</strong></h1>
		<p class="intro">안녕하세요 김민경 입니다.<br />여러분들의 골프 실력 향상을 위해 성심 성의껏 같은 내용이라도 쉽고 정확하게 알려드리겠습니다.</p>
	</div>

	<!-- 동영상 플레이어 영역 -->
	<div class="bbs01_player pdoff">
		<!-- 플레이어 -->
		<div class="player"><img src="/images/common/test_img/player.gif" width="400" height="326" alt="" /></div>
		<!-- //플레이어 -->

		<a href="teacher_02_list.asp"><img src="/images/common/btns/goclub_2.gif" alt="팬클럽 바로가기" class="play_more" /></a>
	</div>
	<!-- //동영상 플레이어 영역 -->
</div>

<!-- 동영상 목록 -->
<div class="tch02">
	<div class="tch02_wp">
		<ul class="tch02_ul">
			<li class="start">
				<p class="mov_pic"><a href="#"><img src="../images/common/test_img/fan_01.jpg" width="151" height="101" alt="" /></a></p>
				<div class="mov_title">
					<p><strong>Have fun!!!</strong><br />김민경 프로</p>
				</div>
			</li>
			<li>
				<p class="mov_pic"><a href="#"><img src="../images/common/test_img/fan_02.jpg" width="151" height="101" alt="" /></a></p>
				<div class="mov_title">
					<p><strong>Have fun!!!</strong><br />김민경 프로</p>
				</div>
			</li>
			<li>
				<p class="mov_pic"><a href="#"><img src="../images/common/test_img/fan_02.jpg" width="151" height="101" alt="" /></a></p>
				<div class="mov_title">
					<p><strong>Have fun!!!</strong><br />김민경 프로</p>
				</div>
			</li>
			<li>
				<p class="mov_pic"><a href="#"><img src="../images/common/test_img/fan_02.jpg" width="151" height="101" alt="" /></a></p>
				<div class="mov_title">
					<p><strong>Have fun!!!</strong><br />김민경 프로</p>
				</div>
			</li>
		</ul>
	</div>
</div>
<!-- //동영상 목록 -->

<!-- #include virtual = "/include/bottom.asp" -->
