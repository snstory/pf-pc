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
				<th><img src="/images/common/txt/no.gif" alt="�۹�ȣ" /></th>
				<th><img src="/images/common/txt/title_list.gif" alt="����" /></th>
				<th><img src="/images/common/txt/writer_list.gif" alt="�����" /></th>
				<th><img src="/images/common/txt/date.gif" alt="�����" /></th>
				<th><img src="/images/common/txt/ask.gif" alt="��ȸ" /></th>
			</tr>
		</thead>
	
		<tbody>
			<tr class="readTr">
				<td>1</td>
				<td class="ttle"><strong>�ȳ��ϼ���. ��ΰ� �Դϴ�.</strong></td>
				<td>������</td>
				<td>10. 01. 29</td>
				<td>922</td>
			</tr>
		</tbody>
	</table>
</div>

<!-- ������ ���� -->
<div class="bbsView">
	������ȣ�� ���� ���� ������ ����Ͽ� �����ϴ� ����ȭȣ�� ��ü����̴�. ���� ������ö���� ����Ǵ� ���࿭�� ������ ���ȭ�� ��ǥ�� 2009�� 6�� 1�Ϻ��� ���� - ��â ������ �� 1�ð� 20�� ������ �ҿ�ð����� �����ϰ� �ִ�. ���౸���� ������ ��ö 1ȣ���� ������ ������ �����ϳ� �����μ��� ������ö������ΰ� �ƴ� ����������ο��� ����ϹǷ� ���� �� ����ü��� ����ȭȣ�� ���ϰ� 2020�� ��� ����ȭȣ�� ��ü�� �����̴�.<br /><br />

	2009�� 6�� 1�Ϻ��� ���� 11ȸ, �ָ� 6ȸ�� �ù� ����Ǹ�, 7�� 1�Ϻ��ʹ� ���� 22ȸ�� �����Ͽ� ������ �����̴�.[2] ������ ����ȭȣ�� �����ϴ�. ��μ��� ���׼��� ����-��â ������ ���� �����ϰ� �ִ�.
</div>
<!-- //������ ���� -->

<!-- ��ư���� (��) -->
<div class="bbsBtns_03">
	<a href="list_02_reply.asp"><img src="/images/common/btns/reply.gif" alt="���" /></a>
	<a href="list_02_write.asp"><img src="/images/common/btns/edit.gif" alt="����" /></a>
	<a href="#"><img src="/images/common/btns/del.gif" alt="����" /></a>
	<a href="#" onclick="history.back(); return false;"><img src="/images/common/btns/list.gif" alt="���" /></a>
</div>
<!-- //��ư���� (��) -->

<!-- ������, ������ ���� -->
<div class="bbsPNlist">
	<dl class="bbsPNlist_dl">
		<!-- ����� ��� -->
		<dd class="prev"><a href="#" class="re"><strong>[���]</strong> �ȳ��ϼ���. ���ΰ��Դϴ�.</a></dd>
		<dd class="next"><a href="#">�ȳ��ϼ���. ���ΰ��Դϴ�.</a></dd>
	</dl>
</div>
<!-- //������, ������ ���� -->

<!-- #include virtual = "/include/bottom.asp" -->
