<%
pageNum = 1
subNum01 = 5
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "������ �Ұ�"
pathArr(0,1) = "../intro/intro_01.asp"
pathArr(1,0) = "ã�ƿ��ô� ��"
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

���뿵��

<!-- #include file = "../include/bottom.asp" -->
