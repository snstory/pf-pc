</head>

<body>
<div id="wrap">
	<div class="wrap-inner">

		<div id="header">

			<h1 class="blind">뉴질랜드 단호박 협회</h1>

			<!-- #include file = "has/gnbLnb.asp" -->

		</div><!-- //header -->

		<div id="container">

			<!-- #include file = "has/snb.asp" -->

			<div id="content-area"<%
				If pageNum = 1 Then '뉴질랜드 단호박협회
					%> class="apply-assoc"<%
				Elseif pageNum = 2 Then '단호박 소개
					%> class="apply-intro"<%
				Elseif pageNum = 3 Then '단호박 요리
					%> class="apply-cook"<%
				Elseif pageNum = 4 Then '단호박 매니아
					%> class="apply-mania"<%
				Elseif pageNum = 5 Then '뉴스/이벤트
					%> class="apply-news"<%
				Elseif pageNum = 6 Then '업계회원코너
					%> class="apply-bnss"<%
				Elseif pageNum = 7 Then '멤버쉽
					%> class="apply-member"<%
				Elseif pageNum = 8 Then '기타
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
<!-- ========================================= 페이지별 고유 영역 ========================================= -->
