<%
pageNum = 1
subNum01 = 2
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "연구소 소개"
pathArr(0,1) = "../intro/intro_01.asp"
pathArr(1,0) = "연구소 설립목적"
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

<div class="sb02">
	<div class="blind">

		<p>미래사회연구소는 미래사회에서 발생할 수 있는 제반 문제에 대해 예방적이고 문제해결적인 관점에서  적극적이고 신속하게 대처하기 하기 위한 연구 수행과 교육서비스 제공을 목적으로 하고 있습니다. 특히, 본 연구소는 점차 사회가 고령화 됨에 따라 이에 대한 전문적인 이론과 실천적 기술을 연구하여 미래사회 연구의 허브기능을 수행하도록 할 것입니다.또한 미래 사회 연구소는 다음과 같은 사업 목표로 미래사회연구에 기여할 것입니다.</p>

		<h2>미래사회 연구소 4대 사업 목표</h2>
		<ul>
			<li>세계적 수준의 미래사회자료조사 센터와 데이터 공유 시스템 구축과 운영</li>
			<li>국제적 학술교류를 통한 연구네트워크 구축</li>
			<li>미래사회 연구 아젠타 제시와 리더십 발휘</li>
			<li>연구성과의 사회적 활용과 기여</li>
		</ul>

		<h3>단계별 달성 목표</h3>
		<ul>
			<li>
				<h4>1단계 : 제도화기 (2009.07 ~ 2012.06)</h4>
				
				<h5>주요목표</h5>
				<p>연구인프라 구축 및 활용</p>

				<h5>세부내용</h5>
				<ul>
					<li>인적, 물적 기반구축과 활용방안 마련 후 연구인력의 적극 활용 유도</li>
					<li>연구네트워크 구축과 유지 및 활용</li>
					<li>연구소 핵심요소 강화 (←학술지의 한국연구재단 등재후보지 인증)</li>
				</ul>
			</li>
			<li>
				<h4>2단계 : 도약기 (2012.07 ~ 2015.06)</h4>
				<h5>주요목표</h5>
				<p>미래사회연구의 세계적 수준 진입</p>

				<h5>세부내용</h5>
				<ul>
					<li>연구 인력의 글로벌화와 해외기관과의 적극 교류</li>
					<li>국내 연구인력 풀 관리 및 공동 협력</li>
					<li>국내 미래사회 연구의 리더십 발휘</li>
					<li>국내, 국제등재학술지 인증</li>
				</ul>
			</li>
			<li>
				<h4>3단계 : 발전기 (2015.07 ~ )</h4>

				<h5>주요목표</h5>
				<p>세계적인 미래사회연구소로 도약</p>

				<h5>세부내용</h5>
				<ul>
					<li>미래사회 연구의 국제적 리더십 발휘</li>
					<li>학문성과의 국내외 활용과 기여</li>
				</ul>
			</li>
		</ul>

	</div>
</div>

<!-- #include file = "../include/bottom.asp" -->
