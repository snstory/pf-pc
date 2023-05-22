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
s_ttl_img_2 = "../images/pgs/member/ment_04_1.gif"
s_ttl_ment_2 = "필수입력정보입니다. 해당내용을 정확하게 입력해 주시기 바랍니다."
s_ttl_img_2_class = "cmn_06"
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

<div class="jn05">

	<form method="post" action="/example/use_check_exam.asp" id="FRForm_insert_data" name="FRForm_insert_data">
		<fieldset>
			<legend>회원가입양식</legend>

			<table class="tb_def jn05_tb">
				<tr>
					<th scope="row"><img src="../images/txt/id.gif" alt="아이디" /></th>
					<td>
						<input type="text" name="id" id="id" class="inp_def_2 inp_06">
						<a href="#" id="id_dbl_chk" title="아이디"><img src="../images/btns/dbl_chk.gif" alt="중복검사" /></a>

						<!-- 아이디 중복검사를 실행했는가 확인 -->
						<input type="hidden" name="id_chk_chk" id="id_chk_chk" />
					</td>
				</tr>
				<tr>
					<th scope="row"><img src="../images/txt/name_2.gif" alt="이름" /></th>
					<td><input type="text" name="name" id="name" class="inp_def_2 inp_06"></td>
				</tr>
				<tr>
					<th scope="row"><img src="../images/txt/pw.gif" alt="비밀번호" /></th>
					<td><input type="password" name="pw" id="pw" class="inp_def_2 inp_06"></td>
				</tr>
				<tr>
					<th scope="row"><img src="../images/txt/pw_re.gif" alt="비밀번호 확인" /></th>
					<td><input type="password" name="pw_re" id="pw_re" class="inp_def_2 inp_06"></td>
				</tr>
				<tr>
					<th scope="row"><img src="../images/txt/addr.gif" alt="주소" /></th>
					<td>
						<p class="jn05_p">
							<input type="text" name="addr_1" id="addr_1" class="inp_def_2 inp_07" readonly="readonly">
							- 
							<input type="text" name="addr_2" id="addr_2" class="inp_def_2 inp_07" readonly="readonly">
							<a href="#"><img src="../images/btns/zip.gif" alt="우편번호찾기" /></a>
						</p>

						<p class="jn05_p"><input type="text" name="addr_3" id="addr_3" class="inp_def_2 inp_08" readonly="readonly"></p>
						<p class="jn05_p"><input type="text" name="addr_4" id="addr_4" class="inp_def_2 inp_08"></p>
					</td>
				</tr>
				<tr>
					<th scope="row"><img src="../images/txt/tel_2.gif" alt="연락처(전화)" /></th>
					<td>
						<select name="tel_1" id="tel_1">
							<option value="" selected="selected">선택하세요</option>
							<option value="02">02</option>
							<option value="031">031</option>
							<option value="032">032</option>
							<option value="033">033</option>
							<option value="041">041</option>
							<option value="042">042</option>
							<option value="043">043</option>
							<option value="051">051</option>
							<option value="052">052</option>
							<option value="053">053</option>
							<option value="054">054</option>
							<option value="055">055</option>
							<option value="061">061</option>
							<option value="062">062</option>
							<option value="063">063</option>
							<option value="064">064</option>
							<option value="070">070</option>
						</select>
						- 
						<input type="text" name="tel_2" id="tel_2" class="inp_def_2 inp_07">
						- 
						<input type="text" name="tel_3" id="tel_3" class="inp_def_2 inp_07">
					</td>
				</tr>
				<tr>
					<th scope="row"><img src="../images/txt/tel_3.gif" alt="연락처(핸드폰)" /></th>
					<td>
						<select name="pcs_1" id="pcs_1">
							<option value="" selected="selected">선택하세요</option>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select>
						-
						<input type="text" name="pcs_2" id="pcs_2" class="inp_def_2 inp_07">
						-
						<input type="text" name="pcs_3" id="pcs_3" class="inp_def_2 inp_07">
					</td>
				</tr>
				<tr>
					<th scope="row"><img src="../images/txt/job.gif" alt="직업" /></th>
					<td>
						<ul class="jn05_ul">
							<li>
								<input type="radio" name="job" id="job_1" value="1" class="rdo" checked="checked">
								<label for="job_1">대학교수</label>
							</li>
							<li>
								<input type="radio" name="job" id="job_2" value="2" class="rdo">
								<label for="job_2">관련전문직 종사자</label>
							</li>
							<li>
								<input type="radio" name="job" id="job_3" value="3" class="rdo">
								<label for="job_3">대학원생</label>
							</li>
							<li>
								<input type="radio" name="job" id="job_4" value="4" class="rdo">
								<label for="job_4">일반인</label>
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<th scope="row"><img src="../images/txt/email.gif" alt="이메일" /></th>
					<td>
						<input type="text" name="email_1" id="email_1" class="inp_def_2 inp_09">
						@ 
						<input type="text" name="email_2" id="email_2" class="inp_def_2 inp_09">
						
						<select name="email_3" id="email_3" class="inp_10">
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

						<a href="#" id="emailChker" title="이메일"><img src="../images/btns/email.gif" alt="이메일 중복확인" /></a>
						
						<!-- 이메일 중복검사를 실행했는가 확인 -->
						<input type="hidden" name="email_chk_chk" id="email_chk_chk" />
					</td>
				</tr>
				<tr>
					<th scope="row"><img src="../images/txt/newsltt.gif" alt="뉴스레터신청" /></th>
					<td>
						<input type="radio" name="newsletter" id="newsletter_1" value="1" class="rdo" checked="checked">
						<label for="newsletter_1">신청</label>

						<input type="radio" name="newsletter" id="newsletter_2" value="0" class="rdo">
						<label for="newsletter_2">미신청</label>
					</td>
				</tr>
			</table>

			<p class="jn04">
				<input type="image" src="../images/btns/done_2.gif" alt="가입완료" />
				<a href="#" id="cancle_2_id"><img src="../images/btns/cancle_3.gif" alt="가입취소" /></a>
			</p>
		</fieldset>
	</form>

</div>

<!-- #include file = "../include/bottom.asp" -->
