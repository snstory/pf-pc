<%
pageNum = 4
subNum01 = 2
subNum02 = 4

dim pathArr(3,1)
pathArr(0,0) = "Talk Hole"
pathArr(0,1) = "/talk/talk_01_01_list.asp"
pathArr(1,0) = "명함교환하기"
pathArr(1,1) = "/talk/talk_02_01.asp"
pathArr(2,0) = "나의명함보기"
pathArr(2,1) = ""

titleImgSrc = "/images/talk/s_title_02_04.gif"
titleImgMent = "나의명함보기"
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
	<a href="talk_02_01.asp">전체등록명함보기</a> |
	<a href="talk_02_02.asp">명함등록 및 수정</a> |
	<a href="talk_02_03.asp">명함교환자 목록</a> |
	<a href="talk_02_04.asp" class="on">나의 명함보기</a>
</div>
<!-- //카테고리 목록 영역 -->

<!-- #include virtual = "/include/bottom.asp" -->
