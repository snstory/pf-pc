<%
pageNum = 6
subNum01 = 2
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "회원정보관리"
pathArr(0,1) = "../member/login.asp"
pathArr(1,0) = "회원가입"
pathArr(1,1) = ""

'폴더 타이틀 img, alt
ttl_img = "../images/pgs/member/title_01.gif"
ttl_ment = pathArr(0,0)

'페이지 타이틀 img, alt
s_ttl_img = "../images/pgs/member/s_title_0"& subNum01 &".gif"
s_ttl_ment = pathArr(1,0)

'페이지 타이틀 하단 부가설명 img, alt
s_ttl_img_2 = "../images/pgs/member/ment_03_1.gif"
s_ttl_ment_2 = "미래사회연구소의 홈페이지 회원가입을 환영합니다. 회원가입하시기전 먼저 이용약관 및 개인정보보호정책에 동의하셔야 합니다."
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

<h2 class="jn01"><img src="../images/txt/mt_01.gif" alt="개인정보 취급방침" /></h2>
<div class="jn02">
	<span class="jn_t"></span>

	<div class="jn02_1">
		<div class="jn02_2">

			<div class="jn02_scro">
<!-- 텍스트 영역 -->

컨텐츠 준비중입니다.

<!-- //텍스트 영역 -->
			</div>

		</div>

		<div class="jn02_chkbx">
			<input type="checkbox" name="jn_checked_01" id="jn_checked_01" title="개인정보 보호정책" />
			<label for="jn_checked_01">개인정보 보호정책에 동의합니다.</label>
		</div>
	</div>

	<span class="jn_b"></span>
</div>

<h2 class="jn03"><img src="../images/txt/mt_02.gif" alt="미래사회연구소 홈페이지 이용약관" /></h2>
<div class="jn02">
	<span class="jn_t"></span>

	<div class="jn02_1">
		<div class="jn02_2">

			<div class="jn02_scro">
<!-- 텍스트 영역 -->

컨텐츠 준비중입니다.

<!-- //텍스트 영역 -->
			</div>

		</div>

		<div class="jn02_chkbx">
			<input type="checkbox" name="jn_checked_02" id="jn_checked_02" title="이용약관" />
			<label for="jn_checked_02">이용약관에 동의합니다.</label>
		</div>
	</div>

	<span class="jn_b"></span>
</div>

<p class="jn04">
	<a href="join_01_3.asp" id="agree_check_btn"><img src="../images/btns/agree.gif" alt="동의합니다" /></a>
	<a href="../"><img src="../images/btns/agree_no.gif" alt="동의하지 않습니다" /></a>
</p>

<!-- #include file = "../include/bottom.asp" -->
