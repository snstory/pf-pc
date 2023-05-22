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
s_ttl_img_2 = "../images/pgs/member/ment_02_1.gif"
s_ttl_ment_2 = ""
s_ttl_img_2_class = "cmn_06"
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

<div class="blind">
	<h1 class="blind">실명확인</h1>
	<p class="blind">미래사회연구소는 실명확인을 통해 본인확인을 하고 있습니다. 입력하신 정보는 본인확인용으로만 사용되며, 회원님의 명백한 동의 없이 공개 또는 제 3자에게 제공되지 않습니다.</p>
</div>

<div class="lgn_gde">
	
	<div class="lgn01 lgn01_bg_2">
		<span class="ltt"></span><span class="gtt"></span><span class="ltb"></span><span class="gtb"></span>

		<div class="blind">
			<h2>알림</h2>
			<ul>
				<li>귀하의 주민등록번호는 지식경제부로부터 허가 받은 신용정보회사의 한국신용평가정보를 통해 실명과 일치 여부 확인에만 사용합니다.</li>
				<li>2006년 9월 24일 부터 개정된 주민등록법에 의해 타인의 주민번호를 도용하여 온라인 회원가입을 하는 등 다른 사람의 주민등록번호를 부정사용자는 3년 이하의 징역 또는 1천만원 이하의 벌금이 부과될 수 있습니다.</li>
				<li>귀하가 입력하신 정보는 128bit ssl암호화 방식을 통해 채널/데이터암호화방식으로 안전하게 송수신 됩니다.</li>
			</ul>
		</div>

		<form method="post" action="/example/use_check_exam.asp" accept-charset="euc-kr" name="FRNameChk_form" id="FRNameChk_form">
			<fieldset>
				<legend>실명확인 폼</legend>

				<div class="lgn03">
					<ul>
						<li>
							<label for="name" class="blind">성명</label>
							<input type="text" name="name" id="name" class="inp_def_2 put_01" />
						</li>
						<li>
							<label for="secnum_1" class="blind">주민등록번호</label>
							<input type="text" name="secnum_1" id="secnum_1" class="inp_def_2 put_02" />
							<span class="put_02_sp">-</span>
							<input type="password" name="secnum_2" id="secnum_2" class="inp_def_2 put_03" />
						</li>
					</ul>

					<p><input type="image" src="../images/btns/chk.gif" alt="확인" class="put_04" /></p>
					<p><a href="../" id="cancle_2_id"><img src="../images/btns/cancle_2.gif" alt="취소" class="put_05" /></a></p>
				</div>

			</fieldset>
		</form>
	</div>

</div>

<!-- #include file = "../include/bottom.asp" -->
