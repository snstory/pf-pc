<%
pageNum = 1
subNum01 = 4
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "������ �Ұ�"
pathArr(0,1) = "../intro/intro_01.asp"
pathArr(1,0) = "��������"
pathArr(1,1) = ""

'���� Ÿ��Ʋ img, alt
ttl_img = "../images/pgs/intro/title_01.gif"
ttl_ment = pathArr(0,0)

'������ Ÿ��Ʋ img, alt
s_ttl_img = "../images/pgs/intro/s_title_0"& subNum01 &".gif"
s_ttl_ment = pathArr(1,0)

'������ Ÿ��Ʋ �ϴ� �ΰ����� img, alt
's_ttl_img_2 = "../images/pgs/intro/s_title_0"& subNum01 &"_ment.gif"
s_ttl_ment_2 = ""
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

<div class="sb04">
	<div class="blind">
		<h1>�̷���ȸ��������</h1>
		<ul>
			<li><h2>�����ȸ</h2></li>
			<li><h2>��������ȸ</h2></li>
			<li><h2>������������</h2></li>
			<li>
				<h2>����������</h2>
				<ul>
					<li>��ɻ�ȸ������</li>
					<li>�������������</li>
					<li>���Ϲ���������</li>
					<li>��ȭ�����ο�����</li>
					<li>�����濵������</li>
					<li>�������ͽ�������</li>
					<li>e-���Ļ��ֿ�����</li>
					<li>���̹�����������</li>
				</ul>
			</li>
			<li>
				<h2>�繫��</h2>
				<ul>
					<li>�繫����</li>
					<li>����</li>
				</ul>
			</li>
		</ul>
	</div>
</div>

<!-- #include file = "../include/bottom.asp" -->
