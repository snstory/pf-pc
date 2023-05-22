<%
pageNum = 4
subNum01 = 1
subNum02 = 1
%>

<!-- #include virtual = "/inc/top_01.asp" -->
<!-- #include virtual = "/inc/top_02.asp" -->

<div class="bbs-guide-1">

	<!-- 관리자 한줄토크 질문 -->
	<div class="talk-question">
		<h2>한줄토크 질문</h2>
		<span class="t"></span>
		<div>
			<p>
				Q.다이어트를 위한 단호박, 어떤 요리로 만들어 드시나요?<br />
				Q.다이어트를 위한 단호박, 어떤 요리로 만들어 드시나요?<br />
				다이어트 요리 요리
			</p>
		</div>
		<span class="b"></span>
	</div>
	<!-- //관리자 한줄토크 질문 -->

	<!-- 댓글쓰기 -->
	<div class="bbs-comment">
		<h1 class="talk">한줄 토크, 500자 이내로 작성하실 수 있습니다.</h1>

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

	<!-- 댓글목록 ( 디자인 상 페이지당 목록수 : 10 ) -->
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

	<div class="bbs-pazing">
		
		<a href="#" class="prev-wf"><img src="/images/btns/prev_wf.gif" alt="이전 10 개보기" /></a>
		<a href="#" class="prev"><img src="/images/btns/prev.gif" alt="이전" /></a>

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

		<a href="#" class="next"><img src="/images/btns/next.gif" alt="다음" /></a>
		<a href="#" class="next-wf"><img src="/images/btns/next_wf.gif" alt="다음 10 개보기" /></a>

	</div><!-- //bbs-pazing -->

</div>

<!-- #include virtual = "/inc/btm.asp" -->
