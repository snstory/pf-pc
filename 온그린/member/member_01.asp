<%
pageNum = 7
subNum01 = 3
subNum02 = ""

dim pathArr(2,1)
pathArr(0,0) = "ȸ����������"
pathArr(0,1) = "/member/member_02.asp"
pathArr(1,0) = "���̵� &amp; ��й�ȣ ã��"
pathArr(1,1) = ""

titleImgSrc = "/images/member/s_title_03.gif"
titleImgMent = "���̵� &amp; ��й�ȣ ã��"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<div class="mem08">
	<div class="blind">
		<h1>���̵� &amp; ��й�ȣ ��ȸ</h1>
		<p>����� ������ �ؾ�����̳���? �Ʒ� �Է��׸��� ��Ȯ�� �Է��� �ֽʽÿ�</p>
	</div>
</div>

<div class="mem09">
	<div class="mem09_01">
		<form method="post" action="#">
			<fieldset>
				<legend>���̵� ��ȸ���</legend>

				<h2><img src="/images/common/txt/idSearch.gif" alt="���̵� ��ȸ" /></h2>

				<div class="cont adt">
					<p><img src="/images/common/txt/name_3.gif" alt="�̸�" /><input type="text" name="name" id="name" class="fi_df_c fi_09" /></p>
					<p>
						<img src="/images/common/txt/zipcode_2.gif" alt="�ֹε�Ϲ�ȣ" />
						<input type="text" name="zip_01" id="zip_01" class="fi_df_c fi_10" />
						-
						<input type="text" name="zip_02" id="zip_02" class="fi_df_c fi_10" />
					</p>
				</div>
				
				<input type="image" src="/images/common/btns/idSearch.gif" alt="���̵� ��ȸ" class="b" />
			</fieldset>
		</form>
	</div>

	<div class="mem09_01 mem09_01_r">
		<form method="post" action="#">
			<fieldset>
				<legend>��й�ȣ ��ȸ���</legend>
				<h2><img src="/images/common/txt/pwSearch.gif" alt="��й�ȣ ��ȸ" /></h2>

				<div class="cont">
					<p><img src="/images/common/txt/id_2.gif" alt="���̵�" /><input type="text" name="name" id="name" class="fi_df_c fi_09" /></p>
					<p><img src="/images/common/txt/name_3.gif" alt="�̸�" /><input type="text" name="name" id="name" class="fi_df_c fi_09" /></p>
					<p>
						<img src="/images/common/txt/zipcode_2.gif" alt="�ֹε�Ϲ�ȣ" />
						<input type="text" name="zip_01" id="zip_01" class="fi_df_c fi_10" />
						-
						<input type="text" name="zip_02" id="zip_02" class="fi_df_c fi_10" />
					</p>
				</div>
				
				<input type="image" src="/images/common/btns/pwSearch.gif" alt="��й�ȣ ��ȸ" class="b" />
			</fieldset>
		</form>
	</div>
</div>

<!-- #include virtual = "/include/bottom.asp" -->
