<%
pageNum = 4
subNum01 = 2
subNum02 = 1
%>

<!-- #include virtual = "/inc/top_01.asp" -->
<!-- #include virtual = "/inc/top_02.asp" -->

<div class="bbs-guide-1">

	<div class="bbs-head-1">
		<span></span>
		<p>안녕하세요! 블로거 김가 입니다!</p>
	</div><!-- //bbs_head_1 -->

	<div class="bbs-gallery">
		<div>
			<ul>
				<li>
					<h3><span><a href="mania_02_view.asp"><img src="/images/temp/ex_01.jpg" width="314" height="117" alt="" /></a></span></h3>
					<p><a href="mania_02_view.asp">미국식 이탈리안 레스토랑 <em>(2)</em></a></p>
				</li>
				<li>
					<h3><span><a href="mania_02_view.asp"><img src="/images/temp/ex_01.jpg" width="314" height="117" alt="" /></a></span></h3>
					<p><a href="mania_02_view.asp">미국식 이탈리안 레스토랑 <em>(2)</em></a></p>
				</li>
				<li>
					<h3><span><a href="mania_02_view.asp"><img src="/images/temp/ex_01.jpg" width="314" height="117" alt="" /></a></span></h3>
					<p><a href="mania_02_view.asp">미국식 이탈리안 레스토랑 <em>(2)</em></a></p>
				</li>
			</ul>
		</div>
	</div><!-- //bbs-gallery -->

	<div class="bbs-pazing add-border-1">
		
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

	<div class="bbs-search">
		<span class="lt"></span><span class="gt"></span>
		<span class="ltb"></span><span class="gtb"></span>

		<form method="post" action="#">
			<fieldset>
				<legend>검색양식</legend>

					<div>
						<label for="schGubun">검색종류 선택</label>
						<select name="schGubun" id="schGubun" class="menu">
							<option value="">선택</option>
							<option value="">음식점명</option>
						</select>

						<label for="schText">검색어 입력</label>
						<input type="text" name="schText" id="schText" class="txt" />

						<input type="image" src="/images/btns/search.gif" class="submit" />
					</div>
			</fieldset>
		</form>
	</div>

</div>

<!-- #include virtual = "/inc/btm.asp" -->
