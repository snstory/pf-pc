<%
pageNum = 6
subNum01 = 2
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "회원정보관리"
pathArr(0,1) = "/member/login.asp"
pathArr(1,0) = "회원가입"
pathArr(1,1) = ""

'폴더 타이틀 img, alt
ttl_img = "/images/pgs/member/title_01.gif"
ttl_ment = pathArr(0,0)

'페이지 타이틀 img, alt
s_ttl_img = "/images/pgs/member/s_title_0"& subNum01 &".gif"
s_ttl_ment = pathArr(1,0)

'페이지 타이틀 하단 부가설명 img, alt
's_ttl_img_2 = "/images/pgs/member/s_title_0"& subNum01 &"_ment.gif"
s_ttl_ment_2 = ""
%>

<!-- #include virtual = "/include/header.asp" -->
<!-- #include virtual = "/include/top.asp" -->

내용영역

<!-- #include virtual = "/include/bottom.asp" -->
