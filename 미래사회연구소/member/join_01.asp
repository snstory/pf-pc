<%
pageNum = 6
subNum01 = 2
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "ȸ����������"
pathArr(0,1) = "../member/login.asp"
pathArr(1,0) = "ȸ������"
pathArr(1,1) = ""

'���� Ÿ��Ʋ img, alt
ttl_img = "../images/pgs/member/title_01.gif"
ttl_ment = pathArr(0,0)

'������ Ÿ��Ʋ img, alt
s_ttl_img = "../images/pgs/member/s_title_0"& subNum01 &".gif"
s_ttl_ment = pathArr(1,0)

'������ Ÿ��Ʋ �ϴ� �ΰ����� img, alt
s_ttl_img_2 = "../images/pgs/member/ment_02_1.gif"
s_ttl_ment_2 = ""
s_ttl_img_2_class = "cmn_06"
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

<div class="blind">
	<h1 class="blind">�Ǹ�Ȯ��</h1>
	<p class="blind">�̷���ȸ�����Ҵ� �Ǹ�Ȯ���� ���� ����Ȯ���� �ϰ� �ֽ��ϴ�. �Է��Ͻ� ������ ����Ȯ�ο����θ� ���Ǹ�, ȸ������ ����� ���� ���� ���� �Ǵ� �� 3�ڿ��� �������� �ʽ��ϴ�.</p>
</div>

<div class="lgn_gde">
	
	<div class="lgn01 lgn01_bg_2">
		<span class="ltt"></span><span class="gtt"></span><span class="ltb"></span><span class="gtb"></span>

		<div class="blind">
			<h2>�˸�</h2>
			<ul>
				<li>������ �ֹε�Ϲ�ȣ�� ���İ����ηκ��� �㰡 ���� �ſ�����ȸ���� �ѱ��ſ��������� ���� �Ǹ�� ��ġ ���� Ȯ�ο��� ����մϴ�.</li>
				<li>2006�� 9�� 24�� ���� ������ �ֹε�Ϲ��� ���� Ÿ���� �ֹι�ȣ�� �����Ͽ� �¶��� ȸ�������� �ϴ� �� �ٸ� ����� �ֹε�Ϲ�ȣ�� ��������ڴ� 3�� ������ ¡�� �Ǵ� 1õ���� ������ ������ �ΰ��� �� �ֽ��ϴ�.</li>
				<li>���ϰ� �Է��Ͻ� ������ 128bit ssl��ȣȭ ����� ���� ä��/�����;�ȣȭ������� �����ϰ� �ۼ��� �˴ϴ�.</li>
			</ul>
		</div>

		<form method="post" action="/example/use_check_exam.asp" accept-charset="euc-kr" name="FRNameChk_form" id="FRNameChk_form">
			<fieldset>
				<legend>�Ǹ�Ȯ�� ��</legend>

				<div class="lgn03">
					<ul>
						<li>
							<label for="name" class="blind">����</label>
							<input type="text" name="name" id="name" class="inp_def_2 put_01" />
						</li>
						<li>
							<label for="secnum_1" class="blind">�ֹε�Ϲ�ȣ</label>
							<input type="text" name="secnum_1" id="secnum_1" class="inp_def_2 put_02" />
							<span class="put_02_sp">-</span>
							<input type="password" name="secnum_2" id="secnum_2" class="inp_def_2 put_03" />
						</li>
					</ul>

					<p><input type="image" src="../images/btns/chk.gif" alt="Ȯ��" class="put_04" /></p>
					<p><a href="../" id="cancle_2_id"><img src="../images/btns/cancle_2.gif" alt="���" class="put_05" /></a></p>
				</div>

			</fieldset>
		</form>
	</div>

</div>

<!-- #include file = "../include/bottom.asp" -->
