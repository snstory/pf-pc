</head>

<body>
<div id="wrap">
	<div class="wrap-inner">

		<div id="header">

			<h1 class="blind">�������� ��ȣ�� ��ȸ</h1>

			<!-- #include file = "has/gnbLnb.asp" -->

		</div><!-- //header -->

		<div id="container">

			<!-- #include file = "has/snb.asp" -->

			<div id="content-area"<%
				If pageNum = 1 Then '�������� ��ȣ����ȸ
					%> class="apply-assoc"<%
				Elseif pageNum = 2 Then '��ȣ�� �Ұ�
					%> class="apply-intro"<%
				Elseif pageNum = 3 Then '��ȣ�� �丮
					%> class="apply-cook"<%
				Elseif pageNum = 4 Then '��ȣ�� �ŴϾ�
					%> class="apply-mania"<%
				Elseif pageNum = 5 Then '����/�̺�Ʈ
					%> class="apply-news"<%
				Elseif pageNum = 6 Then '����ȸ���ڳ�
					%> class="apply-bnss"<%
				Elseif pageNum = 7 Then '�����
					%> class="apply-member"<%
				Elseif pageNum = 8 Then '��Ÿ
					%> class="apply-etc"<%
				End if
			%>>
				<div class="aside"><img src="/common/flash/aside.png" width="767" height="130" alt="" /></div>

				<span class="content-guide-top"></span>

				<div class="content-guide">

					<div id="content-core">

						<!-- #include file = "has/contentHead.asp" -->
						<!-- #include file = "has/path.asp" -->

						<div class="content-text">
<!-- ========================================= �������� ���� ���� ========================================= -->
