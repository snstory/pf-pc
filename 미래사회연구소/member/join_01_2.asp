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
s_ttl_img_2 = "../images/pgs/member/ment_03_1.gif"
s_ttl_ment_2 = "�̷���ȸ�������� Ȩ������ ȸ�������� ȯ���մϴ�. ȸ�������Ͻñ��� ���� �̿��� �� ����������ȣ��å�� �����ϼž� �մϴ�."
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

<h2 class="jn01"><img src="../images/txt/mt_01.gif" alt="�������� ��޹�ħ" /></h2>
<div class="jn02">
	<span class="jn_t"></span>

	<div class="jn02_1">
		<div class="jn02_2">

			<div class="jn02_scro">
<!-- �ؽ�Ʈ ���� -->

������ �غ����Դϴ�.

<!-- //�ؽ�Ʈ ���� -->
			</div>

		</div>

		<div class="jn02_chkbx">
			<input type="checkbox" name="jn_checked_01" id="jn_checked_01" title="�������� ��ȣ��å" />
			<label for="jn_checked_01">�������� ��ȣ��å�� �����մϴ�.</label>
		</div>
	</div>

	<span class="jn_b"></span>
</div>

<h2 class="jn03"><img src="../images/txt/mt_02.gif" alt="�̷���ȸ������ Ȩ������ �̿���" /></h2>
<div class="jn02">
	<span class="jn_t"></span>

	<div class="jn02_1">
		<div class="jn02_2">

			<div class="jn02_scro">
<!-- �ؽ�Ʈ ���� -->

������ �غ����Դϴ�.

<!-- //�ؽ�Ʈ ���� -->
			</div>

		</div>

		<div class="jn02_chkbx">
			<input type="checkbox" name="jn_checked_02" id="jn_checked_02" title="�̿���" />
			<label for="jn_checked_02">�̿����� �����մϴ�.</label>
		</div>
	</div>

	<span class="jn_b"></span>
</div>

<p class="jn04">
	<a href="join_01_3.asp" id="agree_check_btn"><img src="../images/btns/agree.gif" alt="�����մϴ�" /></a>
	<a href="../"><img src="../images/btns/agree_no.gif" alt="�������� �ʽ��ϴ�" /></a>
</p>

<!-- #include file = "../include/bottom.asp" -->
