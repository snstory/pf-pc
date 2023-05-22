<%
pageNum = 7
subNum01 = 6
subNum02 = ""

dim pathArr(2,1)
pathArr(0,0) = "회원정보관리"
pathArr(0,1) = "/member/member_02.asp"
pathArr(1,0) = "정회원 신청하기"
pathArr(1,1) = ""

titleImgSrc = "/images/member/s_title_06.gif"
titleImgMent = "정회원 신청하기"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<div class="mem19">
	<span class="mem19_t"></span>

	<div class="mem19_m">
		<p class="mem19_02"><img src="/images/member/pg_12.gif" alt="잠시만요!! 꼭 확인해주세요." /></p>
		<div class="mem19_01">
			<h2>[회원약관 제00조] 정회원 가입비 및 이용기간</h2>

			<ul>
				<li>① 1인당 10,000원으로 하며, 정회원 가입일로 부터 1개월간 10편의 동영상을 보실 수 있습니다.</li>
				<li>② 정회원 등록 후 10편의 동영상을 모두 소진 했을 경우 아래 가격체계에 따라 지불하여야 다른 동영상을 보실 수 있습니다.</li>
				<li>③ 어떠한 경우에도 회원가입비의 환불은 불가합니다.</li>
			</ul>
		</div>
	</div>

	<span class="mem19_b"></span>
</div>

<h2 class="mem20"><img src="/images/member/pg_13.gif" alt="결재안내" /></h2>

<div class="mem21">
	<ul class="mem21_ul">
		<li class="nobg"><p>정보를 기입 하신 후 지불 버튼을 눌러 주십시오.</p></li>
		<li><p>결제가 이루어지는 동안 기다려 주시기 바랍니다. 현재 창을 새로 고침 하거나 절대 닫지 마세요.<br />두 번 결재가 이루어 질 수 있습니다.</p></li>
		<li><p>전자우편과 이동전화번호를 입력 받는 것은 귀하의 지불내역을 이니시스에서 이메일 또는 SMS로 알려드리기 위함이오니 반드시 기입하여 주시기 바랍니다.</p></li>
		<li><p>한메일 계정을 사용 할 경우 인증 메일이 도착하지 않을 수 있으므로 가급적 다른 메일을 사용해 주시기 바랍니다.</p></li>
		<li><p>회원 가입비 가상 계좌(무통장입금)시 실제 송금자명이 회원명과 동일 하지 않아도 정상 처리 됩니다.<br />(회원 별로 부여된 가상계좌 번호로 해당 계좌 번호로 입금 시 송금자명과 상관 없이 납입 처리 됩니다.)</p></li>
		<li><p>계좌 이체(인터넷뱅킹)시 간편한 핸드폰공인인증으로도 결제 가능합니다.</p></li>
	</ul>
</div>

<h2 class="mem22"><img src="/images/member/pg_14.gif" alt="가격체계" /></h2>

<div class="mem23">
	<table class="mem23_tb tb_defs">
		<colgroup>
			<col width="20%" />
			<col width="20%" />
			<col width="20%" />
			<col width="20%" />
			<col width="20%" />
		</colgroup>
	
		<thead>
			<tr>
				<th class="nobdr">무료회원</th>
				<th>클럽하우스<strong>(실버)</strong></th>
				<th>티박스회원<strong>(골드)</strong></th>
				<th>페어웨이<strong>(다이아)</strong></th>
				<th>온그린<strong>(플레티넘)</strong></th>
			</tr>
		</thead>
	
		<tbody>
			<tr>
				<td class="bold nobdr">가입비없음<strong></strong></td>
				<td class="bold">가입비<strong>(1만원)</strong></td>
				<td class="bold">가입비<strong>(5만원)</strong></td>
				<td class="bold">가입비<strong>(8만원)</strong></td>
				<td class="bold">가입비<strong>(10만원)</strong></td>
			</tr>
			<tr>
				<td class="nobdr">무료컨텐츠제공<br />UCC및 기타서비스</td>
				<td>유료서비스<br />20편+5편=<span>25편</span></td>
				<td>유료 서비스<br />100편+20편=<span>120편</span></td>
				<td>유료서비스<br />160편+35편=<span>195편</span></td>
				<td>유료서비스<br />200편+50편=<span>250편</span></td>
			</tr>
		</tbody>
	</table>
</div>

<form method="post" action="#">
	<fieldset>
		<legend>지불 관련 양식</legend>

		<div class="mem23 mem23_btm">
			<table class="mem24_tb tb_defs">
				<colgroup>
					<col width="17%" />
					<col width="33%" />
					<col width="17%" />
					<col width="33%" />
				</colgroup>

				<tbody>
					<tr class="nobdr">
						<th><img src="/images/common/txt/reg_02_1.gif" alt="지불방법" /></th>
						<td>
							<select name="payment" id="payment" class="fs_04">
								<option value="">선택하세요</option>
							</select>
						</td>
						<th><img src="/images/common/txt/reg_02_2.gif" alt="상품명" /></th>
						<td>
							<select name="product" id="product" class="fs_04">
								<option value="">선택하세요</option>
							</select>
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/name_2.gif" alt="성명" /></th>
						<td>김석민</td>
						<th><img src="/images/common/txt/mobile.gif" alt="이동전화" /></th>
						<td>010-7123-7629</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/email_3.gif" alt="전자우편" /></th>
						<td colspan="3">
							<input type="text" name="email_A" id="email_A" class="fi_df_c fi_03" />
							@
							<input type="text" name="email_B" id="email_B" class="fi_df_c fi_03" />
							<select name="email" id="email_C" class="fs_01">
								<option>선택하세요</option>
								<option value="self">직접입력</option>
								<option value="naver.com" >naver.com</option>
								<option value="chol.com" >chol.com</option>
								<option value="dreamwiz.com" >dreamwiz.com</option>
								<option value="empal.com" >empal.com</option>
								<option value="freechal.com" >freechal.com</option>
								<option value="gmail.com" >gmail.com</option>
								<option value="hanafos.com" >hanafos.com</option>
								<option value="hanmail.net" >hanmail.net</option>
								<option value="hanmir.com" >hanmir.com</option>
								<option value="hitel.net" >hitel.net</option>
								<option value="hotmail.com" >hotmail.com</option>
								<option value="korea.com" >korea.com</option>
								<option value="lycos.co.kr" >lycos.co.kr</option>
								<option value="nate.com" >nate.com</option>
								<option value="netian.com" >netian.com</option>
								<option value="paran.com" >paran.com</option>
								<option value="yahoo.com" >yahoo.com</option>
								<option value="yahoo.co.kr" >yahoo.co.kr</option>
							</select>
						</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="mem25">
			<ul class="mem25_ul">
				<li class="nobg"><p>반드시 플러그인의 설치를 완료한 후에 "지불"을 누르십시오.<br />플러그인은 자동으로 다운로드되어 설치됩니다.<br />다운로드에 다소 시간이 걸리는 수도 있으니 보안경고창이 나타날 때 까지 잠시 기다려 주시기 바랍니다.</p></li>
				<li><p>플러그인은 지불 정보를 안전하게 암호화하는 역할 이외에는 어떠한 용도로도 사용되지 않습니다.<br />플러그인 설치가 되지 않는 경우에는 설치파일을
					<a href="#"><img src="/images/common/btns/download.gif" alt="다운로드" /></a>
				하여 수동으로 설치하십시오.<br />수동 설치를 위해서는 브라우저를 닫아주셔야 합니다.</p></li>
				<li><p>"지불" 버튼을 누르면 지불정보를 안전하게 암호화하기 위한 플러그인이 나타납니다.<br />플러그인에 필요정보를 모두 기입한 후, "확인" 버튼을 누르면 지불처리가 시작됩니다.<br />다소 시간이 걸릴 수도 있으니 결과가 표시될 때까지 "중지" 버튼을 누르지 마시고 잠시만 기다려 주십시오.</p></li>
			</ul>
		</div>

		<div class="mem26">
			<a href="#"><img src="/images/common/btns/payment.gif" alt="지불" /></a>
		</div>
	</fieldset>
</form>

<!-- #include virtual = "/include/bottom.asp" -->
