<%
pageNum = 5
subNum01 = 2
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "커뮤니티"
pathArr(0,1) = "../cmu/cmu_01.asp"
pathArr(1,0) = "관련 뉴스"
pathArr(1,1) = ""

'폴더 타이틀 img, alt
ttl_img = "../images/pgs/cmu/title_01.gif"
ttl_ment = pathArr(0,0)

'페이지 타이틀 img, alt
s_ttl_img = "../images/pgs/cmu/s_title_0"& subNum01 &".gif"
s_ttl_ment = pathArr(1,0)

'페이지 타이틀 하단 부가설명 img, alt
s_ttl_img_2 = "../images/pgs/cmu/s_title_0"& subNum01 &"_ment.gif"
s_ttl_ment_2 = "미래사회연구소 관련 뉴스입니다."
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

내용영역

<!-- #include file = "../include/bottom.asp" -->
