<%
pageNo = 6
sub_01 = 3
sub_02 = 1
%>

<!-- #include file="../inc/top_01.asp" -->
<!-- #include file="../inc/top_02.asp" -->

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

		<tr>
			<th><img src="../images/txt/count_2.gif" alt="조회" /></th>
			<td><b>1234</b></td>

			<th><img src="../images/txt/date_2.gif" alt="등록일" /></th>
			<td><b>2012.09.20</b></td>
		</tr>
	
		<tr class="btm">
			<th><b class="inm_2">첨부</b></th>
			<td colspan="3">
				<ul class="lsts_3">
					<li>
						<a href="#">
							<span>
								<img src="../images/icons/ppt.gif" alt="" />
								<img src="../images/icons/pdf.gif" alt="" />
								<img src="../images/icons/hnc.gif" alt="" />
								<img src="../images/icons/docx.gif" alt="" />
								<img src="../images/icons/xls.gif" alt="" />
							</span>

							파일명 1.txt
						</a>
					</li>

					<li>
						<a href="#">
							<span>
								<img src="../images/icons/ppt.gif" alt="" />
								<img src="../images/icons/pdf.gif" alt="" />
								<img src="../images/icons/hnc.gif" alt="" />
								<img src="../images/icons/docx.gif" alt="" />
								<img src="../images/icons/xls.gif" alt="" />
							</span>

							파일명 2.txt
						</a>
					</li>

				</ul>
			</td>
		</tr>
	</table>

</div>

<div class="bk_5">

	<img src="../images/temp/tp_02.jpg" width="700" height="383" alt="" />

	<p style="padding-top:20px;">내용영역 입니다.</p>

</div>

<!-- 이전글, 다음글 -->
<ul class="lsts_1">
	<li>
		<h1><b>이전글</b></h1>
		<p>
			<a href="#">제목이 들어갑니다.</a>
			<em>2012.09.20</em>
		</p>
	</li>

	<li class="b">
		<h1><b>다음글</b></h1>
		<p>
			<a href="#">제목이 들어갑니다.</a>
			<em>2012.09.20</em>
		</p>
	</li>

</ul>
<!-- //이전글, 다음글 -->

<p class="bk_7">
	<a href="abm_03_write.asp"><img src="../images/btns/edit.gif" alt="수정" /></a>
	<a href="abm_03.asp"><img src="../images/btns/list.gif" alt="목록" /></a>
	<a href="#"><img src="../images/btns/del.gif" alt="삭제" /></a>
</p>

<!-- #include file="../inc/bottom_01.asp" -->
<!-- #include file="../inc/bottom_02.asp" -->
