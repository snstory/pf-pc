<%
pageNum = 3
subNum01 = 3
subNum02 = 2

'path Array
dim pathArr(3,1)
pathArr(0,0) = "��������"
pathArr(0,1) = "../res/res_01.asp"
pathArr(1,0) = "�� ��������ȸ"
pathArr(1,1) = "../res/res_03_01.asp"
pathArr(2,0) = "�������"
pathArr(2,1) = ""

'���� Ÿ��Ʋ img, alt
ttl_img = "../images/pgs/res/title_01.gif"
ttl_ment = pathArr(0,0)

'������ Ÿ��Ʋ img, alt
s_ttl_img = "../images/pgs/res/s_title_0"& subNum01 &"_0"& subNum02 &".gif"
s_ttl_ment = pathArr(2,0)

'������ Ÿ��Ʋ �ϴ� �ΰ����� img, alt
s_ttl_img_2 = "../images/pgs/res/s_title_0"& subNum01 &"_0"& subNum02 &"_ment.gif"
s_ttl_ment_2 = "�Ϲ�ȸ������ �� ���� ���� �����Դϴ�."
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
				<th><img src="../images/txt/name.gif" alt="�̸�" /></th>
				<td>ȫ�浿</td>
				<th><img src="../images/txt/tel.gif" alt="����ó" /></th>
				<td>010 - 1234 - 1234</td>
			</tr>
			<tr class="bdr">
				<th><img src="../images/txt/aff.gif" alt="�Ҽ�" /></th>
				<td colspan="3">���Ҽ�</td>
			</tr>
			<tr class="bdr">
				<th><img src="../images/txt/diss.gif" alt="������" /></th>
				<td colspan="3">���� ���� ����� ��</td>
			</tr>
			<tr class="bdr view">
				<th class="nobg"><img src="../images/txt/diss_intro.gif" alt="���Ұ�" /></th>
				<td colspan="3" class="cont">���� ���� ����� �� ���� ���� ����� �� ���� ���� ����� �� ���� ���� ����� ��</td>
			</tr>
			<tr class="files">
				<th><img src="../images/txt/file.gif" alt="÷������" /></th>
				<td colspan="3"><a href="#">�����������߻�� ���� ��ȹ.hwp [120Mb]</a></td>
			</tr>
		</tbody>
	</table>
</div>

<!-- ��ư���� -->
<div class="cmn_01">
	<a href="res_03_02.asp"><img src="../images/btns/edit.gif" alt="����" /></a>
	<a href="#"><img src="../images/btns/del.gif" alt="����" /></a>
	<!-- <a href="#"><img src="../images/btns/list.gif" alt="���" /></a> -->
</div>
<!-- //��ư���� -->

<!-- #include file = "../include/bottom.asp" -->
