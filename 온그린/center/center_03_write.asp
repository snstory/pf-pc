<%
pageNum = 6
subNum01 = 3
subNum02 = ""

dim pathArr(2,1)
pathArr(0,0) = "������"
pathArr(0,1) = "/center/center_01_list.asp"
pathArr(1,0) = "���ޱ�����"
pathArr(1,1) = ""

titleImgSrc = "/images/center/s_title_03.gif"
titleImgMent = "���ޱ�����"
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
						<th><img src="/images/common/txt/m_public.gif" alt="��������" /></th>
						<td>
							<input type="radio" name="m_public" id="m_public" value="" /><span class="r2">����</span>
							<input type="radio" name="m_public" id="m_public" value="" /><span class="r2">�����</span>
							<strong class="alrt">������� �����Ͻø� ȸ���� ������ �� �ٸ� ȸ���� �Խù��� �� �� �����ϴ�.</strong>
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/writer.gif" alt="�ۼ��� ��" /></th>
						<td><input type="text" name="name" id="name" class="i_df fi_01" /></td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/ct_gory.gif" alt="�Խù�����" /></th>
						<td>
							<select name="ct_gory" id="ct_gory" class="fs_05">
								<option value="">�����ϼ���.</option>
								<option value="">����</option>
								<option value="">���</option>
							</select>
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/title.gif" alt="����" /></th>
						<td><input type="text" name="title" id="title" class="i_df fi_02" /></td>
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
