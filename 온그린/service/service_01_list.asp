<%
pageNum = 5
subNum01 = 1
subNum02 = ""

dim pathArr(2,1)
pathArr(0,0) = "Service Hole"
pathArr(0,1) = "/service/service_01_list.asp"
pathArr(1,0) = "서비스 홀"
pathArr(1,1) = ""

titleImgSrc = "/images/service/s_title_01.gif"
titleImgMent = "서비스 홀"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<!-- 검색영역 -->
<div class="bbsSch bSh_op01">
	<form method="post" action="">
		<fieldset>
			<legend>검색 양식</legend>
			<select name="sel" id="sel" class="fs_01">
				<option>선택하세요</option>
				<option>제목</option>
				<option>내용</option>
			</select>

			<input type="text" name="schword" id="schword" class="fi_df_b fi_03" />
			<input type="image" src="/images/common/btns/search.gif" />
		</fieldset>
	</form>
</div>
<!-- //검색영역 -->


<div class="tk01">
	<div class="tk01_wp">
		<ul class="tk01_ul">
			<li>
				<div class="wp">
					<div class="pic"><a href="#"><img src="../images/common/test_img/ucc_s_01.jpg" width="140" height="103" alt="" /></a></div>
					<h3 class="title"><a href="#"><strong>[New]</strong> 퍼팅 동영상</a></h3>
					<p class="hit">HIT : 2162</p>
					<p class="wtr">작성자 : 김석민</p>
				</div>
			</li>
			<li>
				<div class="wp">
					<div class="pic"><a href="#"><img src="../images/common/test_img/ucc_s_02.jpg" width="140" height="103" alt="" /></a></div>
					<h3 class="title"><a href="#"><strong class="best">[Best]</strong> 퍼팅 동영상</a></h3>
					<p class="hit">HIT : 2162</p>
					<p class="wtr">작성자 : 김석민</p>
				</div>
			</li>
			<li>
				<div class="wp">
					<div class="pic"><a href="#"><img src="../images/common/test_img/ucc_s_01.jpg" width="140" height="103" alt="" /></a></div>
					<h3 class="title"><a href="#"><strong>[New]</strong> 퍼팅 동영상</a></h3>
					<p class="hit">HIT : 2162</p>
					<p class="wtr">작성자 : 김석민</p>
				</div>
			</li>
			<li>
				<div class="wp">
					<div class="pic"><a href="#"><img src="../images/common/test_img/ucc_s_02.jpg" width="140" height="103" alt="" /></a></div>
					<h3 class="title"><a href="#"><strong class="best">[Best]</strong> 퍼팅 동영상</a></h3>
					<p class="hit">HIT : 2162</p>
					<p class="wtr">작성자 : 김석민</p>
				</div>
			</li>

			<li>
				<div class="wp">
					<div class="pic"><a href="#"><img src="../images/common/test_img/ucc_s_01.jpg" width="140" height="103" alt="" /></a></div>
					<h3 class="title"><a href="#"><strong>[New]</strong> 퍼팅 동영상</a></h3>
					<p class="hit">HIT : 2162</p>
					<p class="wtr">작성자 : 김석민</p>
				</div>
			</li>
			<li>
				<div class="wp">
					<div class="pic"><a href="#"><img src="../images/common/test_img/ucc_s_02.jpg" width="140" height="103" alt="" /></a></div>
					<h3 class="title"><a href="#"><strong class="best">[Best]</strong> 퍼팅 동영상</a></h3>
					<p class="hit">HIT : 2162</p>
					<p class="wtr">작성자 : 김석민</p>
				</div>
			</li>
		</ul>
	</div>

	<!-- 자료가 없을 경우 -->
	<!-- <p class="tk01_nodata">자료가 없습니다.</p> -->
</div>

<!-- 페이징 -->
<div class="bbsPaz bbsPaz_pd02">
	<a href="#"><img src="/images/common/btns/prev_LL.gif" alt="이전 10개보기" /></a>
	<a href="#"><img src="/images/common/btns/prev_L.gif" alt="이전보기" /></a>

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

	<a href="#"><img src="/images/common/btns/next_L.gif" alt="다음보기" /></a>
	<a href="#"><img src="/images/common/btns/next_LL.gif" alt="다음 10개보기" /></a>

	<!-- 버튼영역 (페이징 영역용) -->
	<div class="bbsBtns_02">
		<a href="service_01_write.asp"><img src="/images/common/btns/write.gif" alt="글쓰기" /></a>
	</div>
	<!-- //버튼영역 (페이징 영역용) -->
</div>
<!-- //페이징 -->

<!-- #include virtual = "/include/bottom.asp" -->
