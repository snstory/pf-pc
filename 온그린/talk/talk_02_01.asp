<%
pageNum = 4
subNum01 = 2
subNum02 = 1

dim pathArr(3,1)
pathArr(0,0) = "Talk Hole"
pathArr(0,1) = "/talk/talk_01_01_list.asp"
pathArr(1,0) = "���Ա�ȯ�ϱ�"
pathArr(1,1) = "/talk/talk_02_01.asp"
pathArr(2,0) = "��ü���Ժ���"
pathArr(2,1) = ""

titleImgSrc = "/images/talk/s_title_02_01.gif"
titleImgMent = "��ü���Ժ���"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<!-- ���� �˻��ϱ� ���� -->
<form method="post" action="">
	<fieldset>
		<legend>���� �˻��ϱ� ���</legend>

		<div class="bbsCardSch">
			<dl class="bbsCardSch_list">
				<dd>
					<div>
						<label for="sex" class="ttle">����</label>
						<select name="sex" id="sex" class="fs_01">
							<option value="">��ü</option>
							<option value="">��</option>
							<option value="">��</option>
						</select>
					</div>
				</dd>
				<dd>
					<div>
						<label for="name" class="ttle">�̸�</label>
						<input type="text" name="name" id="name" class="fi_04 fi_df_b" />
					</div>
				</dd>
				<dd>
					<div>
						<label for="branch" class="ttle">�о�</label>
						<select name="branch" id="branch" class="fs_01">
							<option value="">�����ϼ���</option>
						</select>
					</div>
				</dd>
				<dd>
					<div>
						<label for="attach" class="ttle">�Ҽ�</label>
						<input type="text" name="attach" id="attach" class="fi_05 fi_df_b" />
					</div>
				</dd>
				<dd>
					<div>
						<label for="zone" class="ttle">����</label>
						<select name="zone" id="zone" class="fs_01">
							<option value="">��ü</option>
						</select>
					</div>
				</dd>
				<dd>
					<div>
						<label for="age_01" class="ttle">����</label>
						<select name="age_01" id="age_01" class="fs_02">
							<option value="">20</option>
						</select>
						~
						<select name="age_02" id="age_02" class="fs_02">
							<option value="">80</option>
						</select>
					</div>
				</dd>
				<dd>
					<div>
						<label for="career" class="ttle">����</label>
						<select name="career" id="career" class="fs_02">
							<option value="">20</option>
						</select>
					</div>
				</dd>
			</dl>

			<!-- �˻��ϱ� ��ư -->
			<a href="#" class="acBtn"><em class="lt"></em><em class="gt"></em><em class="wd">���� �˻��ϱ�</em></a>
			<!-- //�˻��ϱ� ��ư -->
		</div>
	</fieldset>
</form>
<!-- //���� �˻��ϱ� ���� -->

<!-- ī�װ� ��� ���� -->
<div class="tk02">
	<a href="talk_02_01.asp" class="on">��ü��ϸ��Ժ���</a> |
	<a href="talk_02_02.asp">���Ե�� �� ����</a> |
	<a href="talk_02_03.asp">���Ա�ȯ�� ���</a> |
	<a href="talk_02_04.asp">���� ���Ժ���</a>
</div>
<!-- //ī�װ� ��� ���� -->

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
				<th>��ȸ</th>
			</tr>
		</thead>
	
		<tbody>
			<tr>
				<td><img src="../images/common/test_img/talk_01.jpg" width="75" height="61" alt="" /></td>
				<td class="ttle">
					<ul class="tk03_tb_ttle">
						<li class="a">
							<strong>��ΰ�, ��</strong>
							<em>(�±׸� / ����)</em>
						</li>
						<li class="b">
							<span class="bun"><strong>�о�</strong> : ����</span>
							<span class="birth">��� : 1980</span>
						</li>
						<li class="c">�ȳ��ϼ���~</li>
					</ul>
				</td>
				<td class="bgw">����</td>
				<td class="bgw">2��</td>
				<td class="bgw">2010-06-17</td>
				<td class="bgw">265</td>
			</tr>

			<!-- ���� ��ũ�� �ɾ�� �ϴ� ��� -->
			<tr>
				<td><img src="../images/common/test_img/talk_01.jpg" width="75" height="61" alt="" /></td>
				<td class="ttle"><!-- Ŭ������ �߰� �� -->
					<ul class="tk03_tb_ttle alinked" onclick="window.location.href='http://www.naver.com/';">
						<li class="a">
							<strong>��ΰ�, ��</strong>
							<em>(�±׸� / ����)</em>
						</li>
						<li class="b">
							<span class="bun"><strong>�о�</strong> : ����</span>
							<span class="birth">��� : 1980</span>
						</li>
						<li class="c">�ȳ��ϼ���~</li>
					</ul>
				</td>
				<td class="bgw">����</td>
				<td class="bgw">2��</td>
				<td class="bgw">2010-06-17</td>
				<td class="bgw">265</td>
			</tr>

			<!-- ���� ���� ��� -->
 			<tr class="noDatalist">
				<td colspan="6" class="bgw">���� �����ϴ�.</td>
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
</div>
<!-- //����¡ -->

<!-- #include virtual = "/include/bottom.asp" -->
