<%
pageNum = 4
subNum01 = 3
subNum02 = ""

dim pathArr(2,1)
pathArr(0,0) = "Talk Hole"
pathArr(0,1) = "/talk/talk_01_01_list.asp"
pathArr(1,0) = "�Բ��� ģ�� ã��"
pathArr(1,1) = ""

titleImgSrc = "/images/talk/s_title_03.gif"
titleImgMent = "�Բ��� ģ�� ã��"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<!-- �˻����� -->
<div class="bbsSch bSh_op01">
	<p class="count">�� <strong>20</strong>���� �ڷᰡ ��ϵǾ����ϴ�</p>

	<form method="post" action="">
		<fieldset>
			<legend>�˻� ���</legend>
			<select name="sel" id="sel" class="fs_01">
				<option>�����ϼ���</option>
				<option>����</option>
				<option>����</option>
			</select>

			<input type="text" name="schword" id="schword" class="fi_df_b fi_03" />
			<input type="image" src="/images/common/btns/search.gif" />
		</fieldset>
	</form>
</div>
<!-- //�˻����� -->

<div class="bbs02">
	<span class="lt"></span><span class="gt"></span>

	<table class="bbs02_tb">
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
			<!-- ��ް����� ��� -->
			<tr>
				<td>1</td>
				<td class="ttle">
					<span class="t_urgent"><em class="lt"></em><em class="gt"></em><strong>��ް���</strong></span>
					<a href="talk_03_view.asp">�ȳ��ϼ���. ��ΰ� �Դϴ�.</a>
					<img src="/images/common/icons/new_02.gif" alt="" class="new" /><!-- �����ϰ�� -->
				</td>
				<td>������</td>
				<td>10. 01. 29</td>
				<td>922</td>
			</tr>

			<!-- ����� ��� -->
			<tr class="reply">
				<td>1</td>
				<td class="ttle">
					<a href="talk_03_view.asp">��ΰ澾 �ȳ��ϼ���.^^</a>
					<img src="/images/common/icons/new_02.gif" alt="" class="new" /><!-- �����ϰ�� -->
				</td>
				<td>������</td>
				<td>10. 01. 29</td>
				<td>922</td>
			</tr>

			<!-- �⺻ -->
			<tr>
				<td>2</td>
				<td class="ttle"><a href="talk_03_view.asp">�ȳ��ϼ���. ��ΰ� �Դϴ�.</a></td>
				<td>������</td>
				<td>10. 01. 29</td>
				<td>922</td>
			</tr>

			<!-- ���� ���� ��� -->
			<tr class="noDatalist">
				<td colspan="5">���� �����ϴ�.</td>
			</tr>

		</tbody>
	</table>
	
</div>

<!-- ����¡ -->
<div class="bbsPaz bbsPaz_pd02">
	<a href="#"><img src="/images/common/btns/prev_LL.gif" alt="���� 10������" /></a>
	<a href="#"><img src="/images/common/btns/prev_L.gif" alt="��������" /></a>

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

	<a href="#"><img src="/images/common/btns/next_L.gif" alt="��������" /></a>
	<a href="#"><img src="/images/common/btns/next_LL.gif" alt="���� 10������" /></a>

	<!-- ��ư���� (����¡ ������) -->
	<div class="bbsBtns_02">
		<a href="talk_03_write.asp"><img src="/images/common/btns/write.gif" alt="�۾���" /></a>
	</div>
	<!-- //��ư���� (����¡ ������) -->
</div>
<!-- //����¡ -->

<!-- #include virtual = "/include/bottom.asp" -->
