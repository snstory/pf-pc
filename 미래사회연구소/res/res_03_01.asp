<%
pageNum = 3
subNum01 = 3
subNum02 = 1

'path Array
dim pathArr(3,1)
pathArr(0,0) = "연구실적"
pathArr(0,1) = "../res/res_01.asp"
pathArr(1,0) = "논문 편집위원회"
pathArr(1,1) = "../res/res_03_01.asp"
pathArr(2,0) = "편집위원실"
pathArr(2,1) = ""

'폴더 타이틀 img, alt
ttl_img = "../images/pgs/res/title_01.gif"
ttl_ment = pathArr(0,0)

'페이지 타이틀 img, alt
s_ttl_img = "../images/pgs/res/s_title_0"& subNum01 &"_0"& subNum02 &".gif"
s_ttl_ment = pathArr(2,0)

'페이지 타이틀 하단 부가설명 img, alt
s_ttl_img_2 = "../images/pgs/res/s_title_0"& subNum01 &"_0"& subNum02 &"_ment.gif"
s_ttl_ment_2 = "미래사회연구소에서 발간하는 미래사회 편집위원회 공간입니다."
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

내용영역

<!-- #include file = "../include/bottom.asp" -->
