<%
pageNum = 2
subNum01 = 4
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "����Ȱ��"
pathArr(0,1) = "../act/act_01.asp"
pathArr(1,0) = "��ȭ�����ο�����"
pathArr(1,1) = ""

'���� Ÿ��Ʋ img, alt
ttl_img = "../images/pgs/act/title_01.gif"
ttl_ment = pathArr(0,0)

'������ Ÿ��Ʋ img, alt
s_ttl_img = "../images/pgs/act/s_title_0"& subNum01 &".gif"
s_ttl_ment = pathArr(1,0)

'������ Ÿ��Ʋ �ϴ� �ΰ����� img, alt
s_ttl_img_2 = "../images/pgs/act/s_title_0"& subNum01 &"_ment.gif"
s_ttl_ment_2 = "��ȭ������ ������ ���������� ���� �����Դϴ�."
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

���뿵��

<!-- #include file = "../include/bottom.asp" -->
