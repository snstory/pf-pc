<%
pageNum = 7
subNum01 = 6
subNum02 = ""

dim pathArr(2,1)
pathArr(0,0) = "ȸ����������"
pathArr(0,1) = "/member/member_02.asp"
pathArr(1,0) = "��ȸ�� ��û�ϱ�"
pathArr(1,1) = ""

titleImgSrc = "/images/member/s_title_06.gif"
titleImgMent = "��ȸ�� ��û�ϱ�"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<div class="mem19">
	<span class="mem19_t"></span>

	<div class="mem19_m">
		<p class="mem19_02"><img src="/images/member/pg_12.gif" alt="��ø���!! �� Ȯ�����ּ���." /></p>
		<div class="mem19_01">
			<h2>[ȸ����� ��00��] ��ȸ�� ���Ժ� �� �̿�Ⱓ</h2>

			<ul>
				<li>�� 1�δ� 10,000������ �ϸ�, ��ȸ�� �����Ϸ� ���� 1������ 10���� �������� ���� �� �ֽ��ϴ�.</li>
				<li>�� ��ȸ�� ��� �� 10���� �������� ��� ���� ���� ��� �Ʒ� ����ü�迡 ���� �����Ͽ��� �ٸ� �������� ���� �� �ֽ��ϴ�.</li>
				<li>�� ��� ��쿡�� ȸ�����Ժ��� ȯ���� �Ұ��մϴ�.</li>
			</ul>
		</div>
	</div>

	<span class="mem19_b"></span>
</div>

<h2 class="mem20"><img src="/images/member/pg_13.gif" alt="����ȳ�" /></h2>

<div class="mem21">
	<ul class="mem21_ul">
		<li class="nobg"><p>������ ���� �Ͻ� �� ���� ��ư�� ���� �ֽʽÿ�.</p></li>
		<li><p>������ �̷������ ���� ��ٷ� �ֽñ� �ٶ��ϴ�. ���� â�� ���� ��ħ �ϰų� ���� ���� ������.<br />�� �� ���簡 �̷�� �� �� �ֽ��ϴ�.</p></li>
		<li><p>���ڿ���� �̵���ȭ��ȣ�� �Է� �޴� ���� ������ ���ҳ����� �̴Ͻý����� �̸��� �Ǵ� SMS�� �˷��帮�� �����̿��� �ݵ�� �����Ͽ� �ֽñ� �ٶ��ϴ�.</p></li>
		<li><p>�Ѹ��� ������ ��� �� ��� ���� ������ �������� ���� �� �����Ƿ� ������ �ٸ� ������ ����� �ֽñ� �ٶ��ϴ�.</p></li>
		<li><p>ȸ�� ���Ժ� ���� ����(�������Ա�)�� ���� �۱��ڸ��� ȸ����� ���� ���� �ʾƵ� ���� ó�� �˴ϴ�.<br />(ȸ�� ���� �ο��� ������� ��ȣ�� �ش� ���� ��ȣ�� �Ա� �� �۱��ڸ�� ��� ���� ���� ó�� �˴ϴ�.)</p></li>
		<li><p>���� ��ü(���ͳݹ�ŷ)�� ������ �ڵ��������������ε� ���� �����մϴ�.</p></li>
	</ul>
</div>

<h2 class="mem22"><img src="/images/member/pg_14.gif" alt="����ü��" /></h2>

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
				<th class="nobdr">����ȸ��</th>
				<th>Ŭ���Ͽ콺<strong>(�ǹ�)</strong></th>
				<th>Ƽ�ڽ�ȸ��<strong>(���)</strong></th>
				<th>������<strong>(���̾�)</strong></th>
				<th>�±׸�<strong>(�÷�Ƽ��)</strong></th>
			</tr>
		</thead>
	
		<tbody>
			<tr>
				<td class="bold nobdr">���Ժ����<strong></strong></td>
				<td class="bold">���Ժ�<strong>(1����)</strong></td>
				<td class="bold">���Ժ�<strong>(5����)</strong></td>
				<td class="bold">���Ժ�<strong>(8����)</strong></td>
				<td class="bold">���Ժ�<strong>(10����)</strong></td>
			</tr>
			<tr>
				<td class="nobdr">��������������<br />UCC�� ��Ÿ����</td>
				<td>���Ἥ��<br />20��+5��=<span>25��</span></td>
				<td>���� ����<br />100��+20��=<span>120��</span></td>
				<td>���Ἥ��<br />160��+35��=<span>195��</span></td>
				<td>���Ἥ��<br />200��+50��=<span>250��</span></td>
			</tr>
		</tbody>
	</table>
</div>

<form method="post" action="#">
	<fieldset>
		<legend>���� ���� ���</legend>

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
						<th><img src="/images/common/txt/reg_02_1.gif" alt="���ҹ��" /></th>
						<td>
							<select name="payment" id="payment" class="fs_04">
								<option value="">�����ϼ���</option>
							</select>
						</td>
						<th><img src="/images/common/txt/reg_02_2.gif" alt="��ǰ��" /></th>
						<td>
							<select name="product" id="product" class="fs_04">
								<option value="">�����ϼ���</option>
							</select>
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/name_2.gif" alt="����" /></th>
						<td>�輮��</td>
						<th><img src="/images/common/txt/mobile.gif" alt="�̵���ȭ" /></th>
						<td>010-7123-7629</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/email_3.gif" alt="���ڿ���" /></th>
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
				</tbody>
			</table>
		</div>

		<div class="mem25">
			<ul class="mem25_ul">
				<li class="nobg"><p>�ݵ�� �÷������� ��ġ�� �Ϸ��� �Ŀ� "����"�� �����ʽÿ�.<br />�÷������� �ڵ����� �ٿ�ε�Ǿ� ��ġ�˴ϴ�.<br />�ٿ�ε忡 �ټ� �ð��� �ɸ��� ���� ������ ���Ȱ��â�� ��Ÿ�� �� ���� ��� ��ٷ� �ֽñ� �ٶ��ϴ�.</p></li>
				<li><p>�÷������� ���� ������ �����ϰ� ��ȣȭ�ϴ� ���� �̿ܿ��� ��� �뵵�ε� ������ �ʽ��ϴ�.<br />�÷����� ��ġ�� ���� �ʴ� ��쿡�� ��ġ������
					<a href="#"><img src="/images/common/btns/download.gif" alt="�ٿ�ε�" /></a>
				�Ͽ� �������� ��ġ�Ͻʽÿ�.<br />���� ��ġ�� ���ؼ��� �������� �ݾ��ּž� �մϴ�.</p></li>
				<li><p>"����" ��ư�� ������ ���������� �����ϰ� ��ȣȭ�ϱ� ���� �÷������� ��Ÿ���ϴ�.<br />�÷����ο� �ʿ������� ��� ������ ��, "Ȯ��" ��ư�� ������ ����ó���� ���۵˴ϴ�.<br />�ټ� �ð��� �ɸ� ���� ������ ����� ǥ�õ� ������ "����" ��ư�� ������ ���ð� ��ø� ��ٷ� �ֽʽÿ�.</p></li>
			</ul>
		</div>

		<div class="mem26">
			<a href="#"><img src="/images/common/btns/payment.gif" alt="����" /></a>
		</div>
	</fieldset>
</form>

<!-- #include virtual = "/include/bottom.asp" -->
