<%
pageNum = 7
subNum01 = 4
subNum02 = ""

dim pathArr(2,1)
pathArr(0,0) = "ȸ����������"
pathArr(0,1) = "/member/member_02.asp"
pathArr(1,0) = "ȸ����������"
pathArr(1,1) = ""

titleImgSrc = "/images/member/s_title_04.gif"
titleImgMent = "ȸ����������"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<div class="mem10">
	<div class="blind">
		<h1>��������</h1>
		<p>������ ���Ͻô� ������ ��Ȯ�ϰ� �Է��� �ֽñ� �ٶ��ϴ�.</p>
	</div>
</div>

<form method="post" action="#">
	<fieldset>
		<legend>ȸ���������� ���</legend>

		<div class="mem11">
			<table class="mem06_tb tb_defs">
				<colgroup>
					<col width="17%" />
					<col width="33%" />
					<col width="17%" />
					<col width="33%" />
				</colgroup>

				<tbody>
					<tr class="nobdr">
						<th><img src="/images/common/txt/name_2.gif" alt="����" /></th>
						<td colspan="3"><input type="text" name="name" id="name" class="fi_df_c fi_12" /></td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/pw.gif" alt="��й�ȣ" /></th>
						<td><input type="password" name="pw" id="pw" class="fi_df_c fi_11" /></td>
						<th><img src="/images/common/txt/pw_re.gif" alt="��й�ȣ Ȯ��" /></th>
						<td><input type="password" name="pw_re" id="pw_re" class="fi_df_c fi_11" /></td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/tel.gif" alt="����ó" /></th>
						<td colspan="3">
							<select name="tel_1" id="tel_1" class="fs_01">
								<option value="">�����ϼ���</option>
								<option value="">02</option>
							</select> -
							<input type="text" name="tel_2" id="tel_2" class="fi_df_c fi_06" /> -
							<input type="text" name="tel_3" id="tel_3" class="fi_df_c fi_06" />
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/pcs.gif" alt="�޴���" /></th>
						<td colspan="3">
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
						<td colspan="3">
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
					<tr class="btmbdr">
						<th><img src="/images/common/txt/addr.gif" alt="�ּ�" /></th>
						<td colspan="3">
							<ul class="mem06_ul_1">
								<li class="pp">
									<input type="text" name="addr_1" id="addr_1" class="fi_df_c fi_06" /> -
									<input type="text" name="addr_2" id="addr_2" class="fi_df_c fi_06" />
									<a href="#"><img src="/images/common/btns/zSearch.gif" alt="�����ȣ�˻�" /></a>
								</li>
								<li><input type="text" name="addr_3" id="addr_3" class="fi_df_c fi_08" /></li>
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="mem07">
			<input type="image" src="/images/common/btns/edit_done.gif" alt="����Ϸ�" />
			<a href="#"><img src="/images/common/btns/edit_cancle.gif" alt="�������" /></a>
		</div>
	</fieldset>
</form>

<!-- #include virtual = "/include/bottom.asp" -->
