<%
pageNum = 7
subNum01 = 3
subNum02 = ""

dim pathArr(2,1)
pathArr(0,0) = "회원정보관리"
pathArr(0,1) = "/member/member_02.asp"
pathArr(1,0) = "아이디 &amp; 비밀번호 찾기"
pathArr(1,1) = ""

titleImgSrc = "/images/member/s_title_03.gif"
titleImgMent = "아이디 &amp; 비밀번호 찾기"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<div class="mem08">
	<div class="blind">
		<h1>아이디 &amp; 비밀번호 조회</h1>
		<p>사용자 정보를 잊어버리셨나요? 아래 입력항목을 정확히 입력해 주십시오</p>
	</div>
</div>

<div class="mem09">
	<div class="mem09_01">
		<form method="post" action="#">
			<fieldset>
				<legend>아이디 조회양식</legend>

				<h2><img src="/images/common/txt/idSearch.gif" alt="아이디 조회" /></h2>

				<div class="cont adt">
					<p><img src="/images/common/txt/name_3.gif" alt="이름" /><input type="text" name="name" id="name" class="fi_df_c fi_09" /></p>
					<p>
						<img src="/images/common/txt/zipcode_2.gif" alt="주민등록번호" />
						<input type="text" name="zip_01" id="zip_01" class="fi_df_c fi_10" />
						-
						<input type="text" name="zip_02" id="zip_02" class="fi_df_c fi_10" />
					</p>
				</div>
				
				<input type="image" src="/images/common/btns/idSearch.gif" alt="아이디 조회" class="b" />
			</fieldset>
		</form>
	</div>

	<div class="mem09_01 mem09_01_r">
		<form method="post" action="#">
			<fieldset>
				<legend>비밀번호 조회양식</legend>
				<h2><img src="/images/common/txt/pwSearch.gif" alt="비밀번호 조회" /></h2>

				<div class="cont">
					<p><img src="/images/common/txt/id_2.gif" alt="아이디" /><input type="text" name="name" id="name" class="fi_df_c fi_09" /></p>
					<p><img src="/images/common/txt/name_3.gif" alt="이름" /><input type="text" name="name" id="name" class="fi_df_c fi_09" /></p>
					<p>
						<img src="/images/common/txt/zipcode_2.gif" alt="주민등록번호" />
						<input type="text" name="zip_01" id="zip_01" class="fi_df_c fi_10" />
						-
						<input type="text" name="zip_02" id="zip_02" class="fi_df_c fi_10" />
					</p>
				</div>
				
				<input type="image" src="/images/common/btns/pwSearch.gif" alt="비밀번호 조회" class="b" />
			</fieldset>
		</form>
	</div>
</div>

<!-- #include virtual = "/include/bottom.asp" -->
