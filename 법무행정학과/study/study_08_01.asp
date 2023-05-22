<%
pageNo = 5
sub_01 = 8
sub_02 = 1
%>

<!-- #include file="../inc/top_01.asp" -->
<!-- #include file="../inc/top_02.asp" -->

<!-- 카테고리 메뉴 -->
<ul class="lsts_6">
	<li><a href="study_08_01.asp"><img src="../images/btns/tab_03_01_on.gif" alt="About 엔큐" /></a></li>
	<li><a href="study_08_02.asp"><img src="../images/btns/tab_03_02.gif" alt="엔큐공지" /></a></li>
	<li><a href="study_08_03.asp"><img src="../images/btns/tab_03_03.gif" alt="학과장학금위탁" /></a></li>
</ul>
<!-- //카테고리 메뉴 -->

<!-- 검색양식 -->
<form method="post" action="#">
<fieldset>
	<legend>검색양식</legend>

	<p class="bk_1">
		<select name="" id="">
			<option value="">선택하세요</option>
			<option value="">제목</option>
			<option value="">내용</option>
		</select>
		<input type="text" name="" id="" class="fms_1" />
		<input type="image" src="../images/btns/sch_01.gif" alt="검색" />
	</p>
</fieldset>
</form>
<!-- //검색양식 -->

<!-- 목록 -->
<div class="bk_2">
	<u class="lt"></u><u class="gt"></u>

	<table class="tb_1">
		<colgroup>
			<col width="12%" />
			<col width="*" />
			<col width="16%" />
			<col width="13%" />
		</colgroup>
	
		<thead>
			<tr>
				<th><img src="../images/txt/no.gif" alt="번호" /></th>
				<th><img src="../images/txt/title.gif" alt="제목" /></th>
				<th><img src="../images/txt/date.gif" alt="등록일" /></th>
				<th><img src="../images/txt/count.gif" alt="조회" /></th>
			</tr>
		</thead>

		<tbody>
			<tr>
				<td>1</td>
				<td class="lt">
					<a href="study_08_01_view.asp">제목 영역입니다.</a>

					<img src="../images/icons/new.gif" alt="new" />

					<span class="inm_1">
						<img src="../images/icons/ppt.gif" alt="" />
						<img src="../images/icons/pdf.gif" alt="" />
						<img src="../images/icons/hnc.gif" alt="" />
						<img src="../images/icons/docx.gif" alt="" />
						<img src="../images/icons/xls.gif" alt="" />
					</span>
				</td>
				<td>2012.05.27</td>
				<td>30</td>
			</tr>

			<tr class="no_data">
				<td>자료가 없습니다.</td>
			</tr>
		</tbody>
	</table>
</div>
<!-- //목록 -->

<!-- 페이징 -->
<p class="bk_3_pazing">
	<a href="#"><img src="../images/btns/paz_lt.gif" alt="prev" /></a>
	<span>
		<b>1</b>
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
	<a href="#"><img src="../images/btns/paz_gt.gif" alt="next" /></a>

	<a href="study_08_01_write.asp" class="wrt"><img src="../images/btns/write.gif" alt="글쓰기" /></a>
</p>
<!-- //페이징 -->

<!-- #include file="../inc/bottom_01.asp" -->
<!-- #include file="../inc/bottom_02.asp" -->
