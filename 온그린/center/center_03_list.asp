<%
pageNum = 6
subNum01 = 3
subNum02 = ""

dim pathArr(2,1)
pathArr(0,0) = "고객센터"
pathArr(0,1) = "/center/center_01_list.asp"
pathArr(1,0) = "제휴광고문의"
pathArr(1,1) = ""

titleImgSrc = "/images/center/s_title_03.gif"
titleImgMent = "제휴광고문의"
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

<div class="bbs02">
	<span class="lt"></span><span class="gt"></span>

	<table class="bbs02_tb">
		<colgroup>
			<col width="9%" />
			<col width="12%" />
			<col width="33%" />
			<col width="11%" />
			<col width="13%" />
			<col width="12%" />
			<col width="10%" />
		</colgroup>

		<thead>
			<tr>
				<th><img src="/images/common/txt/no.gif" alt="글번호" /></th>
				<th><img src="/images/common/txt/type.gif" alt="유형" /></th>
				<th><img src="/images/common/txt/title_2.gif" alt="제목" /></th>
				<th><img src="/images/common/txt/writer_list.gif" alt="등록자" /></th>
				<th><img src="/images/common/txt/state.gif" alt="현황" /></th>
				<th><img src="/images/common/txt/date.gif" alt="등록일" /></th>
				<th><img src="/images/common/txt/ask.gif" alt="조회" /></th>
			</tr>
		</thead>
	
		<tbody>
			<!-- 제안일경우 -->
			<tr>
				<td>1</td>
				<td><img src="/images/common/icons/cen_01.gif" alt="제안" /></td>
					<td class="ttle"><a href="center_03_view.asp">제안드립니다.</a></td>
				<td>관리자</td>
				<td class="bgClr">접수완료</td>
				<td>10. 01. 29</td>
				<td>922</td>
			</tr>
			<!-- 상담일경우 -->
			<tr>
				<td>2</td>
				<td><img src="/images/common/icons/cen_02.gif" alt="상담" /></td>
				<td class="ttle"><a href="center_03_view.asp">상담드립니다.</a></td>
				<td>관리자</td>
				<td class="bgClr">접수완료</td>
				<td>10. 01. 29</td>
				<td>922</td>
			</tr>

			<!-- 글이 없을 경우 -->
			<tr class="noDatalist">
				<td colspan="7">글이 없습니다.</td>
			</tr>

		</tbody>
	</table>
</div>

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

	<!-- 버튼영역 (페이징 영역용) -->
	<div class="bbsBtns_02">
		<a href="center_03_write.asp"><img src="/images/common/btns/write.gif" alt="글쓰기" /></a>
	</div>
	<!-- //버튼영역 (페이징 영역용) -->
</div>
<!-- //페이징 -->

<!-- #include virtual = "/include/bottom.asp" -->
