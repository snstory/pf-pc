<%
pageNum = 7
subNum01 = 1
subNum02 = ""

dim pathArr(2,1)
pathArr(0,0) = "ȸ����������"
pathArr(0,1) = "/member/member_02.asp"
pathArr(1,0) = "�α���"
pathArr(1,1) = ""

titleImgSrc = "/images/member/s_title_01.gif"
titleImgMent = "�α���"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->
<div class="mem01">
	<h1 class="blind">�α���</h1>
	<p class="blind">�±׸��� ���� ���� ȯ���մϴ�.</p>

	<h2 class="blind">�±׸��� �پ��� ���񽺸� �̿��ϱ� ���ؼ��� ȸ�� �α����� �ʿ��մϴ�.</h2>
	<form method="post" action="#">
		<fieldset>
			<legend>�α��� ���</legend>

			<input type="text" name="id" id="id" alt="���̵�" class="mem01_01 fi_df_c fi_03" />
			<input type="password" name="id" id="id" alt="��й�ȣ" class="mem01_02 fi_df_c fi_03" />
			<input type="image" src="/images/common/btns/login.gif" alt="Ȯ��" class="mem01_03" />
		</fieldset>
	</form>

	<h3 class="blind">���� ȸ���� �ƴϽ� �в����� ���� ȸ�������� ���ֽñ� �ٶ��ϴ�.</h3>
	<p class="mem01_04"><a href="/member/join_01.asp"><img src="/images/common/btns/gojoin.gif" alt="�±׸� ȸ������" /></a></p>

	<h3 class="blind">���̵�, �Ǵ� ��й�ȣ�� �н��� �в����� �Ʒ� [���̵�/��й�ȣ ��ȸ�ϱ�] ��ư�� Ŭ���� �ֽñ� �ٶ��ϴ�.</h3>
	<p class="mem01_05"><a href="/member/member_01.asp"><img src="/images/common/btns/gofind.gif" alt="���̵� �� ��й�ȣ ��ȸ�ϱ�" /></a></p>
</div>
<!-- #include virtual = "/include/bottom.asp" -->
