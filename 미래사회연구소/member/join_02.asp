<%
pageNum = 6
subNum01 = 2
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "ȸ����������"
pathArr(0,1) = "/member/login.asp"
pathArr(1,0) = "ȸ������"
pathArr(1,1) = ""

'���� Ÿ��Ʋ img, alt
ttl_img = "/images/pgs/member/title_01.gif"
ttl_ment = pathArr(0,0)

'������ Ÿ��Ʋ img, alt
s_ttl_img = "/images/pgs/member/s_title_0"& subNum01 &".gif"
s_ttl_ment = pathArr(1,0)

'������ Ÿ��Ʋ �ϴ� �ΰ����� img, alt
's_ttl_img_2 = "/images/pgs/member/s_title_0"& subNum01 &"_ment.gif"
s_ttl_ment_2 = ""
%>

<!-- #include virtual = "/include/header.asp" -->
<!-- #include virtual = "/include/top.asp" -->

���뿵��

<!-- #include virtual = "/include/bottom.asp" -->
