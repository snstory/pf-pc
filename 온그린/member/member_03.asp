<%
pageNum = 7
subNum01 = 5
subNum02 = ""

dim pathArr(2,1)
pathArr(0,0) = "회원정보관리"
pathArr(0,1) = "/member/member_02.asp"
pathArr(1,0) = "회원탈퇴신청"
pathArr(1,1) = ""

titleImgSrc = "/images/member/s_title_05.gif"
titleImgMent = "회원탈퇴신청"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<form method="post" action="#">
	<fieldset>
		<legend>회원탈퇴신청 양식</legend>

		<h2 class="mem12"><img src="/images/member/pg_08.gif" alt="회원정보확인" /></h2>
		<div class="mem13">
			<strong class="set01">홍길동</strong>
			<strong class="set02">HONGGIL</strong>
			<strong class="set03">win@win.com</strong>
		</div>

		<h2 class="mem14"><img src="/images/member/pg_09.gif" alt="탈퇴신청" /></h2>
		<p class="mem15"><img src="/images/member/pg_09_2.gif" alt="탈퇴신청 확인을 위해 현재 사용중인 비밀번호를 입력해 주십시오." /></p>
		<div class="mem16">
			<input type="password" name="pw" id="pw" class="fi_df_c fi_11 pos1" />
			<input type="password" name="pw_re" id="pw_re" class="fi_df_c fi_11 pos2" />
		</div>

		<h2 class="mem17"><img src="/images/member/pg_09.gif" alt="탈퇴신청" /></h2>
		<ul class="mem17_ul">
			<li>제공된 입력내역을 입력하신 후 하단의 ‘탈퇴 완료’ 버튼을 클릭하시면 즉시 회원 탈퇴가 이루어 집니다.</li>
			<li>탈퇴 완료와 동시에 회원께서 제공하신 모든 개인 정보는 사이트 데이터베이스에서 자동으로 삭제됩니다.</li>
		</ul>

		<div class="mem18">
			<input type="image" src="/images/common/btns/req_out.gif" alt="탈퇴신청" />
			<a href="#"><img src="/images/common/btns/req_cancle.gif" alt="탈퇴취소" /></a>
			<a href="#"><img src="/images/common/btns/reset.gif" alt="다시입력" /></a>
		</div>
	</fieldset>
</form>

<!-- #include virtual = "/include/bottom.asp" -->
