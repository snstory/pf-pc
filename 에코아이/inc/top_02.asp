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


						' (110627) 수정영역 시작
						If pageNum = 1 Then
							%>SOS 길라잡이<%
						ElseIf pageNum = 2 Then
							%>SOS 지원도구<%
						ElseIf pageNum = 3 Then
							%>SOS 팩토리<%
						ElseIf pageNum = 4 Then
							%>SOS 아이디어뱅크<%
						ElseIf pageNum = 5 Then
							%>SOS 창고<%
						ElseIf pageNum = 6 Then
							%>ETC<%
						End if
						' (110627) 수정영역 종료

					%>" /></h1>

				<ul class="snb-menu" sntop="<%=subNum01%>" snsub="<%=subNum02%>"><%

				If pageNum = 1 Then

					%><!-- SOS 길라잡이 [intro] -->
					<li><a href="/intro/intro_01.asp"><img src="/images/pgs/intro/lt_01.gif" alt="소개" /></a></li>
					<li><a href="/intro/intro_02.asp"><img src="/images/pgs/intro/lt_02.gif" alt="이용가이드" /></a></li>
					<!-- //SOS 길라잡이 --><%
					
				ElseIf pageNum = 2 Then
					
					%><!-- SOS 연구소 [lab]-->
					<li><a href="/lab/lab_01_01.asp"><img src="/images/pgs/lab/lt_01.gif" alt="가이드라인" /></a></li>
					<li><a href="/lab/lab_02.asp"><img src="/images/pgs/lab/lt_02.gif" alt="평가도구" /></a></li>
					<li><a href="/lab/lab_03_01.asp"><img src="/images/pgs/lab/lt_03.gif" alt="개발프로세스" /></a></li>
					<li><a href="/lab/lab_04_01.asp"><img src="/images/pgs/lab/lt_04.gif" alt="그린마케팅" /></a></li>
					<!-- //SOS 연구소 --><%

				ElseIf pageNum = 3 Then

					%><!-- SOS 팩토리 [fac] -->
					<li>
						<a href="/fac/fac_01_01.asp"><img src="/images/pgs/fac/lt_01.gif" alt="제품 DB" /></a>
						<dl>
							<dd><a href="/fac/fac_01_01.asp">전기/전자</a></dd>
							<dd><a href="/fac/fac_01_02.asp">가구</a></dd>
							<dd><a href="/fac/fac_01_03.asp">패키지</a></dd>
						</dl>
					</li>
					<li>
						<a href="/fac/fac_02_01.asp"><img src="/images/pgs/fac/lt_02.gif" alt="소재 DB" /></a>
						<dl>
							<dd><a href="/fac/fac_02_01.asp">플라스틱</a></dd>
							<dd><a href="/fac/fac_02_02.asp">금속</a></dd>
							<dd><a href="/fac/fac_02_03.asp">목재</a></dd>
							<dd><a href="/fac/fac_02_04.asp">유리세라믹</a></dd>
							<dd><a href="/fac/fac_02_05.asp">종이</a></dd>
							<dd><a href="/fac/fac_02_06.asp">기타</a></dd>
						</dl>
					</li>
					<li>
						<a href="/fac/fac_03_01.asp"><img src="/images/pgs/fac/lt_03.gif" alt="기법 DB" /></a>
						<dl>
							<dd><a href="/fac/fac_03_01.asp">표면처리</a></dd>
							<dd><a href="/fac/fac_03_02.asp">가공기술</a></dd>
							<dd><a href="/fac/fac_03_03.asp">설계기법</a></dd>
						</dl>
					</li>
					<!-- //SOS 팩토리 --><%

				ElseIf pageNum = 4 Then

					%><!-- SOS 아이디어뱅크 [idea] -->
					<li><a href="/idea/idea_01.asp"><img src="/images/pgs/idea/lt_01.gif" alt="아이디어제품 DB" /></a></li>
					<li><a href="/idea/idea_02.asp"><img src="/images/pgs/idea/lt_02.gif" alt="디자인 성공 스토리" /></a></li>
					<!-- //SOS 아이디어뱅크 --><%

				ElseIf pageNum = 5 Then

					%><!-- SOS 창고 [store] -->
					<li><a href="/store/store_01.asp"><img src="/images/pgs/store/lt_01.gif" alt="공지사항" /></a></li>
					<li><a href="/store/store_02.asp"><img src="/images/pgs/store/lt_02.gif" alt="자유게시판" /></a></li>
					<!-- <li><a href="/store/store_03.asp"><img src="/images/pgs/store/lt_03.gif" alt="소식" /></a></li>
					<li><a href="/store/store_04.asp"><img src="/images/pgs/store/lt_04.gif" alt="FAQ" /></a></li> -->
					<!-- //SOS 창고 --><%

				ElseIf pageNum = 6 Then

					%><!-- ETC [etc] -->
					<li><a href="/etc/etc_01.asp"><img src="/images/pgs/etc/lt_01.gif" alt="사이트맵" /></a></li>
					<!-- //ETC --><%

				End if

				%></ul><!-- //snb-menu -->

			</div><!-- //snb -->

			<div id="kjh-content">
			
				<div class="kjh-content-inner">

					<!-- #include file = "content_path.asp" -->

					<div id="content-info">
<!-- ======================================== 컨텐츠별 내용영역 ======================================== -->