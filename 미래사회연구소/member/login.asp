<%
pageNum = 6
subNum01 = 1
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "ȸ����������"
pathArr(0,1) = "../member/login.asp"
pathArr(1,0) = "�α���"
pathArr(1,1) = ""

'���� Ÿ��Ʋ img, alt
ttl_img = "../images/pgs/member/title_01.gif"
ttl_ment = pathArr(0,0)

'������ Ÿ��Ʋ img, alt
s_ttl_img = "../images/pgs/member/s_title_0"& subNum01 &".gif"
s_ttl_ment = pathArr(1,0)

'������ Ÿ��Ʋ �ϴ� �ΰ����� img, alt
's_ttl_img_2 = "../images/pgs/member/s_title_0"& subNum01 &"_ment.gif"
s_ttl_ment_2 = ""
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

<div class="lgn_gde">

	<div class="lgn01 lgn01_bg_1">
		<span class="ltt"></span><span class="gtt"></span><span class="ltb"></span><span class="gtb"></span>

		<div class="blind">
			<h1>�̷���ȸ������ Ȩ�������� ���� ���� ȯ���մϴ�.</h1>
			<p>�̷���ȸ�������� Ȩ�������� �پ��� ���񽺸� �̿��ϱ� ���ؼ���  ȸ�� �α����� �ʿ��մϴ�.</p>
		</div>

		<form method="post" action="/example/use_check_exam.asp" accept-charset="euc-kr" name="FRLogin_form" id="FRLogin_form">

			<fieldset>
				<legend>�α��� ���</legend>

				<div class="lgn01_1">
					<p>
						<label for="id" class="blind">���̵�</label>
						<input type="text" name="id" id="id" class="inp_def_2 lgn01_2" />
					</p>

					<p>
						<label for="pw" class="blind">��й�ȣ</label>
						<input type="password" name="pw" id="pw" class="inp_def_2 lgn01_3" />
					</p>

					<p>
						<input type="image" src="../images/btns/login.gif" class="lgn01_4" />
					</p>
				</div>
			</fieldset>

		</form>
	</div>

	<div class="lgn02">
		<h2 class="blind">���� ȸ���� �ƴϽ� �в����� ���� ȸ�������� ���ֽñ� �ٶ��ϴ�.</h2>
		<p><a href="../member/join_01.asp" class="btn01"><img src="../images/btns/join.gif" alt="ȸ������" /></a></p>

		<h2 class="blind">���̵�, �Ǵ� ��й�ȣ�� �н��� �в����� �Ʒ� ���̵� ��ȸ Ȥ�� ��й�ȣ ��ȸ ��ư�� Ŭ���� �ֽñ� �ٶ��ϴ�.</h2>
		<ul>
			<li><a href="../member/idpw.asp" class="btn02"><img src="../images/btns/id.gif" alt="���̵� ��ȸ" /></a></li>
			<li><a href="../member/idpw.asp" class="btn03"><img src="../images/btns/pw.gif" alt="��й�ȣ ��ȸ" /></a></li>
		</ul>
	</div>

</div>

<!-- #include file = "../include/bottom.asp" -->
