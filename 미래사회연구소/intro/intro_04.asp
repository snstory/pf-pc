<%
pageNum = 1
subNum01 = 4
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "연구소 소개"
pathArr(0,1) = "../intro/intro_01.asp"
pathArr(1,0) = "조직구성"
pathArr(1,1) = ""

'폴더 타이틀 img, alt
ttl_img = "../images/pgs/intro/title_01.gif"
ttl_ment = pathArr(0,0)

'페이지 타이틀 img, alt
s_ttl_img = "../images/pgs/intro/s_title_0"& subNum01 &".gif"
s_ttl_ment = pathArr(1,0)

'페이지 타이틀 하단 부가설명 img, alt
's_ttl_img_2 = "../images/pgs/intro/s_title_0"& subNum01 &"_ment.gif"
s_ttl_ment_2 = ""
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

<div class="sb04">
	<div class="blind">
		<h1>미래사회연구소장</h1>
		<ul>
			<li><h2>운영위원회</h2></li>
			<li><h2>편집위원회</h2></li>
			<li><h2>연구지원센터</h2></li>
			<li>
				<h2>전문연구실</h2>
				<ul>
					<li>고령사회연구실</li>
					<li>위기관리연구실</li>
					<li>통일문제연구실</li>
					<li>문화디자인연구실</li>
					<li>경제경영연구실</li>
					<li>유비쿼터스연구실</li>
					<li>e-노후생애연구실</li>
					<li>사이버교육연구실</li>
				</ul>
			</li>
			<li>
				<h2>사무국</h2>
				<ul>
					<li>사무국장</li>
					<li>간사</li>
				</ul>
			</li>
		</ul>
	</div>
</div>

<!-- #include file = "../include/bottom.asp" -->
