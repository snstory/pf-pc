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

<!-- bs_01 (�Խ��� ���) -->
<div class="bs_01">
	<span class="blt"></span><span class="bgt"></span>

	<table class="tb_def">
		<colgroup>
			<col width="12%" />
			<col width="58%" />
			<col width="10%" />
			<col width="10%" />
			<col width="10%" />
		</colgroup>
	
		<thead>
			<tr class="ths_01">
				<th><img src="../images/txt/no.gif" alt="��ȣ" /></th>
				<th><img src="../images/txt/ttl.gif" alt="����" /></th>
				<th><img src="../images/txt/wtr.gif" alt="�ۼ���" /></th>
				<th><img src="../images/txt/date.gif" alt="�ۼ���" /></th>
				<th><img src="../images/txt/count.gif" alt="��ȸ��" /></th>
			</tr>
		</thead>
	
		<tbody class="tds_01">
			<!-- �ֿ��ڷ� �� ��� -->
			<tr class="focus">
				<td><strong>[�ֿ��ڷ�]</strong></td>
				<td class="lt"><a href="act_01_view.asp">[ȸ�Ƿ�]2010.06.20 ��ü ������ ȸ�Ƿ�</a></td>
				<td>������</td>
				<td>2010.06.20</td>
				<td>111</td>
			</tr>
			<!-- //�ֿ��ڷ� �� ��� -->

			<!-- �Ϲ� ��� -->
			<tr>
				<td>9</td>
				<td class="lt"><a href="act_01_view.asp">[ȸ�Ƿ�]2010.06.20 ��ü ������ ȸ�Ƿ�</a></td>
				<td>������</td>
				<td>2010.06.20</td>
				<td>111</td>
			</tr>
			<!-- //�Ϲ� ��� -->

			<!-- �ڷᰡ ���� ��� -->
			<tr class="nodata">
				<td colspan="5">�ڷᰡ �����ϴ�</td>
			</tr>
			<!-- //�ڷᰡ ���� ��� -->
		</tbody>
	</table>
</div>
<!-- //bs_01 (�Խ��� ���) -->

<!-- pazing -->
<div class="pazing">
	<div>
		<a href="#"><img src="../images/btns/paz_ltlt.gif" alt="���� 10������" /></a>
		<a href="#"><img src="../images/btns/paz_lt.gif" alt="����������" /></a>

		<span>
			<strong>1</strong>
			<a href="#">2</a>
			<a href="#">3</a>
			<a href="#">4</a>
			<a href="#">5</a>
			<a href="#">6</a>
			<a href="#">7</a>
			<a href="#">8</a>
			<a href="#">9</a>
			<a href="#">10</a>
		</span>

		<a href="#"><img src="../images/btns/paz_gt.gif" alt="����������" /></a>
		<a href="#"><img src="../images/btns/paz_gtgt.gif" alt="���� 10������" /></a>
	</div>

	<a href="act_01_write.asp" class="btn_gt"><img src="../images/btns/write.gif" alt="�۾���" /></a>
</div>
<!-- //pazing -->

<!-- search ( �˻����� ) -->
<div class="search">
	<span class="blt"></span><span class="bgt"></span>

	<form method="post" action="#" accept-charset="euc-kr" id="searchForm" name="searchForm">
		<fieldset>
			<legend>�˻� ���</legend>
			
			<select name="type" id="type" class="se_01">
				<option>��ü</option>
			</select>

			<input type="text" name="word" id="word" class="inp_def inp_01" />

			<input type="image" src="../images/btns/sch.gif" class="inp_02" />
		</fieldset>
	</form>
</div>
<!-- //search -->

<!-- #include file = "../include/bottom.asp" -->
