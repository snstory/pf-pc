<%
pageNum = 6
subNum01 = 5
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "회원정보관리"
pathArr(0,1) = "../member/login.asp"
pathArr(1,0) = "회원탈퇴 신청"
pathArr(1,1) = ""

'폴더 타이틀 img, alt
ttl_img = "../images/pgs/member/title_01.gif"
ttl_ment = pathArr(0,0)

'페이지 타이틀 img, alt
s_ttl_img = "../images/pgs/member/s_title_0"& subNum01 &".gif"
s_ttl_ment = pathArr(1,0)

'페이지 타이틀 하단 부가설명 img, alt
s_ttl_img_2 = "../images/pgs/member/ment_06_1.gif"
s_ttl_ment_2 = "탈퇴신청 - 탈퇴신청 확인을 위해 현재 사용중인 비밀번호를 입력해 주십시오."
s_ttl_img_2_class = "cmn_06"
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

<div class="lgn_gde_2">

	<form method="post" action="">
		<fieldset>
			<legend>회원탈퇴 신청 양식</legend>

			<div class="lgn01 lgn01_ac">
				<span class="ltt"></span><span class="gtt"></span><span class="ltb"></span><span class="gtb"></span>

				<div class="lgn01_bg_4">

					<h3 class="blind">성명</h3>
					<span class="a">홍길동</span>

					<h3 class="blind">아이디</h3>
					<span class="b">honggildong</span>

					<h3 class="blind">전자메일주소</h3>
					<span class="c">gond@gnad.com</span>

					<p class="d">
						<label for="pw" class="blind">비밀번호입력</label>
						<input type="password" name="pw" id="pw" class="inp_def_2 inp_13">
					</p>
					<p class="e">
						<label for="pw_re" class="blind">비밀번호재입력</label>
						<input type="password" name="pw_re" id="pw_re" class="inp_def_2 inp_13">
					</p>
				</div>
			</div>

			<div class="cmn_07">
				<input type="image" src="../images/btns/out_req.gif" alt="탈퇴신청" />
				<a href="#"><img src="../images/btns/out_cancle.gif" alt="탈퇴취소" /></a>
				<a href="#"><img src="../images/btns/re.gif" alt="다시입력" /></a>
			</div>

		</fieldset>
	</form>

</div>

<!-- #include file = "../include/bottom.asp" -->
