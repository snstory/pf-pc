<%
pageNum = 6
subNum01 = 3
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "ȸ����������"
pathArr(0,1) = "../member/login.asp"
pathArr(1,0) = "���̵� &amp; ��й�ȣ ��ȸ"
pathArr(1,1) = ""

'���� Ÿ��Ʋ img, alt
ttl_img = "../images/pgs/member/title_01.gif"
ttl_ment = pathArr(0,0)

'������ Ÿ��Ʋ img, alt
s_ttl_img = "../images/pgs/member/s_title_0"& subNum01 &".gif"
s_ttl_ment = pathArr(1,0)

'������ Ÿ��Ʋ �ϴ� �ΰ����� img, alt
s_ttl_img_2 = "../images/pgs/member/ment_05_1.gif"
s_ttl_ment_2 = "����� ������ �ؾ�����̳���? �Ʒ� �Է��׸��� ��Ȯ�� �Է��� �ֽʽÿ�."
s_ttl_img_2_class = "cmn_06"
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

<div class="lgn_gde_2">

	<div class="lgn01 lgn01_bg_3">
		<span class="ltt"></span><span class="gtt"></span><span class="ltb"></span><span class="gtb"></span>

		<div class="idpw idpw_lt">
			<form method="post" action="#" accept-charset="euc-kr" id="id_search_form" name="id_search_form">
				<fieldset>
					<legend>���̵� �˻����</legend>

					<p class="a">
						<label for="name" class="blind">����</label>
						<input type="text" name="name" id="name" class="inp_def_2 inp_11" />
					</p>
					<p class="b">
						<label for="secnum_1" class="blind">�ֹε�Ϲ�ȣ</label>
						<input type="text" name="secnum_1" id="secnum_1" class="inp_def_2 inp_12" />
						<span>-</span>
						<input type="password" name="secnum_2" id="secnum_2" class="inp_def_2 inp_12" />
					</p>
					<p class="c"></p>
					<p class="d">
						<a href="#"><img src="../images/btns/id_2.gif" alt="���̵� ��ȸ" /></a>
						<a href="#"><img src="../images/btns/cancle_2.gif" alt="���" /></a>
					</p>

				</fieldset>
			</form>
		</div>

		<div class="idpw idpw_gt">
			<form method="post" action="#" accept-charset="euc-kr" id="pw_search_form" name="pw_search_form">
				<fieldset>
					<legend>���̵� �˻����</legend>

					<p class="a">
						<label for="name" class="blind">����</label>
						<input type="text" name="name" id="name" class="inp_def_2 inp_11" />
					</p>
					<p class="b">
						<label for="name" class="blind">���̵�</label>
						<input type="text" name="id" id="id" class="inp_def_2 inp_11" />
					</p>
					<p class="c">
						<label for="secnum_1" class="blind">�ֹε�Ϲ�ȣ</label>
						<input type="text" name="secnum_1" id="secnum_1" class="inp_def_2 inp_12" />
						<span>-</span>
						<input type="password" name="secnum_2" id="secnum_2" class="inp_def_2 inp_12" />
					</p>
					<p class="d">
						<a href="#"><img src="../images/btns/pw_2.gif" alt="��й�ȣ ��ȸ" /></a>
						<a href="#"><img src="../images/btns/cancle_2.gif" alt="���" /></a>
					</p>

				</fieldset>
			</form>
		</div>
	</div>

</div>

<!-- #include file = "../include/bottom.asp" -->
