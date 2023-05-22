<%
pageNum = 4
subNum01 = 1
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "자료실"
pathArr(0,1) = "../data/data_01.asp"
pathArr(1,0) = "문서자료"
pathArr(1,1) = ""

'폴더 타이틀 img, alt
ttl_img = "../images/pgs/data/title_01.gif"
ttl_ment = pathArr(0,0)

'페이지 타이틀 img, alt
s_ttl_img = "../images/pgs/data/s_title_0"& subNum01 &".gif"
s_ttl_ment = pathArr(1,0)

'페이지 타이틀 하단 부가설명 img, alt
s_ttl_img_2 = "../images/pgs/data/s_title_0"& subNum01 &"_ment.gif"
s_ttl_ment_2 = "미래사회연구소의 문서자료를 다운받으실 수 있습니다."
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

<div class="bs_01">
	<span class="blt"></span><span class="bgt"></span>

	<ul class="vw_info_list">
		<li class="nobdr">
			<dl class="vw_info">
				<dt><strong><img src="../images/txt/ttl.gif" alt="제목" /></strong></dt>
				<dd class="t cmn_02">[망작업] 2010.07.12 새벽 2:00-4:00 망작업으로 인한 서비스 제한</dd>
			</dl>
		</li>
		<li>
			<dl class="vw_info">
				<dt><strong><img src="../images/txt/date_b.gif" alt="작성일" /></strong></dt>
				<dd class="cmn_02">2010.06.20</dd>

				<dt><strong><img src="../images/txt/count_b.gif" alt="조회" /></strong></dt>
				<dd class="cmn_02">250</dd>
			</dl>
		</li>
		<li>
			<dl class="vw_info">
				<dt><strong><img src="../images/txt/file_b.gif" alt="첨부파일" /></strong></dt>
				<dd class="f cmn_02"><a href="#">미래사회.doc</a></dd>
			</dl>
		</li>
	</ul>

	<!-- vw_info_content -->
	<div class="vw_info_content">

		<!-- 에디터로 등록 되므로 정해진 스타일을 정의할 수 없습니다. 아래는 등록예 입니다. -->
		<p style="line-height:220%;padding:0 20px;">지식정보사회로의 진화는 개인과 국가 그리고 세계적 차원의 관계를 근본적으로 변화시키고 있습니다. 이러한 변화의 핵심을 통찰하면서 지식정보 사회의 비전 수립과 우리 사회의 지식역량을 제고 하는 일에 적으나마 기여하고자 합니다. 서울사이버대학교 미래문제연구소는 미래 비전과 전략의 체계적 수립을 위한 근원적인 계기를 마련하고 거시적 차원과 미시적 차원을 아울러 새로운 지식의 확산과 공유체계를 확대재생산하고자 합니다.</p>

	</div>
	<!-- //vw_info_content -->
</div>

<!-- 버튼영역 -->
<div class="cmn_01">
	<a href="data_01.asp"><img src="../images/btns/list.gif" alt="목록" /></a>
</div>
<!-- //버튼영역 -->

<!-- 이전글, 다음글 영역 -->
<div class="ltgt_gde cmn_03">
	<ul class="ltgt_list">
		<li>
			<h3 class="t"><img src="../images/txt/prev.gif" alt="이전글" /></h3>
			<p>
				<a href="#">이전글 입니다.</a>
				글이 없습니다.
			</p>
		</li>
		<li>
			<h3 class="t"><img src="../images/txt/next.gif" alt="다음글" /></h3>
			<p>
				<a href="#">다음글 입니다.</a>
				글이 없습니다.
			</p>
		</li>
	</ul>
</div>
<!-- //이전글, 다음글 영역 -->

<!-- 댓글쓰기 영역 -->
<div class="reply_gde cmn_04">
	<form method="post" action="#" accept-charset="euc-kr" name="reply_add_form" id="reply_add_form">
		<fieldset>
			<legend>댓글 남기기 양식</legend>

			<textarea name="reply_text" id="reply_text" rows="3" cols="50" class="txe"></textarea>
			<input type="image" src="../images/btns/reply.gif" alt="댓글입력" class="btn" />
		</fieldset>
	</form>
</div>
<!-- //댓글쓰기 영역 -->

<!-- 댓글영역 -->
<div class="reply_list_gde">

	<!-- 댓글목록 영역 -->
	<div>
		<ul class="reply_list">
			<li>
				<strong>홍길동</strong>
				<p>좋은자료 감사합니다.</p>
				<em>2010.07.05 17:30</em>
			</li>
			<li>
				<strong>홍길동</strong>
				<p>좋은자료 감사합니다.</p>
				<em>2010.07.05 17:30</em>
			</li>
		</ul>
	</div>
	<!-- //댓글목록 영역 -->

	<!-- pazing -->
	<div class="pazing">
		<div>
			<a href="#"><img src="../images/btns/paz_lt_b.gif" alt="이전페이지" /></a>

			<span>
				<strong>1</strong>
				<a href="#">2</a>
				<a href="#">3</a>
				<a href="#">4</a>
				<a href="#">5</a>
				<a href="#">6</a>
				<a href="#">7</a>
				<a href="#">8</a>
				<a href="#">9</a>
				<a href="#">10</a>
			</span>

			<a href="#"><img src="../images/btns/paz_gt_b.gif" alt="다음페이지" /></a>
		</div>
	</div>
	<!-- //pazing -->

</div>
<!-- //댓글영역 -->

<!-- #include file = "../include/bottom.asp" -->
