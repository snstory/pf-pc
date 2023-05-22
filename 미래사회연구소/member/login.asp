<%
pageNum = 6
subNum01 = 1
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "회원정보관리"
pathArr(0,1) = "../member/login.asp"
pathArr(1,0) = "로그인"
pathArr(1,1) = ""

'폴더 타이틀 img, alt
ttl_img = "../images/pgs/member/title_01.gif"
ttl_ment = pathArr(0,0)

'페이지 타이틀 img, alt
s_ttl_img = "../images/pgs/member/s_title_0"& subNum01 &".gif"
s_ttl_ment = pathArr(1,0)

'페이지 타이틀 하단 부가설명 img, alt
's_ttl_img_2 = "../images/pgs/member/s_title_0"& subNum01 &"_ment.gif"
s_ttl_ment_2 = ""
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

<div class="lgn_gde">

	<div class="lgn01 lgn01_bg_1">
		<span class="ltt"></span><span class="gtt"></span><span class="ltb"></span><span class="gtb"></span>

		<div class="blind">
			<h1>미래사회연구소 홈페이지에 오신 것을 환영합니다.</h1>
			<p>미래사회연구소의 홈페이지의 다양한 서비스를 이용하기 위해서는  회원 로그인이 필요합니다.</p>
		</div>

		<form method="post" action="/example/use_check_exam.asp" accept-charset="euc-kr" name="FRLogin_form" id="FRLogin_form">

			<fieldset>
				<legend>로그인 양식</legend>

				<div class="lgn01_1">
					<p>
						<label for="id" class="blind">아이디</label>
						<input type="text" name="id" id="id" class="inp_def_2 lgn01_2" />
					</p>

					<p>
						<label for="pw" class="blind">비밀번호</label>
						<input type="password" name="pw" id="pw" class="inp_def_2 lgn01_3" />
					</p>

					<p>
						<input type="image" src="../images/btns/login.gif" class="lgn01_4" />
					</p>
				</div>
			</fieldset>

		</form>
	</div>

	<div class="lgn02">
		<h2 class="blind">아직 회원이 아니신 분께서는 지금 회원가입을 해주시기 바랍니다.</h2>
		<p><a href="../member/join_01.asp" class="btn01"><img src="../images/btns/join.gif" alt="회원가입" /></a></p>

		<h2 class="blind">아이디, 또는 비밀번호를 분실한 분께서는 아래 아이디 조회 혹은 비밀번호 조회 버튼을 클릭해 주시기 바랍니다.</h2>
		<ul>
			<li><a href="../member/idpw.asp" class="btn02"><img src="../images/btns/id.gif" alt="아이디 조회" /></a></li>
			<li><a href="../member/idpw.asp" class="btn03"><img src="../images/btns/pw.gif" alt="비밀번호 조회" /></a></li>
		</ul>
	</div>

</div>

<!-- #include file = "../include/bottom.asp" -->
