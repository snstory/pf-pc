<%
pageNum = 7
subNum01 = 2
subNum02 = 2

dim pathArr(2,1)
pathArr(0,0) = "ȸ����������"
pathArr(0,1) = "/member/member_02.asp"
pathArr(1,0) = "ȸ������"
pathArr(1,1) = ""

titleImgSrc = "/images/member/s_title_02_02.gif"
titleImgMent = "ȸ������"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->
<h1 class="mem05"><img src="/images/member/pg_04.gif" alt="ȸ������" /></h1>

<form method="post" action="#">
	<fieldset>
		<legend>ȸ�����Ծ��</legend>

		<!-- �⺻���� -->
		<div class="mem06">
			<strong><img src="/images/common/txt/opt_01.gif" alt="�⺻����" /></strong>
			<table class="mem06_tb tb_defs">
				<colgroup>
					<col width="25%" />
					<col width="75%" />
				</colgroup>
			
				<tbody>
					<tr class="nobdr">
						<th><img src="/images/common/txt/name_2.gif" alt="����" /></th>
						<td><input type="text" name="name" id="name" class="fi_df_c fi_03" /></td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/zipcode.gif" alt="�ֹε�Ϲ�ȣ" /></th>
						<td>
							<input type="text" name="zip_01" id="zip_01" class="fi_df_c fi_04" />
							-
							<input type="text" name="zip_02" id="zip_02" class="fi_df_c fi_04" />
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- //�⺻���� -->

		<!-- �ʼ��׸� -->
		<div class="mem06">
			<strong><img src="/images/common/txt/opt_02.gif" alt="�ʼ��׸�" /></strong>
			<table class="mem06_tb tb_defs">
				<colgroup>
					<col width="25%" />
					<col width="75%" />
				</colgroup>

				<tbody>
					<tr class="nobdr">
						<th><img src="/images/common/txt/id.gif" alt="���̵�" /></th>
						<td><input type="text" name="id" id="id" class="fi_df_c fi_03" /></td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/pw.gif" alt="��й�ȣ" /></th>
						<td><input type="password" name="pw" id="pw" class="fi_df_c fi_03" /></td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/pw_re.gif" alt="��й�ȣ Ȯ��" /></th>
						<td><input type="password" name="pw_re" id="pw_re" class="fi_df_c fi_03" /></td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/birth.gif" alt="�������" /></th>
						<td>
							<input type="text" name="birth_1" id="birth_1" class="fi_df_c fi_06" /> ��
							<input type="text" name="birth_2" id="birth_2" class="fi_df_c fi_07" /> ��
							<input type="text" name="birth_3" id="birth_3" class="fi_df_c fi_07" /> ��
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/tel.gif" alt="����ó" /></th>
						<td>
							<select name="tel_1" id="tel_1" class="fs_01">
								<option value="">�����ϼ���</option>
								<option value="">02</option>
							</select> -
							<input type="text" name="tel_2" id="tel_2" class="fi_df_c fi_06" /> -
							<input type="text" name="tel_3" id="tel_3" class="fi_df_c fi_06" />
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/pcs.gif" alt="�ڵ���" /></th>
						<td>
							<select name="pcs_1" id="pcs_1" class="fs_01">
								<option value="">�����ϼ���</option>
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select> -
							<input type="text" name="pcs_2" id="pcs_2" class="fi_df_c fi_06" /> -
							<input type="text" name="pcs_3" id="pcs_3" class="fi_df_c fi_06" />
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/email_2.gif" alt="�̸���" /></th>
						<td>
							<input type="text" name="email_A" id="email_A" class="fi_df_c fi_03" />
							@
							<input type="text" name="email_B" id="email_B" class="fi_df_c fi_03" />
							<select name="email" id="email_C" class="fs_01">
								<option>�����ϼ���</option>
								<option value="self">�����Է�</option>
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
					<tr>
						<th><img src="/images/common/txt/addr.gif" alt="�ּ�" /></th>
						<td>
							<ul class="mem06_ul_1">
								<li class="pp">
									<input type="text" name="addr_1" id="addr_1" class="fi_df_c fi_06" /> -
									<input type="text" name="addr_2" id="addr_2" class="fi_df_c fi_06" />
									<a href="#" onclick="popupAbsMiddle({url: '/popup/address.asp',width: 426,height:310});return false;"><img src="/images/common/btns/zSearch.gif" alt="�����ȣ�˻�" /></a>
								</li>
								<li><input type="text" name="addr_3" id="addr_3" class="fi_df_c fi_08" /></li>
							</ul>
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/marry.gif" alt="��ȥ����" /></th>
						<td>
							<input type="radio" name="marry" id="marry" value="" /> <span class="b">��ȥ</span>
							<input type="radio" name="marry" id="marry" value="" /> <span class="b">��ȥ</span>
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/sms.gif" alt="SMS ���ſ���" /></th>
						<td>
							<input type="radio" name="sms" id="sms" value="" /> <span class="b">����</span>
							<input type="radio" name="sms" id="sms" value="" /> <span class="b">���Űź�</span>
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/email_chk.gif" alt="�̸��� ���ſ���" /></th>
						<td>
							<input type="radio" name="email_chk" id="email_chk" value="" /> <span class="b">����</span>
							<input type="radio" name="email_chk" id="email_chk" value="" /> <span class="b">���Űź�</span>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- //�ʼ��׸� -->

		<!-- �����׸� -->
		<div class="mem06 mem06_btm">
			<strong><img src="/images/common/txt/opt_03.gif" alt="�����׸�" /></strong>
			<table class="mem06_tb tb_defs">
				<colgroup>
					<col width="25%" />
					<col width="75%" />
				</colgroup>

				<tbody>
					<tr class="nobdr">
						<th><img src="/images/common/txt/r_count.gif" alt="������Ƚ��" /></th>
						<td>
							<select name="rounding" id="rounding" class="fs_04">
								<option value="">�����ϼ���</option>
							</select>
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/tour_count.gif" alt="�����ؿܰ�������Ƚ��" /></th>
						<td>
							<select name="ycount" id="ycount" class="fs_04">
								<option value="">�����ϼ���</option>
							</select>
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/join_chk.gif" alt="ȸ��������" /></th>
						<td>
							<select name="joinchk" id="joinchk" class="fs_04">
								<option value="">�����ϼ���</option>
							</select>
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/job.gif" alt="����" /></th>
						<td>
							<select name="job" id="job" class="fs_04">
								<option value="">�����ϼ���</option>
							</select>
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/living.gif" alt="�ְ�����" /></th>
						<td>
							<select name="living" id="living" class="fs_04">
								<option value="">�����ϼ���</option>
							</select>
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/f_golf.gif" alt="���ְ��� ������" /></th>
						<td><input type="text" name="f_golf" id="f_golf" class="fi_df_c fi_03" /></td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/j_golf.gif" alt="ȸ���� ���� ������" /></th>
						<td><input type="text" name="j_golf" id="j_golf" class="fi_df_c fi_03" /></td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/pay.gif" alt="���ҵ�" /></th>
						<td>
							<select name="pay" id="pay" class="fs_04">
								<option value="">�����ϼ���</option>
							</select>
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/car.gif" alt="����" /></th>
						<td><input type="text" name="car" id="car" class="fi_df_c fi_03" /></td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- //�����׸� -->

		<div class="mem07">
			<input type="image" src="/images/common/btns/join.gif" alt="ȸ������" />
			<a href="#"><img src="/images/common/btns/cancle_2.gif" alt="���" /></a>
		</div>

	</fieldset>
</form>
<!-- #include virtual = "/include/bottom.asp" -->
