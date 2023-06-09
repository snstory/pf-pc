<%
pageNum = 3
subNum01 = 4
subNum02 = ""

dim pathArr(2,1)
pathArr(0,0) = "Teacher Hole"
pathArr(0,1) = "/teacher/teacher_01.asp"
pathArr(1,0) = "자유게시판"
pathArr(1,1) = ""

titleImgSrc = "/images/teacher/s_title_04.gif"
titleImgMent = "자유게시판"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<div class="bbs02">
	<span class="lt"></span><span class="gt"></span>

	<table class="bbs02_tb bbs02_tb_b">
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
			<tr class="readTr">
				<td>1</td>
				<td class="ttle"><strong>안녕하세요. 김민경 입니다.</strong></td>
				<td>관리자</td>
				<td>10. 01. 29</td>
				<td>922</td>
			</tr>
		</tbody>
	</table>
</div>

<!-- 컨텐츠 영역 -->
<div class="bbsView">
	누리로호는 간선 전기 동차를 사용하여 운행하는 무궁화호의 대체등급이다. 기존 광역전철에서 운행되는 급행열차 서비스의 고급화를 목표로 2009년 6월 1일부터 서울 - 신창 구간을 약 1시간 20분 정도의 소요시간으로 운행하고 있다. 운행구간은 수도권 전철 1호선과 동일한 구간을 운행하나 영업부서는 광역전철사업본부가 아닌 여객사업본부에서 담당하므로 운영방식 및 운임체계는 무궁화호에 준하고 2020년 모든 무궁화호를 대체할 예정이다.<br /><br />

	2009년 6월 1일부터 평일 11회, 주말 6회로 시범 운행되며, 7월 1일부터는 평일 22회로 증편하여 운행할 예정이다.[2] 운임은 무궁화호와 동일하다. 경부선과 장항선의 서울-신창 구간에 한해 운행하고 있다.
</div>
<!-- //컨텐츠 영역 -->

<!-- 버튼영역 (뷰) -->
<div class="bbsBtns_03">
	<a href="teacher_04_write.asp"><img src="/images/common/btns/edit.gif" alt="수정" /></a>
	<a href="#"><img src="/images/common/btns/del.gif" alt="삭제" /></a>
	<a href="#" onclick="history.back(); return false;"><img src="/images/common/btns/list.gif" alt="목록" /></a>
</div>
<!-- //버튼영역 (뷰) -->

<!-- 이전글, 다음글 영역 -->
<div class="bbsPNlist">
	<dl class="bbsPNlist_dl">
		<!-- 답글인 경우 -->
		<dd class="prev"><a href="#" class="re"><strong>[답글]</strong> 안녕하세요. 강민경입니다.</a></dd>
		<dd class="next"><a href="#">안녕하세요. 강민경입니다.</a></dd>
	</dl>
</div>
<!-- //이전글, 다음글 영역 -->

<!-- #include virtual = "/include/bottom.asp" -->
