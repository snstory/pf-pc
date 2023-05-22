</head>

<body>
<div id="wrap">
	<div class="wrap_in">
		
		<!-- #include file = "cmm_header.asp" -->

		<!-- container -->
		<div id="container">
			<div class="container_t"><img src="/images/common/bg/bg_03_t.gif" alt="" /></div>

			<!-- colgroup -->
			<div class="colgroup">

				<!-- content -->
				<div id="content">
					<div class="path">
						<a href="/">Home</a>
						<%
							For i=0 to ubound(pathArr)-1
								If(pathArr(i,1) = "" And i = (ubound(pathArr)-1)) Then
									%><strong><%=pathArr(i,0)%></strong><%
								Else
									If(pathArr(i,1) = "") Then
										%><span class="md"><%=pathArr(i,0)%></span><%
									Else
										%><a href="<%=pathArr(i,1)%>" class="md"><%=pathArr(i,0)%></a><%
									End if
								End if
							Next
						%>
					</div>

					<div class="section">
						<h1 class="sbtitle"><img src="<%=titleImgSrc%>" alt="<%=titleImgMent%>" /></h1>
						
						<div class="cnlayout">
<!-- ====================================================== 개별내용영역 ====================================================== -->
