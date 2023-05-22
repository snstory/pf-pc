<%
pageNum = 6
subNum01 = 3
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "회원정보관리"
pathArr(0,1) = "../member/login.asp"
pathArr(1,0) = "아이디 &amp; 비밀번호 조회"
pathArr(1,1) = ""

'폴더 타이틀 img, alt
ttl_img = "../images/pgs/member/title_01.gif"
ttl_ment = pathArr(0,0)

'페이지 타이틀 img, alt
s_ttl_img = "../images/pgs/member/s_title_0"& subNum01 &".gif"
s_ttl_ment = pathArr(1,0)

'페이지 타이틀 하단 부가설명 img, alt
s_ttl_img_2 = "../images/pgs/member/ment_05_1.gif"
s_ttl_ment_2 = "사용자 정보를 잊어버리셨나요? 아래 입력항목을 정확히 입력해 주십시오."
s_ttl_img_2_class = "cmn_06"
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

<div class="lgn_gde_2">

	<div class="lgn01 lgn01_bg_3">
		<span class="ltt"></span><span class="gtt"></span><span class="ltb"></span><span class="gtb"></span>

		<div class="idpw idpw_lt">
			<form method="post" action="#" accept-charset="euc-kr" id="id_search_form" name="id_search_form">
				<fieldset>
					<legend>아이디 검색양식</legend>

					<p class="a">
						<label for="name" class="blind">성명</label>
						<input type="text" name="name" id="name" class="inp_def_2 inp_11" />
					</p>
					<p class="b">
						<label for="secnum_1" class="blind">주민등록번호</label>
						<input type="text" name="secnum_1" id="secnum_1" class="inp_def_2 inp_12" />
						<span>-</span>
						<input type="password" name="secnum_2" id="secnum_2" class="inp_def_2 inp_12" />
					</p>
					<p class="c"></p>
					<p class="d">
						<a href="#"><img src="../images/btns/id_2.gif" alt="아이디 조회" /></a>
						<a href="#"><img src="../images/btns/cancle_2.gif" alt="취소" /></a>
					</p>

				</fieldset>
			</form>
		</div>

		<div class="idpw idpw_gt">
			<form method="post" action="#" accept-charset="euc-kr" id="pw_search_form" name="pw_search_form">
				<fieldset>
					<legend>아이디 검색양식</legend>

					<p class="a">
						<label for="name" class="blind">성명</label>
						<input type="text" name="name" id="name" class="inp_def_2 inp_11" />
					</p>
					<p class="b">
						<label for="name" class="blind">아이디</label>
						<input type="text" name="id" id="id" class="inp_def_2 inp_11" />
					</p>
					<p class="c">
						<label for="secnum_1" class="blind">주민등록번호</label>
						<input type="text" name="secnum_1" id="secnum_1" class="inp_def_2 inp_12" />
						<span>-</span>
						<input type="password" name="secnum_2" id="secnum_2" class="inp_def_2 inp_12" />
					</p>
					<p class="d">
						<a href="#"><img src="../images/btns/pw_2.gif" alt="비밀번호 조회" /></a>
						<a href="#"><img src="../images/btns/cancle_2.gif" alt="취소" /></a>
					</p>

				</fieldset>
			</form>
		</div>
	</div>

</div>

<!-- #include file = "../include/bottom.asp" -->
