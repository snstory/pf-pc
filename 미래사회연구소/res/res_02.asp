<%
pageNum = 3
subNum01 = 2
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "연구실적"
pathArr(0,1) = "../res/res_01.asp"
pathArr(1,0) = "학술활동"
pathArr(1,1) = ""

'폴더 타이틀 img, alt
ttl_img = "../images/pgs/res/title_01.gif"
ttl_ment = pathArr(0,0)

'페이지 타이틀 img, alt
s_ttl_img = "../images/pgs/res/s_title_0"& subNum01 &".gif"
s_ttl_ment = pathArr(1,0)

'페이지 타이틀 하단 부가설명 img, alt
s_ttl_img_2 = "../images/pgs/res/s_title_0"& subNum01 &"_ment.gif"
s_ttl_ment_2 = "미래사회연구소에서 진행한 학술활동 자료로 미래사회연구소 연구원을 위한 공간입니다."
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

<!-- bs_01 (게시판 목록) -->
<div class="bs_01">
	<span class="blt"></span><span class="bgt"></span>

	<table class="tb_def">
		<colgroup>
			<col width="12%" />
			<col width="68%" />
			<col width="10%" />
			<col width="10%" />
		</colgroup>
	
		<thead>
			<tr class="ths_01">
				<th><img src="../images/txt/cgy.gif" alt="분류" /></th>
				<th><img src="../images/txt/ttl.gif" alt="제목" /></th>
				<th><img src="../images/txt/date.gif" alt="작성일" /></th>
				<th><img src="../images/txt/count.gif" alt="조회수" /></th>
			</tr>
		</thead>
	
		<tbody class="tds_01">
			<!-- 주요자료 일 경우 -->
			<tr class="focus">
				<td><strong>[주요자료]</strong></td>
				<td class="lt"><a href="res_02_view.asp">[회의록]2010.06.20 전체 연구원 회의록</a></td>
				<td>2010.06.20</td>
				<td>111</td>
			</tr>
			<!-- //주요자료 일 경우 -->

			<!-- 일반 목록 -->
			<tr>
				<td>학술지</td>
				<td class="lt"><a href="res_02_view.asp">[회의록]2010.06.20 전체 연구원 회의록</a></td>
				<td>2010.06.20</td>
				<td>111</td>
			</tr>
			<!-- //일반 목록 -->

			<!-- 자료가 없을 경우 -->
			<tr class="nodata">
				<td colspan="4">자료가 없습니다</td>
			</tr>
			<!-- //자료가 없을 경우 -->
		</tbody>
	</table>
</div>
<!-- //bs_01 (게시판 목록) -->

<!-- pazing -->
<div class="pazing">
	<div>
		<a href="#"><img src="../images/btns/paz_ltlt.gif" alt="이전 10페이지" /></a>
		<a href="#"><img src="../images/btns/paz_lt.gif" alt="이전페이지" /></a>

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

		<a href="#"><img src="../images/btns/paz_gt.gif" alt="다음페이지" /></a>
		<a href="#"><img src="../images/btns/paz_gtgt.gif" alt="다음 10페이지" /></a>
	</div>
</div>
<!-- //pazing -->

<!-- search ( 검색영역 ) -->
<div class="search">
	<span class="blt"></span><span class="bgt"></span>

	<form method="post" action="#" accept-charset="euc-kr" id="searchForm" name="searchForm">
		<fieldset>
			<legend>검색 양식</legend>
			
			<select name="type" id="type" class="se_01">
				<option value="a">제목</option>
				<option value="b">내용</option>
			</select>

			<input type="text" name="word" id="word" class="inp_def inp_01" />

			<input type="image" src="../images/btns/sch.gif" class="inp_02" />
		</fieldset>
	</form>
</div>
<!-- //search -->

<!-- #include file = "../include/bottom.asp" -->
