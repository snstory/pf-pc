<h1><%
	If pageNo = 1 Then
		%><img src="../images/txt/snb_title_01.png" alt="�а��Ұ�" /><%
	ElseIf pageNo = 2 Then
		%><img src="../images/txt/snb_title_02.png" alt="���������Ұ�" /><%
	ElseIf pageNo = 3 Then
		%><img src="../images/txt/snb_title_03.png" alt="�������л�" /><%
	ElseIf pageNo = 4 Then
		%><img src="../images/txt/snb_title_04.png" alt="�˸��� ������" /><%
	ElseIf pageNo = 5 Then
		%><img src="../images/txt/snb_title_05.png" alt="1��1�ڰ���/���" /><%
	ElseIf pageNo = 6 Then
		%><img src="../images/txt/snb_title_06.png" alt="�а��ٹ�" /><%
	ElseIf pageNo = 7 Then
		%><img src="../images/txt/snb_title_07.png" alt="Ư��" /><%
	ElseIf pageNo = 8 Then
		%><img src="../images/txt/snb_title_08.png" alt="ETC." /><%
	ElseIf pageNo = 9 Then
		%><img src="../images/txt/snb_title_09.png" alt="MEMBER" /><%
	End If
%></h1>

<ul>
	<% If pageNo = 1 Then %>

		<li class="sb01"><a href="../intro/intro_01_01.asp"<%If sub_01=1 Then%> class="on"<%End If%>>�а��Ұ�</a></li>
		<li class="sb02"><a href="../intro/intro_02.asp"<%If sub_01=2 Then%> class="on"<%End If%>>�а�����</a></li>
		<li class="sb03"><a href="../intro/intro_03.asp"<%If sub_01=3 Then%> class="on"<%End If%>>�а�Ư¡</a></li>
		<li class="sb04"><a href="../intro/intro_04.asp"<%If sub_01=4 Then%> class="on"<%End If%>>�����Ұ�</a></li>
		<li class="sb05"><a href="../intro/intro_05.asp"<%If sub_01=5 Then%> class="on"<%End If%>>���п�������Ȳ</a></li>
		<li class="sb06"><a href="../intro/intro_06_01.asp"<%If sub_01=6 Then%> class="on"<%End If%>>�������±��</a></li>
		<li class="sb07"><a href="../intro/intro_07.asp"<%If sub_01=7 Then%> class="on"<%End If%>>���û���Ʈ</a></li>
		<li class="sb08"><a href="../intro/intro_08.asp"<%If sub_01=8 Then%> class="on"<%End If%>>���丮�ڸ�</a></li>
		<li class="sb09"><a href="../intro/intro_09_01.asp"<%If sub_01=9 Then%> class="on"<%End If%>>About ��ť</a></li>

	<% ElseIf pageNo = 2 Then %>

		<li class="sb10"><a href="../proc/proc_01.asp"<%If sub_01=1 Then%> class="on"<%End If%>>���������Ұ�</a></li>
		<li class="sb11"><a href="../proc/proc_02.asp"<%If sub_01=2 Then%> class="on"<%End If%>>�н��ε��</a></li>
		<li class="sb12"><a href="../proc/proc_03.asp"<%If sub_01=3 Then%> class="on"<%End If%>>���������� Ư¡</a></li>
		<li class="sb13"><a href="../proc/proc_04.asp"<%If sub_01=4 Then%> class="on"<%End If%>>������Ұ�</a></li>
		<li class="sb14"><a href="../proc/proc_05.asp"<%If sub_01=5 Then%> class="on"<%End If%>>������û���</a></li>
		<li class="sb15"><a href="../proc/proc_06.asp"<%If sub_01=6 Then%> class="on"<%End If%>>���Ǹ�����</a></li>

	<% ElseIf pageNo = 3 Then %>

		<li class="sb16"><a href="../rese/rese_01_01.asp"<%If sub_01=1 Then%> class="on"<%End If%>>�������л���õ</a></li>
		<li class="sb17"><a href="../rese/rese_02.asp"<%If sub_01=2 Then%> class="on"<%End If%>>�ְ����� 10</a></li>
		<li class="sb18"><a href="../rese/rese_03.asp"<%If sub_01=3 Then%> class="on"<%End If%>>�̷��� ���� ����</a></li>
		<li class="sb19"><a href="../rese/rese_04.asp"<%If sub_01=4 Then%> class="on"<%End If%>>�����ϴ� ����</a></li>
		<li class="sb20"><a href="../rese/rese_05.asp"<%If sub_01=5 Then%> class="on"<%End If%>>������ �ñ��ؿ�</a></li>
		<li class="sb21"><a href="../rese/rese_06.asp"<%If sub_01=6 Then%> class="on"<%End If%>>������ �ñ��ؿ�</a></li>

	<% ElseIf pageNo = 4 Then %>

		<li class="sb22"><a href="../noti/noti_01.asp"<%If sub_01=1 Then%> class="on"<%End If%>>�б��ҽ�</a></li>
		<li class="sb23"><a href="../noti/noti_02.asp"<%If sub_01=2 Then%> class="on"<%End If%>>�а��ҽ�</a></li>
		<li class="sb24"><a href="../noti/noti_03.asp"<%If sub_01=3 Then%> class="on"<%End If%>>�а��Խ���</a></li>
		<li class="sb25"><a href="../noti/noti_04.asp"<%If sub_01=4 Then%> class="on"<%End If%>>�����Խ���</a></li>
		<li class="sb26"><a href="../noti/noti_05.asp"<%If sub_01=5 Then%> class="on"<%End If%>>�������ּ���</a></li>
		<li class="sb27"><a href="../noti/noti_06.asp"<%If sub_01=6 Then%> class="on"<%End If%>>�а��л�ȸ�ӿ���</a></li>
		<li class="sb28"><a href="../noti/noti_07.asp"<%If sub_01=7 Then%> class="on"<%End If%>>�̽����POST</a></li>
		<li class="sb29"><a href="http://www.seoulscu.co.kr/newweb/bbs/board.php?bo_table=brd_com1" target="_blank">���о˸�����</a></li>

	<% ElseIf pageNo = 5 Then %>

		<li class="sb30"><a href="../study/study_01.asp"<%If sub_01=1 Then%> class="on"<%End If%>>1��1�ڰ����ȳ�</a></li>
		<li class="sb31"><a href="../study/study_02.asp"<%If sub_01=2 Then%> class="on"<%End If%>>���п����оȳ�</a></li>
		<li class="sb32"><a href="../study/study_03.asp"<%If sub_01=3 Then%> class="on"<%End If%>>Law School �ȳ�</a></li>
		<li class="sb33"><a href="../study/study_04.asp"<%If sub_01=4 Then%> class="on"<%End If%>>�ڰ����ȳ�</a></li>
		<li class="sb34"><a href="../study/study_05_01.asp"<%If sub_01=5 Then%> class="on"<%End If%>>���������ȳ�</a></li>
		<li class="sb35"><a href="../study/study_06_01.asp"<%If sub_01=6 Then%> class="on"<%End If%>>����������ȳ�</a></li>
		<li class="sb36"><a href="../study/study_07.asp"<%If sub_01=7 Then%> class="on"<%End If%>>�����ڷ��</a></li>
		<li class="sb37"><a href="../study/study_08_01.asp"<%If sub_01=8 Then%> class="on"<%End If%>>���͵�</a></li>

	<% ElseIf pageNo = 6 Then %>

		<li class="sb38"><a href="../abm/abm_01.asp"<%If sub_01=1 Then%> class="on"<%End If%>>�а��ٹ�</a></li>
		<li class="sb39"><a href="../abm/abm_02.asp"<%If sub_01=2 Then%> class="on"<%End If%>>�ڱ�Ұ�</a></li>
		<li class="sb40"><a href="../abm/abm_03.asp"<%If sub_01=3 Then%> class="on"<%End If%>>UCC�ø���</a></li>

	<% ElseIf pageNo = 7 Then %>

		<li class="sb41"><a href="../off/off_01.asp"<%If sub_01=1 Then%> class="on"<%End If%>>�����ûƯ��</a></li>

	<% ElseIf pageNo = 8 Then %>

		<li class="sb42"><a href="../etc/etc_01.asp"<%If sub_01=1 Then%> class="on"<%End If%>>����Ʈ��</a></li>

	<% ElseIf pageNo = 9 Then %>

		<li class="sb43"><a href="../member/member_01.asp"<%If sub_01=1 Then%> class="on"<%End If%>>�α���</a></li>

	<% End If %>
</ul>
