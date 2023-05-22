<%
pageNum = 4
subNum01 = 3
subNum02 = 1
%>

<!-- #include virtual = "/inc/top_01.asp" -->
<!-- #include virtual = "/inc/top_02.asp" -->

<div class="bbs-guide-1">

	<div class="bbs-head-2">
		<span class="t"></span>

		<h1>
			<span>제목이 노출됩니다.</span>
			<em class="lt"></em><em class="gt"></em><em class="ltb"></em><em class="gtb"></em>
		</h1>

		<dl>
			<dt class="a">일시</dt>
			<dd class="a">11월 1일 오후 2시</dd>

			<dt class="b">강사</dt>
			<dd class="b">000 님</dd>

			<dt class="c">장소</dt>
			<dd class="c">
				<span>본사</span>
				<a href="#" class="rmap"><img src="/images/btns/rmap.gif" alt="약도보기" /></a>
			</dd>
		</dl>

		<span class="b"></span>
	</div>

	<!-- 내용영역 -->
	<div class="bbs-view-1 except-border-1">
		이 부분에 디자인된 후기가 노출 됩니다.
	</div>
	<!-- //내용영역 -->

	<!-- 버튼영역 -->
	<div class="bbs-btns-1">
		<a href="#" onclick="window.history.back(); return false;"><img src="../images/btns/list.gif" alt="목록" /></a>
	</div>
	<!-- //버튼영역 -->

	<!-- 댓글쓰기 -->
	<div class="bbs-comment">
		<h1 class="req">신청하기, 500자 이내로 작성하실 수 있습니다.</h1>

		<form method="post" action="#">
			<fieldset>
				<legend>댓글쓰기 양식</legend>

				<label for="commentText" class="blind">댓글쓰기</label>
				<textarea name="commentText" id="commentText" rows="3" cols="55">로그인 후에 작성하실 수 있습니다.</textarea>
				<input type="image" src="/images/btns/check.gif" />
			</fieldset>
		</form>
	</div>
	<!-- //댓글쓰기 -->

	<!-- 댓글목록 -->
	<div class="bbs-comment-list">
		<ul>
			<li>
				<h4>홍길동</h4>
				<p>등록된 한 줄 덧글 내용이 노출됩니다.등록된 한 줄 덧글 내용이 노출됩니다. 등록된 한 줄 덧글 내용이 노출됩니다.등록된 한 줄 덧글 내용이 노출됩니다. 등록된 한 줄 덧글 내용이 노출됩니다.등록된 한 줄 덧글 내용이 노출됩니다. (2010.11.05  12:05)</p>
				<a href="#" title="댓글삭제하기">삭제</a>
			</li>
			<li>
				<h4>홍길동</h4>
				<p>등록된 한 줄 덧글 내용이 노출됩니다.등록된 한 줄 덧글 내용이 노출됩니다. (2010.11.05  12:05)</p>
				<a href="#" title="댓글삭제하기">삭제</a>
			</li>
		</ul>
	</div>
	<!-- //댓글목록 -->

</div>

<!-- #include virtual = "/inc/btm.asp" -->
