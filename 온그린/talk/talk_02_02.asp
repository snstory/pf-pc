<%
pageNum = 4
subNum01 = 2
subNum02 = 2

dim pathArr(3,1)
pathArr(0,0) = "Talk Hole"
pathArr(0,1) = "/talk/talk_01_01_list.asp"
pathArr(1,0) = "���Ա�ȯ�ϱ�"
pathArr(1,1) = "/talk/talk_02_01.asp"
pathArr(2,0) = "���Ե��&amp;����"
pathArr(2,1) = ""

titleImgSrc = "/images/talk/s_title_02_02.gif"
titleImgMent = "���Ե��&amp;����"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<h2 class="tk04_h"><img src="../images/talk/pg_01.gif" alt="���Ǹ��Ե���ϱ�" /> <img src="../images/talk/pg_02.gif" alt="���Ǹ��Լ����ϱ�" /></h2>

<form method="post" action="">
	<fieldset>
		<legend>���� ��� �� ���� ���</legend>

		<div class="tk04">
			<table class="mem06_tb tb_defs">
				<colgroup>
					<col width="20%" />
					<col width="80%" />
				</colgroup>
			
				<tbody>
					<tr class="nobdr">
						<th><img src="/images/common/txt/title_3.gif" alt="����" /></th>
						<td><input type="text" name="title" id="title" class="fi_df_c fi_02" /></td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/name_2.gif" alt="����" /></th>
						<td><input type="text" name="name" id="name" class="fi_df_c fi_03" /></td>
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
						<th><img src="/images/common/txt/birth.gif" alt="�������" /></th>
						<td>
							<input type="text" name="birth_1" id="birth_1" class="fi_df_c fi_06" /> ��
							<input type="text" name="birth_2" id="birth_2" class="fi_df_c fi_07" /> ��
							<input type="text" name="birth_3" id="birth_3" class="fi_df_c fi_07" /> ��
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/sex.gif" alt="����" /></th>
						<td>
							<input type="radio" name="sex" id="sex" value="" /> <span class="b">����</span>
							<input type="radio" name="sex" id="sex" value="" /> <span class="b">����</span>
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/gooruc.gif" alt="����" /></th>
						<td>
							<select name="gooruc" id="gooruc" class="fs_01">
								<option value="">�����ϼ���</option>
							</select>
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/belong.gif" alt="�Ҽ�/��å" /></th>
						<td>
							�Ҽ� <input type="text" name="belong_1" id="belong_1" class="fi_df_c fi_03" />
							&nbsp;&nbsp;
							��å <input type="text" name="belong_2" id="belong_2" class="fi_df_c fi_03" />
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/homepage_2.gif" alt="Ȩ������" /></th>
						<td>http:// <input type="text" name="homepage" id="homepage" class="fi_df_c fi_12" /></td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/msg.gif" alt="�޽���" /></th>
						<td>
							<input type="text" name="msg_A" id="msg_A" class="fi_df_c fi_03" />
							@
							<input type="text" name="msg_B" id="msg_B" class="fi_df_c fi_03" />
							<select name="email" id="msg_C" class="fs_01">
								<option>�����ϼ���</option>
							</select>
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/pic.gif" alt="����" /></th>
						<td>
							<ul class="mem06_ul_1">
								<li class="pp"><input type="file" name="pic" id="pic" size="30" /></li>
								<li>
									<span>img_01.jpg</span>
								</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/blog.gif" alt="��α� �Ǵ� �̴�Ȩ��" /></th>
						<td><input type="text" name="blog" id="blog" class="fi_df_c fi_12" /></td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/s_intro.gif" alt="�ڱ�Ұ� �� ���" /></th>
						<td><ul class="mem06_ul_1"><li><textarea name="s_intro" id="s_intro" class="fi_df_c" rows="5" cols="70"></textarea></li></ul></td>
					</tr>
				</tbody>
			</table>
		</div>

		<!-- ��ư���� -->
		<div class="mem07">
			<a href="#"><img src="/images/common/btns/del.gif" alt="����" /></a>
			<input type="image" src="/images/common/btns/add.gif" alt="���" />
			<input type="image" src="/images/common/btns/edit.gif" alt="����" />
		</div>
		<!-- //��ư���� -->
	</fieldset>
</form>

<!-- #include virtual = "/include/bottom.asp" -->
