<%
pageNum = 4
subNum01 = 2
subNum02 = 3

dim pathArr(3,1)
pathArr(0,0) = "Talk Hole"
pathArr(0,1) = "/talk/talk_01_01_list.asp"
pathArr(1,0) = "명함교환하기"
pathArr(1,1) = "/talk/talk_02_01.asp"
pathArr(2,0) = "명함교환자보기"
pathArr(2,1) = ""

titleImgSrc = "/images/talk/s_title_02_03.gif"
titleImgMent = "명함교환자보기"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<h2 class="cnt03"><img src="/images/center/pg_02.gif" alt="명함교환자보기" /></h2>

<div class="tk03">
	<table class="tk03_tb">
		<colgroup>
			<col width="14%" />
			<col width="43%" />
			<col width="9%" />
			<col width="9%" />
			<col width="17%" />
			<col width="8%" />
		</colgroup>

		<thead>
			<tr>
				<th>사 진</th>
				<th>제 목</th>
				<th>지역</th>
				<th>구력</th>
				<th>등록일</th>
				<th>삭제</th>
			</tr>
		</thead>
	
		<tbody>
			<tr>
				<td><img src="/images/common/test_img/talk_01.jpg" width="75" height="61" alt="" /></td>
				<td class="ttle">
					<ul class="tk03_tb_ttle">
						<li class="a">
							<strong>김민경, 여</strong>
							<em>(온그린 / 강사)</em>
						</li>
						<li class="b">
							<span class="bun"><strong>분야</strong> : 강사</span>
							<span class="birth">출생 : 1980, 12, 15</span>
						</li>
						<li class="c">안녕하세요~</li>
					</ul>
				</td>
				<td class="bgw">서울</td>
				<td class="bgw">2년</td>
				<td class="bgw">2010-06-17</td>
				<td class="bgw"><input type="checkbox" name="" id="" /></td>
			</tr>

			<!-- 제목에 링크를 걸어야 하는 경우 -->
			<tr>
				<td><img src="/images/common/test_img/talk_01.jpg" width="75" height="61" alt="" /></td>
				<td class="ttle"><!-- 클래스명 추가 ↓ -->
					<ul class="tk03_tb_ttle alinked" onclick="window.location.href='http://www.naver.com/';">
						<li class="a">
							<strong>김민경, 여</strong>
							<em>(온그린 / 강사)</em>
						</li>
						<li class="b">
							<span class="bun"><strong>분야</strong> : 강사</span>
							<span class="birth">출생 : 1980, 12, 15</span>
						</li>
						<li class="c">안녕하세요~</li>
					</ul>
				</td>
				<td class="bgw">서울</td>
				<td class="bgw">2년</td>
				<td class="bgw">2010-06-17</td>
				<td class="bgw"><input type="checkbox" name="" id="" /></td>
			</tr>

			<!-- 글이 없을 경우 -->
 			<tr class="noDatalist">
				<td colspan="6" class="bgw">글이 없습니다.</td>
			</tr>
		</tbody>
	</table>
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

	<!-- 버튼영역 (페이징 영역용) -->
	<div class="bbsBtns_02">
		<a href="#"><img src="/images/common/btns/del_all.gif" alt="선택목록삭제" /></a>
	</div>
	<!-- //버튼영역 (페이징 영역용) -->
</div>
<!-- //페이징 -->

<!-- #include virtual = "/include/bottom.asp" -->
