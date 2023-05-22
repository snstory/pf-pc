<%
pageNum = 3
subNum01 = 3
subNum02 = 2

'path Array
dim pathArr(3,1)
pathArr(0,0) = "연구실적"
pathArr(0,1) = "../res/res_01.asp"
pathArr(1,0) = "논문 편집위원회"
pathArr(1,1) = "../res/res_03_01.asp"
pathArr(2,0) = "논문투고실"
pathArr(2,1) = ""

'폴더 타이틀 img, alt
ttl_img = "../images/pgs/res/title_01.gif"
ttl_ment = pathArr(0,0)

'페이지 타이틀 img, alt
s_ttl_img = "../images/pgs/res/s_title_0"& subNum01 &"_0"& subNum02 &".gif"
s_ttl_ment = pathArr(2,0)

'페이지 타이틀 하단 부가설명 img, alt
s_ttl_img_2 = "../images/pgs/res/s_title_0"& subNum01 &"_0"& subNum02 &"_ment.gif"
s_ttl_ment_2 = "일반회원들의 논문 투고를 위한 공간입니다."
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

<div class="bs_01">
	<span class="blt"></span><span class="bgt"></span>

	<table class="tb_def">
		<colgroup>
			<col width="12%" />
			<col width="28%" />
			<col width="12%" />
			<col width="48%" />
		</colgroup>
	
		<tbody class="ths_02">
			<tr class="tp">
				<th><img src="../images/txt/name.gif" alt="이름" /></th>
				<td>홍길동</td>
				<th><img src="../images/txt/tel.gif" alt="연락처" /></th>
				<td>010 - 1234 - 1234</td>
			</tr>
			<tr class="bdr">
				<th><img src="../images/txt/aff.gif" alt="소속" /></th>
				<td colspan="3">무소속</td>
			</tr>
			<tr class="bdr">
				<th><img src="../images/txt/diss.gif" alt="논문제목" /></th>
				<td colspan="3">좋은 세상 만들기 논문</td>
			</tr>
			<tr class="bdr view">
				<th class="nobg"><img src="../images/txt/diss_intro.gif" alt="논문소개" /></th>
				<td colspan="3" class="cont">좋은 세상 만들기 논문 좋은 세상 만들기 논문 좋은 세상 만들기 논문 좋은 세상 만들기 논문</td>
			</tr>
			<tr class="files">
				<th><img src="../images/txt/file.gif" alt="첨부파일" /></th>
				<td colspan="3"><a href="#">국가연구개발사업 시행 계획.hwp [120Mb]</a></td>
			</tr>
		</tbody>
	</table>
</div>

<!-- 버튼영역 -->
<div class="cmn_01">
	<a href="res_03_02.asp"><img src="../images/btns/edit.gif" alt="수정" /></a>
	<a href="#"><img src="../images/btns/del.gif" alt="삭제" /></a>
	<!-- <a href="#"><img src="../images/btns/list.gif" alt="목록" /></a> -->
</div>
<!-- //버튼영역 -->

<!-- #include file = "../include/bottom.asp" -->
