<%
pageNum = 1
subNum01 = 1
subNum02 = 1

dim pathArr(1,1)
pathArr(0,0) = "Templete Layout"
pathArr(0,1) = ""

titleImgSrc = "/images/common/test_img/s_title_01.gif"
titleImgMent = "탬플릿 화면모음"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<!-- 소개영역 -->
<div class="bbs01_v">
	<div class="bbs01_v_1">
		<h1 class="name">김민경 프로</h1>
		<div class="pic">
			<p><img src="/images/common/test_img/pic_03.jpg" width="162" height="149" alt="" /></p>
		</div>

		<div class="msg">
			<h2>프로 골퍼 메시지</h2>
			<p>안녕하세요 김민경 입니다.  여러분들의 골프 실력 향상을 위해 성심 성의껏 같은 내용이라도 쉽고 정확하게 알려드리겠습니다.</p>
		</div>

		<div class="profile">
			<h2>약력</h2>
			<p class="def">현 잭니클라우스 아카데미 프로</p>
			<p class="def">순천향대학교 사회체육과 졸업</p>

			<ul class="list">
				<li><strong>2001</strong> 프로테스트 3위</li>
				<li><strong>2002</strong> Hours mall 인비테이셔널 21위</li>
				<li><strong>2003</strong> 드림투어 4차전 7위 / 드림투어 5차전 18위</li>
				<li><strong>2005</strong> 레이크사이드 여자오픈 35위 /  파브인비테이셔널 25위</li>
				<li><strong>2008</strong> SBS Golf ‘GN RESOUND(지앤리사운드) 골프챔피언십 MC<br />J골프 &lt;김민경 김승연의 워너비 S&gt; 진행</li>
			</ul>
		</div>
	</div>
</div>
<!-- //소개영역 -->

<!-- 팬클럽 홍보 -->
<div class="bbs01_v_2">
	<div class="blind">
		<h2>프로골퍼와 친해지세요.</h2>
		<p>프로골퍼가 직접 답 글 도 달고, 궁금증도 해결해 드린답니다. 마음과 시간이 맞는 다면, 골프 한 겜도 할 수 있는 행운도 찾아 올 수 있겠죠?</p>
	</div>
	<a href="#" class="go_club"><img src="/images/common/btns/goclub.gif" alt="팬클럽 바로가기" /></a>
</div>
<!-- //팬클럽 홍보 -->

<!-- 동영상 플레이어 영역 -->
<div class="bbs01_player">
	<!-- 플레이어 -->
	<div class="player"><img src="/images/common/test_img/player.gif" width="400" height="326" alt="" /></div>
	<!-- //플레이어 -->

	<a href="#"><img src="/images/common/btns/more_play.gif" alt="더보기" class="play_more" /></a>
</div>
<!-- //동영상 플레이어 영역 -->

<!-- 강좌 목록 -->
<div class="bbs03 bbs03_op01">
	<table class="bbs03_tb">
		<colgroup>
			<col width="15%" />
			<col width="60%" />
			<col width="25%" />
		</colgroup>
	
		<thead>
			<tr>
				<th>No</th>
				<th>강좌명</th>
				<th>시간</th>
			</tr>
		</thead>
	
		<tbody>
			<tr>
				<td>1</td>
				<td class="ttle"><a href="#">준비자세</a></td>
				<td class="bgw">24분 13초</td>
			</tr>

			<!-- 새글인 경우 -->
			<tr>
				<td>1</td>
				<td class="ttle">
					<a href="#">방향성과 스윙궤도 234</a>
					<img src="/images/common/icons/new_02.gif" alt="" />
				</td>
				<td class="bgw">24분 13초</td>
			</tr>

			<!-- 글이 없을 경우 -->
			<tr class="noDatalist">
				<td colspan="3" class="bgw">글이 없습니다.</td>
			</tr>
		</tbody>
	</table>
</div>
<!-- //강좌 목록 -->

<!-- 페이징 -->
<div class="bbsPaz bbsPaz_pd03">
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
