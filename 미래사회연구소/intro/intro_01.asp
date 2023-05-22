<%
pageNum = 1
subNum01 = 1
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "연구소 소개"
pathArr(0,1) = "../intro/intro_01.asp"
pathArr(1,0) = "연구소장 인사말"
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

<div class="sb01">
	<div class="blind">
		<h1>미래 사회의 제반 문제에 대한 준비, 미래사회 연구의 허브기능을 수행하는 미래사회연구소</h1>
		<h2>Institute for the Future of Society, IFSO</h2>

		<p>지식정보사회로의 진화는 개인과 국가 그리고 세계적 차원의 관계를 근본적으로 변화시키고 있습니다. 이러한 변화의 핵심을 통찰하면서 지식정보 사회의 비전 수립과 우리 사회의 지식역량을 제고 하는 일에 적으나마 기여하고자 합니다.</p>

		<p>서울사이버대학교 미래문제연구소는 미래 비전과 전략의 체계적 수립을 위한 근원적인 계기를 마련하고 거시적 차원과 미시적 차원을 아울러 새로운 지식의 확산과 공유체계를 확대재생산하고자 합니다.</p>

		<p>또한 본 연구소는 아래와 같은 운영원칙으로 운영되고 있습니다.</p>

		<h2>미래사회 연구소 4대 운영원칙</h2>
		
		<h3>자율성과 창의성 발휘 여건 조성</h3>
		<p>연구 인력이 최선의 연구 성과를 거둘 수 있도록 연구 인력의 자율성과 창의성 발휘 여건을 최대한 보장</p>

		<h3>지속가능성과 성장가능성 제고</h3>
		<p>연구 성과에 대한 공정한 평가와 투명한 공개를 통해 연구소 운영에 대한 신뢰도를 제고하여 연구 동기 강화</p>

		<h3>지속가능성과 성장가능성 제고</h3>
		<p>연구 인력과 연구소의 장기적 성장에 진력</p>

		<h3>사회기여와 학문발전지향</h3>
		<p>연구 성과의 사회 환원과 학문적 기여</p>

		<p>이상과 같이 미래사회 연구소는 미래전과 전략의 체계적 수립과 새로운 지식의 확산을 위해 노력할 것입니다.</p>

		<h2>미래사회연구소</h2>
		<p><strong>채정민 소장</strong></p>
	</div>
</div>

<!-- #include file = "../include/bottom.asp" -->
