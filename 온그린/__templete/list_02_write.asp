<%
pageNum = 1
subNum01 = 1
subNum02 = 1

dim pathArr(1,1)
pathArr(0,0) = "Templete Layout"
pathArr(0,1) = ""

titleImgSrc = "/images/common/test_img/s_title_01.gif"
titleImgMent = "���ø� ȭ�����"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<form method="post" action="">
	<fieldset>
		<legend>�±׸� �۾��� ���</legend>

		<div class="bbs02_w">
			<table class="bbs02_w_tb">
				<colgroup>
					<col width="18%" />
					<col width="82%" />
				</colgroup>
			
				<tbody>
					<tr>
						<th><img src="/images/common/txt/writer.gif" alt="�ۼ��� ��" /></th>
						<td><input type="text" name="name" id="name" class="i_df fi_01" /></td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/title.gif" alt="����" /></th>
						<td><input type="text" name="title" id="title" class="i_df fi_02" /></td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/email.gif" alt="�̸���" /></th>
						<td>
							<input type="text" name="email_1" id="email_1" class="i_df fi_03" />
							@
							<input type="text" name="email_2" id="email_2" class="i_df fi_03" />
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/homepage.gif" alt="Ȩ������" /></th>
						<td><input type="text" name="url" id="url" value="http://" class="i_df fi_02" /></td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/file.gif" alt="÷������" /></th>
						<td><input type="file" name="file" id="file" class="i_df fi_02" size="50" /></td>
					</tr>
					<tr class="cont">
						<th><img src="/images/common/txt/content.gif" alt="����" /></th>
						<td class="editor"><img src="/images/common/test_img/editor.gif" width="457" height="327" alt="�����Ϳ���" /></td>
					</tr>
				</tbody>
			</table>
		</div>

		<!-- ��ư���� (�⺻Ÿ��) -->
		<div class="bbsBtns_01">
			<input type="image" src="/images/common/btns/confirm.gif" alt="Ȯ��" />
			<input type="image" src="/images/common/btns/edit.gif" alt="����" />
			<a href="#" onclick="history.back(); return false;"><img src="/images/common/btns/cancle.gif" alt="���" /></a>
		</div>
		<!-- //��ư���� (�⺻Ÿ��) -->
	</fieldset>
</form>

<!-- #include virtual = "/include/bottom.asp" -->
