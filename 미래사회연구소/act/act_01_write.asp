<%
pageNum = 2
subNum01 = 1
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "����Ȱ��"
pathArr(0,1) = "../act/act_01.asp"
pathArr(1,0) = "��ɻ�ȸ������"
pathArr(1,1) = ""

'���� Ÿ��Ʋ img, alt
ttl_img = "../images/pgs/act/title_01.gif"
ttl_ment = pathArr(0,0)

'������ Ÿ��Ʋ img, alt
s_ttl_img = "../images/pgs/act/s_title_0"& subNum01 &".gif"
s_ttl_ment = pathArr(1,0)

'������ Ÿ��Ʋ �ϴ� �ΰ����� img, alt
s_ttl_img_2 = "../images/pgs/act/s_title_0"& subNum01 &"_ment.gif"
s_ttl_ment_2 = "��ɻ�ȸ ������ ���������� ���� �����Դϴ�."
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

<form method="post" action="">
	<fieldset>

		<legend>�۾��� ���</legend>

		<div class="bs_01">
			<span class="blt"></span><span class="bgt"></span>

			<table class="tb_def">
				<colgroup>
					<col width="12%" />
					<col width="88%" />
				</colgroup>
			
				<tbody class="ths_02">
					<tr class="tp">
						<th><img src="../images/txt/ttl.gif" alt="����" /></th>
						<td><input type="text" name="title" id="title" class="inp_def_2 inp_03" /></td>
					</tr>
					<tr class="bdr">
						<th class="nobg"><img src="../images/txt/cont.gif" alt="����" /></th>
						<td class="cont">
							<!-- ������ ���� width="573" height="235" -->
							<div class="edt"><img src="../images/_temp/editor.gif" width="573" height="235" alt="" /></div>
						</td>
					</tr>
					<tr class="files">
						<th><img src="../images/txt/file.gif" alt="÷������" /></th>
						<td>
							<input type="file" name="add_file" id="add_file" size="80" />
							<p class="tb_ment">����ũ��� 5MB �̸� �Դϴ�.</p>
						</td>
					</tr>
				</tbody>
			</table>
		</div>

		<!-- ��ư���� -->
		<div class="cmn_01">
			<a href="act_01.asp"><img src="../images/btns/cancle.gif" alt="���" /></a>
			<input type="image" src="../images/btns/done.gif" alt="�Ϸ�" />
		</div>
		<!-- //��ư���� -->

	</fieldset>
</form>

<!-- #include file = "../include/bottom.asp" -->
