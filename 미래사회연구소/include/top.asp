
</head>

<body id="st_sub">

<div id="wrap">
	<!-- wrap_gde -->
	<div class="wrap_gde">

		<!-- header -->
		<div id="header">
			<!-- #include file = "gnb.asp" -->
		</div>
		<!-- //header -->

		<!-- container -->
		<div id="container">
			<!-- snb_gde -->
			<div class="snb_gde">

				<!-- snb -->
				<div class="snb">

					<h1 class="snb_title"><img src="<%= ttl_img %>" alt="<%= ttl_ment %>" /></h1>

					<!-- #include file = "snb.asp" -->

				</div>
				<!-- //snb -->

				<!-- bann -->
				<div class="bann">
					<ul>
						<li><a href="#"><img src="../images/banner_01.gif" alt="미래전략 포럼 - 미래전략 포럼을 만나보세요." /></a></li>
						<li><a href="#"><img src="../images/banner_02.gif" alt="미래사회CEO 심포지엄 - 미래전략 포럼을 만나 보세요." /></a></li>
					</ul>
				</div>
				<!-- //bann -->

			</div>
			<!-- //snb_gde -->

			<!-- content_gde -->
			<div class="content_gde">

				<!-- content -->
				<div id="content">

					<!-- path -->
					<p class="path">
						<span><a href="../" class="hm">Home</a></span>
						<%
							For i=0 to ubound(pathArr)-1
								If(pathArr(i,1) = "" And i = (ubound(pathArr)-1)) Then
									%><strong><%=pathArr(i,0)%></strong><%
								Else
									If(pathArr(i,1) = "") Then
										%><em><%=pathArr(i,0)%></em><%
									Else
										%><a href="<%=pathArr(i,1)%>"><%=pathArr(i,0)%></a><%
									End if
								End if
							Next
						%>
					</p>
					<!-- //path -->
					
					<!-- ↓ 타이틀 -->
					<div class="se_ttl">
						<h1><img src="<%= s_ttl_img %>" alt="<%= s_ttl_ment %>" /></h1>
						<% If s_ttl_img_2 <> "" Then

							%><p<%

								If s_ttl_img_2_class <> "" Then
									%> class="<%= s_ttl_img_2_class %>"<%
								End if

							%>><img src="<%= s_ttl_img_2 %>" alt="<%= s_ttl_ment_2 %>" /></p><%
						
						End if
						%>
					</div>
					<!-- ↑ 타이틀 -->

					<!-- content_se -->
					<div class="content_se">
<!-- ============================================ 내용영역 ============================================ -->
