<ul class="snb_list">

<% If pageNum = 1 Then %>

	<!-- intro ( ������ �Ұ� ) -->
	<li><a href="../intro/intro_01.asp"><img src="../images/pgs/intro/snb_01.gif" alt="�������� �λ縻" /></a></li>
	<li><a href="../intro/intro_02.asp"><img src="../images/pgs/intro/snb_02.gif" alt="������ ��������" /></a></li>
	<li><a href="../intro/intro_03.asp"><img src="../images/pgs/intro/snb_03.gif" alt="������ ����" /></a></li>
	<li><a href="../intro/intro_04.asp"><img src="../images/pgs/intro/snb_04.gif" alt="��������" /></a></li>
	<li><a href="../intro/intro_05.asp"><img src="../images/pgs/intro/snb_05.gif" alt="ã�ƿ��ô� ��" /></a></li>
	<!-- //intro -->

<% ElseIf pageNum = 2 Then %>

	<!-- act ( ����Ȱ�� ) -->
	<li><a href="../act/act_01.asp"><img src="../images/pgs/act/snb_01.gif" alt="��ɻ�ȸ������" /></a></li>
	<li><a href="../act/act_02.asp"><img src="../images/pgs/act/snb_02.gif" alt="�������������" /></a></li>
	<li><a href="../act/act_03.asp"><img src="../images/pgs/act/snb_03.gif" alt="���Ϲ���������" /></a></li>
	<li><a href="../act/act_04.asp"><img src="../images/pgs/act/snb_04.gif" alt="��ȭ�����ο�����" /></a></li>
	<li><a href="../act/act_05.asp"><img src="../images/pgs/act/snb_05.gif" alt="�����濵������" /></a></li>
	<li><a href="../act/act_06.asp"><img src="../images/pgs/act/snb_06.gif" alt="�������ͽ�������" /></a></li>
	<li><a href="../act/act_07.asp"><img src="../images/pgs/act/snb_07.gif" alt="e-���Ļ��ֿ�����" /></a></li>
	<li><a href="../act/act_08.asp"><img src="../images/pgs/act/snb_08.gif" alt="���̹�����������" /></a></li>
	<li><a href="../act/act_09.asp"><img src="../images/pgs/act/snb_09.gif" alt="������������" /></a></li>
	<!-- //act -->

<% ElseIf pageNum = 3 Then %>

	<!-- res ( �������� ) -->
	<li><a href="../res/res_01.asp"><img src="../images/pgs/res/snb_01.gif" alt="������Ʈ" /></a></li>
	<li><a href="../res/res_02.asp"><img src="../images/pgs/res/snb_02.gif" alt="�м�Ȱ��" /></a></li>
	<li>
		<a href="../res/res_03_01.asp"><img src="../images/pgs/res/snb_03.gif" alt="��������ȸ" /></a>

		<ul class="snb_sub">
			<li><a href="../res/res_03_01.asp">����������</a></li>
			<li><a href="../res/res_03_02.asp">�������</a></li>
		</ul>
	</li>
	<!-- //res -->

<% ElseIf pageNum = 4 Then %>

	<!-- data ( �ڷ�� ) -->
	<li><a href="../data/data_01.asp"><img src="../images/pgs/data/snb_01.gif" alt="�����ڷ�" /></a></li>
	<li><a href="../data/data_02.asp"><img src="../images/pgs/data/snb_02.gif" alt="�����ڷ�" /></a></li>
	<li><a href="../data/data_03.asp"><img src="../images/pgs/data/snb_03.gif" alt="���û���Ʈ" /></a></li>
	<!-- //data -->

<% ElseIf pageNum = 5 Then %>

	<!-- cmu ( Ŀ�´�Ƽ ) -->
	<li><a href="../cmu/cmu_01.asp"><img src="../images/pgs/cmu/snb_01.gif" alt="������ �ҽ�" /></a></li>
	<li><a href="../cmu/cmu_02.asp"><img src="../images/pgs/cmu/snb_02.gif" alt="���� ����" /></a></li>
	<li><a href="../cmu/cmu_03.asp"><img src="../images/pgs/cmu/snb_03.gif" alt="Q&amp;A" /></a></li>
	<!-- //cmu -->

<% ElseIf pageNum = 6 Then %>

	<!-- member ( ȸ���������� ) -->
	<li><a href="../member/login.asp"><img src="../images/pgs/member/snb_01.gif" alt="�α���" /></a></li>
	<li><a href="../member/join_01.asp"><img src="../images/pgs/member/snb_02.gif" alt="ȸ������" /></a></li>
	<li><a href="../member/idpw.asp"><img src="../images/pgs/member/snb_03.gif" alt="���̵�&amp;��й�ȣ��ȸ" /></a></li>
	<li><a href="../member/join_edit.asp"><img src="../images/pgs/member/snb_04.gif" alt="ȸ������ ����" /></a></li>
	<li><a href="../member/out.asp"><img src="../images/pgs/member/snb_05.gif" alt="ȸ��Ż�� ��û" /></a></li>
	<!-- //member -->

<% ElseIf pageNum = 7 Then %>

	<!-- etc ( ��Ÿ�ȳ� ) -->
	<li><a href="../etc/etc_01.asp"><img src="../images/pgs/etc/snb_01.gif" alt="���κ�ȣ��å" /></a></li>
	<li><a href="../etc/etc_02.asp"><img src="../images/pgs/etc/snb_02.gif" alt="�̸��� ���ܼ����ź�" /></a></li>
	<li><a href="../etc/etc_03.asp"><img src="../images/pgs/etc/snb_03.gif" alt="����Ʈ ��" /></a></li>
	<li><a href="../etc/etc_04.asp"><img src="../images/pgs/etc/snb_04.gif" alt="CONTACT US" /></a></li>
	<!-- //etc -->

<% Else %>

	<li class="on"></li>

<% End if %>

</ul>
