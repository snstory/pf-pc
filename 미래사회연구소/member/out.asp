<%
pageNum = 6
subNum01 = 5
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "ȸ����������"
pathArr(0,1) = "../member/login.asp"
pathArr(1,0) = "ȸ��Ż�� ��û"
pathArr(1,1) = ""

'���� Ÿ��Ʋ img, alt
ttl_img = "../images/pgs/member/title_01.gif"
ttl_ment = pathArr(0,0)

'������ Ÿ��Ʋ img, alt
s_ttl_img = "../images/pgs/member/s_title_0"& subNum01 &".gif"
s_ttl_ment = pathArr(1,0)

'������ Ÿ��Ʋ �ϴ� �ΰ����� img, alt
s_ttl_img_2 = "../images/pgs/member/ment_06_1.gif"
s_ttl_ment_2 = "Ż���û - Ż���û Ȯ���� ���� ���� ������� ��й�ȣ�� �Է��� �ֽʽÿ�."
s_ttl_img_2_class = "cmn_06"
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

<div class="lgn_gde_2">

	<form method="post" action="">
		<fieldset>
			<legend>ȸ��Ż�� ��û ���</legend>

			<div class="lgn01 lgn01_ac">
				<span class="ltt"></span><span class="gtt"></span><span class="ltb"></span><span class="gtb"></span>

				<div class="lgn01_bg_4">

					<h3 class="blind">����</h3>
					<span class="a">ȫ�浿</span>

					<h3 class="blind">���̵�</h3>
					<span class="b">honggildong</span>

					<h3 class="blind">���ڸ����ּ�</h3>
					<span class="c">gond@gnad.com</span>

					<p class="d">
						<label for="pw" class="blind">��й�ȣ�Է�</label>
						<input type="password" name="pw" id="pw" class="inp_def_2 inp_13">
					</p>
					<p class="e">
						<label for="pw_re" class="blind">��й�ȣ���Է�</label>
						<input type="password" name="pw_re" id="pw_re" class="inp_def_2 inp_13">
					</p>
				</div>
			</div>

			<div class="cmn_07">
				<input type="image" src="../images/btns/out_req.gif" alt="Ż���û" />
				<a href="#"><img src="../images/btns/out_cancle.gif" alt="Ż�����" /></a>
				<a href="#"><img src="../images/btns/re.gif" alt="�ٽ��Է�" /></a>
			</div>

		</fieldset>
	</form>

</div>

<!-- #include file = "../include/bottom.asp" -->
