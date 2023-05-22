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

<!-- 검색영역 -->
<div class="bbsSch bSh_op01">
	<p class="count">
		<select name="t_show" id="t_show" class="fs_03">
			<option>전체보기</option>
		</select>
		총 <strong>20</strong>개의 자료가 등록되었습니다
	</p>

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
			<col width="12%" />
			<col width="50%" />
			<col width="13%" />
			<col width="13%" />
			<col width="12%" />
		</colgroup>
	
		<thead>
			<tr>
				<th><img src="/images/common/txt/no.gif" alt="글번호" /></th>
				<th><img src="/images/common/txt/title_list.gif" alt="제목" /></th>
				<th><img src="/images/common/txt/writer_list.gif" alt="등록자" /></th>
				<th><img src="/images/common/txt/date.gif" alt="등록일" /></th>
				<th><img src="/images/common/txt/ask.gif" alt="조회" /></th>
			</tr>
		</thead>
	
		<tbody>
			<!-- 긴급공지일 경우 -->
			<tr>
				<td>1</td>
				<td class="ttle">
					<span class="t_urgent"><em class="lt"></em><em class="gt"></em><strong>긴급공지</strong></span>
					<a href="teacher_02_view.asp">안녕하세요. 김민경 입니다.</a>
					<img src="/images/common/icons/new_02.gif" alt="" class="new" /><!-- 새글일경우 -->
				</td>
				<td>관리자</td>
				<td>10. 01. 29</td>
				<td>922</td>
			</tr>

			<!-- 답글일 경우 -->
			<tr class="reply">
				<td>1</td>
				<td class="ttle">
					<a href="teacher_02_view.asp">김민경씨 안녕하세요.^^</a>
					<img src="/images/common/icons/new_02.gif" alt="" class="new" /><!-- 새글일경우 -->
				</td>
				<td>관리자</td>
				<td>10. 01. 29</td>
				<td>922</td>
			</tr>

			<!-- 기본 -->
			<tr>
				<td>2</td>
				<td class="ttle"><a href="teacher_02_view.asp">안녕하세요. 김민경 입니다.</a></td>
				<td>관리자</td>
				<td>10. 01. 29</td>
				<td>922</td>
			</tr>

			<!-- 글이 없을 경우 -->
			<tr class="noDatalist">
				<td colspan="5">글이 없습니다.</td>
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

	<!-- 버튼영역 (페이징 영역용) -->
	<div class="bbsBtns_02">
		<a href="teacher_02_write.asp"><img src="/images/common/btns/write.gif" alt="글쓰기" /></a>
	</div>
	<!-- //버튼영역 (페이징 영역용) -->
</div>
<!-- //페이징 -->

<!-- #include virtual = "/include/bottom.asp" -->
