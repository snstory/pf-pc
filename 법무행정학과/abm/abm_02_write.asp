<%
pageNo = 6
sub_01 = 2
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
				<col width="18%" />
				<col width="*" />
			</colgroup>

			<tr>
				<th><img src="../images/txt/name.gif" alt="이름 *" /></th>
				<td><input type="text" name="" id="" class="fms_2" /></td>
			</tr>
			<tr>
				<th><img src="../images/txt/pic.gif" alt="사진" /></th>
				<td><input type="file" name="" id="" size="70" class="fms_2" /></td>
			</tr>
			<tr>
				<th><img src="../images/txt/job.gif" alt="현직업(직종)" /></th>
				<td><input type="text" name="" id="" class="fms_3" /></td>
			</tr>
			<tr>
				<th><img src="../images/txt/hobby.gif" alt="취미" /></th>
				<td><input type="text" name="" id="" class="fms_3" /></td>
			</tr>
			<tr>
				<th><img src="../images/txt/addr.gif" alt="주소" /></th>
				<td><input type="text" name="" id="" class="fms_3" /></td>
			</tr>
			<tr>
				<th><img src="../images/txt/tel.gif" alt="연락처" /></th>
				<td><input type="text" name="" id="" class="fms_3" /></td>
			</tr>
			<tr>
				<th><img src="../images/txt/period.gif" alt="입학동기" /></th>
				<td><input type="text" name="" id="" class="fms_3" /></td>
			</tr>
			<tr>
				<th><img src="../images/txt/content.gif" alt="내용 *" /></th>
				<td><div class="bk_13"><textarea name="" id="" rows="3" cols="80" class="fms_4"></textarea></div></td>
			</tr>
			<tr>
				<th><img src="../images/txt/state.gif" alt="현재상태" /></th>
				<td>
					<select name="" id="">
						<option value="">재학생</option>
						<option value="">졸업생</option>
					</select>
				</td>
			</tr>
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
