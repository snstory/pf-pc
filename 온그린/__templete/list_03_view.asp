<%
pageNum = 1
subNum01 = 1
subNum02 = 1

dim pathArr(1,1)
pathArr(0,0) = "Templete Layout"
pathArr(0,1) = ""

titleImgSrc = "/images/common/test_img/s_title_01.gif"
titleImgMent = "탬플릿 화면모음"
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

<!-- 이미지 영역 (이미지를 따로 출력할 경우) -->
<div class="bbsImgs"><img src="../images/common/test_img/ucc_04.jpg" width="410" height="365" alt="" /></div>
<!-- //이미지 영역 (이미지를 따로 출력할 경우) -->

<!-- 컨텐츠 영역 -->
<div class="bbsView">
	누리로호는 간선 전기 동차를 사용하여 운행하는 무궁화호의 대체등급이다. 기존 광역전철에서 운행되는 급행열차 서비스의 고급화를 목표로 2009년 6월 1일부터 서울 - 신창 구간을 약 1시간 20분 정도의 소요시간으로 운행하고 있다. 운행구간은 수도권 전철 1호선과 동일한 구간을 운행하나 영업부서는 광역전철사업본부가 아닌 여객사업본부에서 담당하므로 운영방식 및 운임체계는 무궁화호에 준하고 2020년 모든 무궁화호를 대체할 예정이다.<br /><br />

	2009년 6월 1일부터 평일 11회, 주말 6회로 시범 운행되며, 7월 1일부터는 평일 22회로 증편하여 운행할 예정이다.[2] 운임은 무궁화호와 동일하다. 경부선과 장항선의 서울-신창 구간에 한해 운행하고 있다.
</div>
<!-- //컨텐츠 영역 -->

<!-- 첨부파일 영역 -->
<div class="bbsFiles">
	<!-- 파일에 링크를 걸경우 -->
	<a href="#">imglist-01.jpg</a>,

	<!-- 파일에 링크를 걸지 않는 경우 -->
	<span>imglist-01.jpg</span>
</div>
<!-- //첨부파일 영역 -->

<!-- 버튼영역 (뷰) -->
<div class="bbsBtns_03">
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
