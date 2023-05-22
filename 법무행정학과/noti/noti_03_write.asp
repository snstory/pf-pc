<%
pageNo = 4
sub_01 = 3
sub_02 = 1
%>

<!-- #include file="../inc/top_01.asp" -->
<!-- #include file="../inc/top_02.asp" -->

<form method="post" action="#">
<fieldset>
	<legend>글쓰기 양식</legend>

	<div class="bk_4">
		<table class="tb_2">
			<colgroup>
				<col width="20%" />
				<col width="*" />
				<col width="18%" />
				<col width="16%" />
			</colgroup>

			<tbody class="wrt_mode">
				<tr>
					<th><img src="../images/txt/title_2.gif" alt="제목" /></th>
					<td><input type="text" name="" id="" class="fms_2" /></td>

					<th><img src="../images/txt/date_2.gif" alt="등록일" /></th>
					<td><b>2012.09.20</b></td>
				</tr>

				<tr>
					<th><img src="../images/txt/file.gif" alt="첨부파일" /></th>
					<td colspan="3"><input type="file" name="" id="" size="70" /></td>
				</tr>

				<tr class="btm">
					<th><img src="../images/txt/content.gif" alt="내용" /></th>
					<td colspan="3" class="edt"><img src="../images/temp/editor.gif" width="565" height="317" alt="에디터영역" /></td>
				</tr>
			</tbody>
		</table>
	</div>

	<p class="bk_8">
		<input type="image" src="../images/btns/check.gif" alt="확인" />
		<a href="#"><img src="../images/btns/cancle.gif" alt="취소" /></a>
	</p>
</fieldset>
</form>

<!-- #include file="../inc/bottom_01.asp" -->
<!-- #include file="../inc/bottom_02.asp" -->
