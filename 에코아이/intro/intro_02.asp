<%
pageNum = 1
subNum01 = 2
subNum02 = 1

%><!-- #include virtual = "/inc/top_01.asp" -->
<script type="text/javascript">
//<![CDATA[
$( function() {
	ecoi.intro02Proc.init( {
		btns: $( 'div.intro-02 > ul.anchors a' ).toArray(),
		btnSrc: '/images/btns/gotop.gif'
	} );
	$( 'div.intro-02 > ul.anchors img' ).imgHovers();
} );
//]]>
</script>
<!-- #include virtual = "/inc/top_02.asp" -->

<div class="intro-02">

	<ul class="anchors">
		<li><a href="#tg01"><img src="/images/pgs/intro/tab_02_01.gif" alt="산업군별 가이드라인" /></a></li>
		<li><a href="#tg02"><img src="/images/pgs/intro/tab_02_02.gif" alt="산업군별 평가도구" /></a></li>
		<li><a href="#tg03"><img src="/images/pgs/intro/tab_02_03.gif" alt="산업군별 프로세스" /></a></li>
		<li><a href="#tg04"><img src="/images/pgs/intro/tab_02_04.gif" alt="제품ㆍ소재ㆍ기법 DB" /></a></li>
		<li><a href="#tg05"><img src="/images/pgs/intro/tab_02_05.gif" alt="그린마케팅 전략" /></a></li>
	</ul>

	<div class="target-01">
		<h1 id="tg01">산업군별 가이드라인</h1>
		<ul>
			<li>산업군 공통 지속가능제품개발 전략을 바탕으로 산업군별 특성을 반영하여 각각의 가이드라인 개발</li>
			<li>실무자의 이해를 돕고 실제 제품개발 단계에서 효과적으로 적용할 수 있도록 내용 구성</li>
		</ul>
	</div><!-- //target-01 -->

	<div class="target-02">
		<h1 id="tg02">산업군별 평가도구</h1>
		<ul>
			<li>산업군별 규제 및 이슈에 따라 가이드라인 항목에서 평가항목 추출</li>
			<li>평가항목별 평가방법을 제시하고 항목별 담당부서 명시</li>
			<li>평가시트는 다운받아 기업별 내부현황에 맞게 항목 및 기준을 보완, 적용하여 활용</li>
		</ul>
	</div><!-- //target-02 -->

	<div class="target-03">
		<h1 id="tg03">산업군별 프로세스</h1>
		<ul>
			<li>산업군별 특성이 반영된 범용 제품개발 프로세스를 바탕으로 개발된 지속가능제품개발 프로세스 제공</li>
			<li>제품개발 단계별로 가이드라인, 평가도구를 활용하는 시점, 담당부서, 부서 간 협조 내용 등을 명시</li>
			<li>본 프로세스를 활용하여 자사 특성에 맞는 지속가능제품개발 프로세스를 개발하고 실제 제품개발 시 활용</li>
		</ul>
	</div><!-- //target-03 -->

	<div class="target-04">
		<h1 id="tg04">제품ㆍ소재ㆍ기법 DB</h1>
		<ul>
			<li>산업군별 실제 제품의 지속가능성을 분석하여 지속가능제품에 대한 이해를 돕고 아이디어 도출에 도움</li>
			<li>지속가능성을 향상시킬 수 있는 소재 및 기법을 발굴하고 특성, 적용제품, 보유기업 정보까지 포함하여 실제 중소기업 실무자가 관련 정보를 쉽고 빠르게 얻을 수 있도록 제공</li>
		</ul>
	</div><!-- //target-04 -->

	<div class="target-05">
		<h1 id="tg05">그린마케팅 전략</h1>
		<ul>
			<li>제품개발에서 끝나는 것이 아니라 시장에서 성공할 수 있는 그린마케팅 주요 전략 및 사례 제공</li>
			<li>국내외 주요 그린마케팅 이슈 소개 _ 브랜드 개발 및 관련 인증</li>
		</ul>
	</div><!-- //target-05 -->

</div>

<!-- #include virtual = "/inc/btm.asp" -->