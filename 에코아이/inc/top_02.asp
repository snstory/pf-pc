</head>

<body>
<div id="wrap">

	<div id="wrap-inner">
	
		<div id="header">
			<!-- #include file = "header.asp" -->
		</div><!-- //header -->

		<div id="container">
		
			<div class="snb">
			
				<h1 class="snb-title"><img src="/images/pgs/<%

					If pageNum = 1 Then
						%>intro<%
					ElseIf pageNum = 2 Then
						%>lab<%
					ElseIf pageNum = 3 Then
						%>fac<%
					ElseIf pageNum = 4 Then
						%>idea<%
					ElseIf pageNum = 5 Then
						%>store<%
					ElseIf pageNum = 6 Then
						%>etc<%
					End if

					%>/title_01.gif" alt="<%


						' (110627) �������� ����
						If pageNum = 1 Then
							%>SOS �������<%
						ElseIf pageNum = 2 Then
							%>SOS ��������<%
						ElseIf pageNum = 3 Then
							%>SOS ���丮<%
						ElseIf pageNum = 4 Then
							%>SOS ���̵���ũ<%
						ElseIf pageNum = 5 Then
							%>SOS â��<%
						ElseIf pageNum = 6 Then
							%>ETC<%
						End if
						' (110627) �������� ����

					%>" /></h1>

				<ul class="snb-menu" sntop="<%=subNum01%>" snsub="<%=subNum02%>"><%

				If pageNum = 1 Then

					%><!-- SOS ������� [intro] -->
					<li><a href="/intro/intro_01.asp"><img src="/images/pgs/intro/lt_01.gif" alt="�Ұ�" /></a></li>
					<li><a href="/intro/intro_02.asp"><img src="/images/pgs/intro/lt_02.gif" alt="�̿밡�̵�" /></a></li>
					<!-- //SOS ������� --><%
					
				ElseIf pageNum = 2 Then
					
					%><!-- SOS ������ [lab]-->
					<li><a href="/lab/lab_01_01.asp"><img src="/images/pgs/lab/lt_01.gif" alt="���̵����" /></a></li>
					<li><a href="/lab/lab_02.asp"><img src="/images/pgs/lab/lt_02.gif" alt="�򰡵���" /></a></li>
					<li><a href="/lab/lab_03_01.asp"><img src="/images/pgs/lab/lt_03.gif" alt="�������μ���" /></a></li>
					<li><a href="/lab/lab_04_01.asp"><img src="/images/pgs/lab/lt_04.gif" alt="�׸�������" /></a></li>
					<!-- //SOS ������ --><%

				ElseIf pageNum = 3 Then

					%><!-- SOS ���丮 [fac] -->
					<li>
						<a href="/fac/fac_01_01.asp"><img src="/images/pgs/fac/lt_01.gif" alt="��ǰ DB" /></a>
						<dl>
							<dd><a href="/fac/fac_01_01.asp">����/����</a></dd>
							<dd><a href="/fac/fac_01_02.asp">����</a></dd>
							<dd><a href="/fac/fac_01_03.asp">��Ű��</a></dd>
						</dl>
					</li>
					<li>
						<a href="/fac/fac_02_01.asp"><img src="/images/pgs/fac/lt_02.gif" alt="���� DB" /></a>
						<dl>
							<dd><a href="/fac/fac_02_01.asp">�ö�ƽ</a></dd>
							<dd><a href="/fac/fac_02_02.asp">�ݼ�</a></dd>
							<dd><a href="/fac/fac_02_03.asp">����</a></dd>
							<dd><a href="/fac/fac_02_04.asp">���������</a></dd>
							<dd><a href="/fac/fac_02_05.asp">����</a></dd>
							<dd><a href="/fac/fac_02_06.asp">��Ÿ</a></dd>
						</dl>
					</li>
					<li>
						<a href="/fac/fac_03_01.asp"><img src="/images/pgs/fac/lt_03.gif" alt="��� DB" /></a>
						<dl>
							<dd><a href="/fac/fac_03_01.asp">ǥ��ó��</a></dd>
							<dd><a href="/fac/fac_03_02.asp">�������</a></dd>
							<dd><a href="/fac/fac_03_03.asp">������</a></dd>
						</dl>
					</li>
					<!-- //SOS ���丮 --><%

				ElseIf pageNum = 4 Then

					%><!-- SOS ���̵���ũ [idea] -->
					<li><a href="/idea/idea_01.asp"><img src="/images/pgs/idea/lt_01.gif" alt="���̵����ǰ DB" /></a></li>
					<li><a href="/idea/idea_02.asp"><img src="/images/pgs/idea/lt_02.gif" alt="������ ���� ���丮" /></a></li>
					<!-- //SOS ���̵���ũ --><%

				ElseIf pageNum = 5 Then

					%><!-- SOS â�� [store] -->
					<li><a href="/store/store_01.asp"><img src="/images/pgs/store/lt_01.gif" alt="��������" /></a></li>
					<li><a href="/store/store_02.asp"><img src="/images/pgs/store/lt_02.gif" alt="�����Խ���" /></a></li>
					<!-- <li><a href="/store/store_03.asp"><img src="/images/pgs/store/lt_03.gif" alt="�ҽ�" /></a></li>
					<li><a href="/store/store_04.asp"><img src="/images/pgs/store/lt_04.gif" alt="FAQ" /></a></li> -->
					<!-- //SOS â�� --><%

				ElseIf pageNum = 6 Then

					%><!-- ETC [etc] -->
					<li><a href="/etc/etc_01.asp"><img src="/images/pgs/etc/lt_01.gif" alt="����Ʈ��" /></a></li>
					<!-- //ETC --><%

				End if

				%></ul><!-- //snb-menu -->

			</div><!-- //snb -->

			<div id="kjh-content">
			
				<div class="kjh-content-inner">

					<!-- #include file = "content_path.asp" -->

					<div id="content-info">
<!-- ======================================== �������� ���뿵�� ======================================== -->