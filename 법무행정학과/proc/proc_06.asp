<%
pageNo = 2
sub_01 = 6
sub_02 = 1
%>

<!-- #include file="../inc/top_01.asp" -->
<!-- #include file="../inc/top_02.asp" -->

<div class="dst_13" id="prevMovElem">
	<ul>
		<li class="set">
			<div class="list">

				<h3 class="blind">사진</h3><!-- 사이즈: width="110" height="100" -->
				<div class="imgbox"><table><tr><td><img src="../images/pgs/proc/tcher/sylee.jpg" alt="이선엽 교수" /></td></tr></table></div>

				<ul>
					<li><span>교과목명</span>: <b>경찰학개론</b></li>
					<li><span>담당교수</span>: <b>이선엽</b></li>

					<li class="normal"><a href="http://stream.iscu.ac.kr/stream/sample/2009/SD0404/5/SD0404_5_1.asp"><img src="../images/btns/lecture.gif" alt="강의보기" /></a></li>
				</ul>
			</div>
		</li>

		<li class="set">
			<div class="list">

				<h3 class="blind">사진</h3><!-- 사이즈: width="110" height="100" -->
				<div class="imgbox"><table><tr><td></td></tr></table></div>

				<ul>
					<li><span>교과목명</span>: <b>어음수표법</b></li>
					<li><span>담당교수</span>: <b>나승성</b></li>

					<li class="normal"><a href="#"><img src="../images/btns/lecture.gif" alt="강의보기" /></a></li>
				</ul>
			</div>
		</li>

		<li class="set">
			<div class="list">

				<h3 class="blind">사진</h3><!-- 사이즈: width="110" height="100" -->
				<div class="imgbox"><table><tr><td><img src="../images/pgs/proc/tcher/sjkim.jpg" alt="김선정 교수" /></td></tr></table></div>

				<ul>
					<li><span>교과목명</span>: <b>정책학의 이해</b></li>
					<li><span>담당교수</span>: <b>김선정</b></li>

					<li class="normal"><a href="http://stream.iscu.ac.kr/stream/sample/2009/SD0201/5/SD0201_5_1.asp"><img src="../images/btns/lecture.gif" alt="강의보기" /></a></li>
				</ul>
			</div>
		</li>

		<li class="set">
			<div class="list">

				<h3 class="blind">사진</h3><!-- 사이즈: width="110" height="100" -->
				<div class="imgbox"><table><tr><td></td></tr></table></div>

				<ul>
					<li><span>교과목명</span>: <b>형사증거론</b></li>
					<li><span>담당교수</span>: <b>권오덕, Bert Wyatt</b></li>

					<li class="normal"><a href="http://stream.iscu.ac.kr/stream/sample/2009/SD0407/5/SD0407_5_1.asp"><img src="../images/btns/lecture.gif" alt="강의보기" /></a></li>
				</ul>
			</div>
		</li>

		<li class="set">
			<div class="list">

				<h3 class="blind">사진</h3><!-- 사이즈: width="110" height="100" -->
				<div class="imgbox"><table><tr><td><img src="../images/pgs/proc/tcher/ytkim.jpg" alt="김용태 교수" /></td></tr></table></div>

				<ul>
					<li><span>교과목명</span>: <b>헌법</b></li>
					<li><span>담당교수</span>: <b>김용태</b></li>

					<li class="normal"><a href="http://stream.iscu.ac.kr/stream/sample/2009/SD0103/5/SD0103_5_1.asp"><img src="../images/btns/lecture.gif" alt="강의보기" /></a></li>
				</ul>
			</div>
		</li>
	</ul>
</div>

<!-- #include file="../inc/bottom_01.asp" -->
<script type="text/javascript">
//<![CDATA[
$( '#prevMovElem a:has(img[src*="lecture.gif"])' ).each( function() {
	$( this ).click( function() {
		var href = $( this ).attr( 'href' );
		if( href == '#' ){
			alert( '준비중입니다.' );
			return false;
		}
		popupAbsMiddle( {
			url: href,
			width: 950,
			height: 700
		} );

		return false;
	} );
} );
//]]>
</script>
<!-- #include file="../inc/bottom_02.asp" -->
