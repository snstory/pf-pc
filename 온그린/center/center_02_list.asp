<%
pageNum = 6
subNum01 = 2
subNum02 = ""

dim pathArr(2,1)
pathArr(0,0) = "������"
pathArr(0,1) = "/center/center_01_list.asp"
pathArr(1,0) = "�����ϴ�����"
pathArr(1,1) = ""

titleImgSrc = "/images/center/s_title_02.gif"
titleImgMent = "�����ϴ�����"
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

<!-- ������Ͽ��� -->
<div class="cnt01">
	<div class="cnt01_1">
		<ul>
			<li class="f"><img src="/images/common/txt/no_2.gif" alt="��ȣ" /></li>
			<li><img src="/images/common/txt/title_2.gif" alt="����" /></li>
		</ul>
	</div>

	<div class="cnt01_2" id="frequentlyQuestion">
		<dl>
			<dt>
				<p><span>10</span></p>
				<a href="#">�����Կ� ������ �־��µ� ĳ�������� ������ ������ �ǳ���?</a>
			</dt>
			<dd>ȸ���Բ��� �����Կ� ������ ������ �ֽø� ���μ����� ���� �� �ǵ� �۾��� ���� �����ǰ� ������, �� �Ⱓ�� �� 3~4�� ���� �ҿ�ǰ� ������ ���� ������ �ֽñ� �ٶ��ϴ�. �׷��� ������ �����Ͻ� �Ⱓ�� 4�� �̻� ����Ǿ����� ����Ʈ�� �������� �ʾ��� ��쿡�� �����Ͻ� ������ ���� ����Ͻô� ���� (�����Ͻ� ���ڿ� ��������, �����ǿ� ���̽� ��������, �����Ͻ� ���� ������ ���, ���ڵ带 ����Ͻ� ī���ȣ) �� �˷� �ֽø� Ȯ�� �� �ٽ� �亯 �帮�ڽ��ϴ�.</dd>

			<dt>
				<p><span>9</span></p>
				<a href="#">�����Կ� ������ �־��µ� ĳ�������� ������ ������ �ǳ���?</a>
			</dt>
			<dd>9�� ��俵��</dd>

			<dt>
				<p><span>8</span></p>
				<a href="#">�����Կ� ������ �־��µ� ĳ�������� ������ ������ �ǳ���?</a>
			</dt>
			<dd>8�� ��俵��</dd>
		</dl>
	</div>
</div>
<!-- //������Ͽ��� -->

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
