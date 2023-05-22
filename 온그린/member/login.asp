<%
pageNum = 7
subNum01 = 1
subNum02 = ""

dim pathArr(2,1)
pathArr(0,0) = "회원정보관리"
pathArr(0,1) = "/member/member_02.asp"
pathArr(1,0) = "로그인"
pathArr(1,1) = ""

titleImgSrc = "/images/member/s_title_01.gif"
titleImgMent = "로그인"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->
<div class="mem01">
	<h1 class="blind">로그인</h1>
	<p class="blind">온그린에 오신 것을 환영합니다.</p>

	<h2 class="blind">온그린의 다양한 서비스를 이용하기 위해서는 회원 로그인이 필요합니다.</h2>
	<form method="post" action="#">
		<fieldset>
			<legend>로그인 양식</legend>

			<input type="text" name="id" id="id" alt="아이디" class="mem01_01 fi_df_c fi_03" />
			<input type="password" name="id" id="id" alt="비밀번호" class="mem01_02 fi_df_c fi_03" />
			<input type="image" src="/images/common/btns/login.gif" alt="확인" class="mem01_03" />
		</fieldset>
	</form>

	<h3 class="blind">아직 회원이 아니신 분께서는 지금 회원가입을 해주시기 바랍니다.</h3>
	<p class="mem01_04"><a href="/member/join_01.asp"><img src="/images/common/btns/gojoin.gif" alt="온그린 회원가입" /></a></p>

	<h3 class="blind">아이디, 또는 비밀번호를 분실한 분께서는 아래 [아이디/비밀번호 조회하기] 버튼을 클릭해 주시기 바랍니다.</h3>
	<p class="mem01_05"><a href="/member/member_01.asp"><img src="/images/common/btns/gofind.gif" alt="아이디 · 비밀번호 조회하기" /></a></p>
</div>
<!-- #include virtual = "/include/bottom.asp" -->
