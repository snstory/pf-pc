<%
pageNum = 4
subNum01 = 2
subNum02 = 3

dim pathArr(3,1)
pathArr(0,0) = "Talk Hole"
pathArr(0,1) = "/talk/talk_01_01_list.asp"
pathArr(1,0) = "���Ա�ȯ�ϱ�"
pathArr(1,1) = "/talk/talk_02_01.asp"
pathArr(2,0) = "���Ա�ȯ�ں���"
pathArr(2,1) = ""

titleImgSrc = "/images/talk/s_title_02_03.gif"
titleImgMent = "���Ա�ȯ�ں���"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<h2 class="cnt03"><img src="/images/center/pg_02.gif" alt="���Ա�ȯ�ں���" /></h2>

<div class="tk03">
	<table class="tk03_tb">
		<colgroup>
			<col width="14%" />
			<col width="43%" />
			<col width="9%" />
			<col width="9%" />
			<col width="17%" />
			<col width="8%" />
		</colgroup>

		<thead>
			<tr>
				<th>�� ��</th>
				<th>�� ��</th>
				<th>����</th>
				<th>����</th>
				<th>�����</th>
				<th>����</th>
			</tr>
		</thead>
	
		<tbody>
			<tr>
				<td><img src="/images/common/test_img/talk_01.jpg" width="75" height="61" alt="" /></td>
				<td class="ttle">
					<ul class="tk03_tb_ttle">
						<li class="a">
							<strong>��ΰ�, ��</strong>
							<em>(�±׸� / ����)</em>
						</li>
						<li class="b">
							<span class="bun"><strong>�о�</strong> : ����</span>
							<span class="birth">��� : 1980, 12, 15</span>
						</li>
						<li class="c">�ȳ��ϼ���~</li>
					</ul>
				</td>
				<td class="bgw">����</td>
				<td class="bgw">2��</td>
				<td class="bgw">2010-06-17</td>
				<td class="bgw"><input type="checkbox" name="" id="" /></td>
			</tr>

			<!-- ���� ��ũ�� �ɾ�� �ϴ� ��� -->
			<tr>
				<td><img src="/images/common/test_img/talk_01.jpg" width="75" height="61" alt="" /></td>
				<td class="ttle"><!-- Ŭ������ �߰� �� -->
					<ul class="tk03_tb_ttle alinked" onclick="window.location.href='http://www.naver.com/';">
						<li class="a">
							<strong>��ΰ�, ��</strong>
							<em>(�±׸� / ����)</em>
						</li>
						<li class="b">
							<span class="bun"><strong>�о�</strong> : ����</span>
							<span class="birth">��� : 1980, 12, 15</span>
						</li>
						<li class="c">�ȳ��ϼ���~</li>
					</ul>
				</td>
				<td class="bgw">����</td>
				<td class="bgw">2��</td>
				<td class="bgw">2010-06-17</td>
				<td class="bgw"><input type="checkbox" name="" id="" /></td>
			</tr>

			<!-- ���� ���� ��� -->
 			<tr class="noDatalist">
				<td colspan="6" class="bgw">���� �����ϴ�.</td>
			</tr>
		</tbody>
	</table>
</div>

<!-- ����¡ -->
<div class="bbsPaz bbsPaz_pd04">
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
		<a href="#"><img src="/images/common/btns/del_all.gif" alt="���ø�ϻ���" /></a>
	</div>
	<!-- //��ư���� (����¡ ������) -->
</div>
<!-- //����¡ -->

<!-- #include virtual = "/include/bottom.asp" -->
