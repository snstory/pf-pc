<%
pageNum = 6
subNum01 = 2
subNum02 = ""

dim pathArr(2,1)
pathArr(0,0) = "고객센터"
pathArr(0,1) = "/center/center_01_list.asp"
pathArr(1,0) = "자주하는질문"
pathArr(1,1) = ""

titleImgSrc = "/images/center/s_title_02.gif"
titleImgMent = "자주하는질문"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<!-- 검색영역 -->
<div class="bbsSch bSh_op01">
	<p class="count">총 <strong>20</strong>개의 자료가 등록되었습니다</p>

	<form method="post" action="">
		<fieldset>
			<legend>검색 양식</legend>
			<select name="sel" id="sel" class="fs_01">
				<option>선택하세요</option>
				<option>제목</option>
				<option>내용</option>
			</select>

			<input type="text" name="schword" id="schword" class="fi_df_b fi_03" />
			<input type="image" src="/images/common/btns/search.gif" />
		</fieldset>
	</form>
</div>
<!-- //검색영역 -->

<!-- 질문목록영역 -->
<div class="cnt01">
	<div class="cnt01_1">
		<ul>
			<li class="f"><img src="/images/common/txt/no_2.gif" alt="번호" /></li>
			<li><img src="/images/common/txt/title_2.gif" alt="제목" /></li>
		</ul>
	</div>

	<div class="cnt01_2" id="frequentlyQuestion">
		<dl>
			<dt>
				<p><span>10</span></p>
				<a href="#">쿠폰함에 쿠폰을 넣었는데 캐쉬백으로 적립은 언제쯤 되나요?</a>
			</dt>
			<dd>회원님께서 수거함에 쿠폰을 제출해 주시면 담당부서에서 수거 후 판독 작업을 거쳐 적립되고 있으며, 그 기간은 약 3~4주 가량 소요되고 있으니 이점 참고해 주시기 바랍니다. 그러나 쿠폰을 제출하신 기간이 4주 이상 경과되었으나 포인트가 적립되지 않았을 경우에는 제출하신 쿠폰에 대해 기억하시는 사항 (제출하신 일자와 가맹점명, 모음판에 붙이신 쿠폰점수, 제출하신 쿠폰 모음판 장수, 바코드를 출력하신 카드번호) 을 알려 주시면 확인 후 다시 답변 드리겠습니다.</dd>

			<dt>
				<p><span>9</span></p>
				<a href="#">쿠폰함에 쿠폰을 넣었는데 캐쉬백으로 적립은 언제쯤 되나요?</a>
			</dt>
			<dd>9번 대답영역</dd>

			<dt>
				<p><span>8</span></p>
				<a href="#">쿠폰함에 쿠폰을 넣었는데 캐쉬백으로 적립은 언제쯤 되나요?</a>
			</dt>
			<dd>8번 대답영역</dd>
		</dl>
	</div>
</div>
<!-- //질문목록영역 -->

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
