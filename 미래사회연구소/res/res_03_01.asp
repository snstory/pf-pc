<%
pageNum = 3
subNum01 = 3
subNum02 = 1

'path Array
dim pathArr(3,1)
pathArr(0,0) = "��������"
pathArr(0,1) = "../res/res_01.asp"
pathArr(1,0) = "�� ��������ȸ"
pathArr(1,1) = "../res/res_03_01.asp"
pathArr(2,0) = "����������"
pathArr(2,1) = ""

'���� Ÿ��Ʋ img, alt
ttl_img = "../images/pgs/res/title_01.gif"
ttl_ment = pathArr(0,0)

'������ Ÿ��Ʋ img, alt
s_ttl_img = "../images/pgs/res/s_title_0"& subNum01 &"_0"& subNum02 &".gif"
s_ttl_ment = pathArr(2,0)

'������ Ÿ��Ʋ �ϴ� �ΰ����� img, alt
s_ttl_img_2 = "../images/pgs/res/s_title_0"& subNum01 &"_0"& subNum02 &"_ment.gif"
s_ttl_ment_2 = "�̷���ȸ�����ҿ��� �߰��ϴ� �̷���ȸ ��������ȸ �����Դϴ�."
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

���뿵��

<!-- #include file = "../include/bottom.asp" -->
