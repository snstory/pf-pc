<%
pageNum = 7
subNum01 = 5
subNum02 = ""

dim pathArr(2,1)
pathArr(0,0) = "ȸ����������"
pathArr(0,1) = "/member/member_02.asp"
pathArr(1,0) = "ȸ��Ż���û"
pathArr(1,1) = ""

titleImgSrc = "/images/member/s_title_05.gif"
titleImgMent = "ȸ��Ż���û"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<form method="post" action="#">
	<fieldset>
		<legend>ȸ��Ż���û ���</legend>

		<h2 class="mem12"><img src="/images/member/pg_08.gif" alt="ȸ������Ȯ��" /></h2>
		<div class="mem13">
			<strong class="set01">ȫ�浿</strong>
			<strong class="set02">HONGGIL</strong>
			<strong class="set03">win@win.com</strong>
		</div>

		<h2 class="mem14"><img src="/images/member/pg_09.gif" alt="Ż���û" /></h2>
		<p class="mem15"><img src="/images/member/pg_09_2.gif" alt="Ż���û Ȯ���� ���� ���� ������� ��й�ȣ�� �Է��� �ֽʽÿ�." /></p>
		<div class="mem16">
			<input type="password" name="pw" id="pw" class="fi_df_c fi_11 pos1" />
			<input type="password" name="pw_re" id="pw_re" class="fi_df_c fi_11 pos2" />
		</div>

		<h2 class="mem17"><img src="/images/member/pg_09.gif" alt="Ż���û" /></h2>
		<ul class="mem17_ul">
			<li>������ �Է³����� �Է��Ͻ� �� �ϴ��� ��Ż�� �Ϸᡯ ��ư�� Ŭ���Ͻø� ��� ȸ�� Ż�� �̷�� ���ϴ�.</li>
			<li>Ż�� �Ϸ�� ���ÿ� ȸ������ �����Ͻ� ��� ���� ������ ����Ʈ �����ͺ��̽����� �ڵ����� �����˴ϴ�.</li>
		</ul>

		<div class="mem18">
			<input type="image" src="/images/common/btns/req_out.gif" alt="Ż���û" />
			<a href="#"><img src="/images/common/btns/req_cancle.gif" alt="Ż�����" /></a>
			<a href="#"><img src="/images/common/btns/reset.gif" alt="�ٽ��Է�" /></a>
		</div>
	</fieldset>
</form>

<!-- #include virtual = "/include/bottom.asp" -->
