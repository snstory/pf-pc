<%
pageNum = 4
subNum01 = 2
subNum02 = 1

dim pathArr(3,1)
pathArr(0,0) = "Talk Hole"
pathArr(0,1) = "/talk/talk_01_01_list.asp"
pathArr(1,0) = "명함교환하기"
pathArr(1,1) = "/talk/talk_02_01.asp"
pathArr(2,0) = "전체명함보기"
pathArr(2,1) = ""

titleImgSrc = "/images/talk/s_title_02_01.gif"
titleImgMent = "전체명함보기"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<!-- 명함 검색하기 영역 -->
<form method="post" action="">
	<fieldset>
		<legend>명함 검색하기 양식</legend>

		<div class="bbsCardSch">
			<dl class="bbsCardSch_list">
				<dd>
					<div>
						<label for="sex" class="ttle">성별</label>
						<select name="sex" id="sex" class="fs_01">
							<option value="">전체</option>
							<option value="">남</option>
							<option value="">여</option>
						</select>
					</div>
				</dd>
				<dd>
					<div>
						<label for="name" class="ttle">이름</label>
						<input type="text" name="name" id="name" class="fi_04 fi_df_b" />
					</div>
				</dd>
				<dd>
					<div>
						<label for="branch" class="ttle">분야</label>
						<select name="branch" id="branch" class="fs_01">
							<option value="">선택하세요</option>
						</select>
					</div>
				</dd>
				<dd>
					<div>
						<label for="attach" class="ttle">소속</label>
						<input type="text" name="attach" id="attach" class="fi_05 fi_df_b" />
					</div>
				</dd>
				<dd>
					<div>
						<label for="zone" class="ttle">지역</label>
						<select name="zone" id="zone" class="fs_01">
							<option value="">전체</option>
						</select>
					</div>
				</dd>
				<dd>
					<div>
						<label for="age_01" class="ttle">나이</label>
						<select name="age_01" id="age_01" class="fs_02">
							<option value="">20</option>
						</select>
						~
						<select name="age_02" id="age_02" class="fs_02">
							<option value="">80</option>
						</select>
					</div>
				</dd>
				<dd>
					<div>
						<label for="career" class="ttle">구력</label>
						<select name="career" id="career" class="fs_02">
							<option value="">20</option>
						</select>
					</div>
				</dd>
			</dl>

			<!-- 검색하기 버튼 -->
			<a href="#" class="acBtn"><em class="lt"></em><em class="gt"></em><em class="wd">명함 검색하기</em></a>
			<!-- //검색하기 버튼 -->
		</div>
	</fieldset>
</form>
<!-- //명함 검색하기 영역 -->

<!-- 카테고리 목록 영역 -->
<div class="tk02">
	<a href="talk_02_01.asp" class="on">전체등록명함보기</a> |
	<a href="talk_02_02.asp">명함등록 및 수정</a> |
	<a href="talk_02_03.asp">명함교환자 목록</a> |
	<a href="talk_02_04.asp">나의 명함보기</a>
</div>
<!-- //카테고리 목록 영역 -->

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
				<th>조회</th>
			</tr>
		</thead>
	
		<tbody>
			<tr>
				<td><img src="../images/common/test_img/talk_01.jpg" width="75" height="61" alt="" /></td>
				<td class="ttle">
					<ul class="tk03_tb_ttle">
						<li class="a">
							<strong>김민경, 여</strong>
							<em>(온그린 / 강사)</em>
						</li>
						<li class="b">
							<span class="bun"><strong>분야</strong> : 강사</span>
							<span class="birth">출생 : 1980</span>
						</li>
						<li class="c">안녕하세요~</li>
					</ul>
				</td>
				<td class="bgw">서울</td>
				<td class="bgw">2년</td>
				<td class="bgw">2010-06-17</td>
				<td class="bgw">265</td>
			</tr>

			<!-- 제목에 링크를 걸어야 하는 경우 -->
			<tr>
				<td><img src="../images/common/test_img/talk_01.jpg" width="75" height="61" alt="" /></td>
				<td class="ttle"><!-- 클래스명 추가 ↓ -->
					<ul class="tk03_tb_ttle alinked" onclick="window.location.href='http://www.naver.com/';">
						<li class="a">
							<strong>김민경, 여</strong>
							<em>(온그린 / 강사)</em>
						</li>
						<li class="b">
							<span class="bun"><strong>분야</strong> : 강사</span>
							<span class="birth">출생 : 1980</span>
						</li>
						<li class="c">안녕하세요~</li>
					</ul>
				</td>
				<td class="bgw">서울</td>
				<td class="bgw">2년</td>
				<td class="bgw">2010-06-17</td>
				<td class="bgw">265</td>
			</tr>

			<!-- 글이 없을 경우 -->
 			<tr class="noDatalist">
				<td colspan="6" class="bgw">글이 없습니다.</td>
			</tr>
		</tbody>
	</table>
</div>

<!-- 페이징 -->
<div class="bbsPaz bbsPaz_pd02">
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
