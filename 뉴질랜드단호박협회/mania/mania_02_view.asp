<%
pageNum = 4
subNum01 = 2
subNum02 = 1
%>

<!-- #include virtual = "/inc/top_01.asp" -->
<!-- #include virtual = "/inc/top_02.asp" -->

<div class="bbs-guide-1">

	<!-- 내용영역 -->
	<div class="bbs-view-1">
		이 부분에 디자인된 후기가 노출 됩니다.
	</div>
	<!-- //내용영역 -->

	<!-- 버튼영역 -->
	<div class="bbs-btns-1">
		<a href="#"><img src="/images/btns/scrap.gif" alt="스크랩" /></a>
		<a href="#" onclick="window.history.back(); return false;"><img src="../images/btns/list.gif" alt="목록" /></a>
	</div>
	<!-- //버튼영역 -->

	<!-- 댓글쓰기 -->
	<div class="bbs-comment">
		<h1>한줄 댓글, 200자 이내로 작성하실 수 있습니다.</h1>

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
