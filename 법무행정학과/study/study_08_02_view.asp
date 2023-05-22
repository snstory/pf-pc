<%
pageNo = 5
sub_01 = 8
sub_02 = 2
%>

<!-- #include file="../inc/top_01.asp" -->
<!-- #include file="../inc/top_02.asp" -->

<!-- 카테고리 메뉴 -->
<ul class="lsts_6">
	<li><a href="study_08_01.asp"><img src="../images/btns/tab_03_01.gif" alt="About 엔큐" /></a></li>
	<li><a href="study_08_02.asp"><img src="../images/btns/tab_03_02_on.gif" alt="엔큐공지" /></a></li>
	<li><a href="study_08_03.asp"><img src="../images/btns/tab_03_03.gif" alt="학과장학금위탁" /></a></li>
</ul>
<!-- //카테고리 메뉴 -->

<div class="bk_4">

	<table class="tb_2">
		<colgroup>
			<col width="18%" />
			<col width="*" />
			<col width="18%" />
			<col width="18%" />
		</colgroup>
	
		<tr>
			<th><img src="../images/txt/title_2.gif" alt="제목" /></th>
			<td colspan="3"><b>제목 영역입니다.</b></td>
		</tr>

		<tr class="btm">
			<th><img src="../images/txt/count_2.gif" alt="조회" /></th>
			<td><b>1234</b></td>

			<th><img src="../images/txt/date_2.gif" alt="등록일" /></th>
			<td><b>2012.09.20</b></td>
		</tr>
	</table>

</div>

<div class="bk_5">
	내용영역 입니다.
</div>

<p class="bk_7 a_line">
	<a href="study_08_02.asp"><img src="../images/btns/list.gif" alt="목록" /></a>
	<a href="study_08_02_write.asp"><img src="../images/btns/reply.gif" alt="답글" /></a>
	<a href="study_08_02_write.asp"><img src="../images/btns/edit.gif" alt="수정" /></a>
	<a href="#"><img src="../images/btns/del.gif" alt="삭제" /></a>
</p>

<!-- 관련 게시물 목록 -->
<div class="bk_14">
	<h3 class="ttl"><span>관련 게시물</span></h3>
	<ul class="list">
		<li>
			<a href="#">관련 게시글 제목영역 입니다.</a>

			<span>
				<u>김석민</u>
				<em>2012.09.12</em>
			</span>
		</li>

		<li>
			<a href="#"><img src="../images/icons/arrow_05.gif" alt="re" class="re_icon" /> 관련 게시글 제목영역 입니다.</a>

			<span>
				<u>김석민</u>
				<em>2012.09.12</em>
			</span>
		</li>

		<li class="no_data">관련글이 없습니다.</li>
	</ul>
</div>
<!-- //관련 게시물 목록 -->

<!-- #include file="../inc/bottom_01.asp" -->
<!-- #include file="../inc/bottom_02.asp" -->
