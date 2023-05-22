<h1><%
	If pageNo = 1 Then
		%><img src="../images/txt/snb_title_01.png" alt="학과소개" /><%
	ElseIf pageNo = 2 Then
		%><img src="../images/txt/snb_title_02.png" alt="교육과정소개" /><%
	ElseIf pageNo = 3 Then
		%><img src="../images/txt/snb_title_03.png" alt="예비입학생" /><%
	ElseIf pageNo = 4 Then
		%><img src="../images/txt/snb_title_04.png" alt="알림과 나눔터" /><%
	ElseIf pageNo = 5 Then
		%><img src="../images/txt/snb_title_05.png" alt="1인1자격증/고시" /><%
	ElseIf pageNo = 6 Then
		%><img src="../images/txt/snb_title_06.png" alt="학과앨범" /><%
	ElseIf pageNo = 7 Then
		%><img src="../images/txt/snb_title_07.png" alt="특강" /><%
	ElseIf pageNo = 8 Then
		%><img src="../images/txt/snb_title_08.png" alt="ETC." /><%
	ElseIf pageNo = 9 Then
		%><img src="../images/txt/snb_title_09.png" alt="MEMBER" /><%
	End If
%></h1>

<ul>
	<% If pageNo = 1 Then %>

		<li class="sb01"><a href="../intro/intro_01_01.asp"<%If sub_01=1 Then%> class="on"<%End If%>>학과소개</a></li>
		<li class="sb02"><a href="../intro/intro_02.asp"<%If sub_01=2 Then%> class="on"<%End If%>>학과연혁</a></li>
		<li class="sb03"><a href="../intro/intro_03.asp"<%If sub_01=3 Then%> class="on"<%End If%>>학과특징</a></li>
		<li class="sb04"><a href="../intro/intro_04.asp"<%If sub_01=4 Then%> class="on"<%End If%>>교수소개</a></li>
		<li class="sb05"><a href="../intro/intro_05.asp"<%If sub_01=5 Then%> class="on"<%End If%>>대학원진학현황</a></li>
		<li class="sb06"><a href="../intro/intro_06_01.asp"<%If sub_01=6 Then%> class="on"<%End If%>>산학협력기관</a></li>
		<li class="sb07"><a href="../intro/intro_07.asp"<%If sub_01=7 Then%> class="on"<%End If%>>관련사이트</a></li>
		<li class="sb08"><a href="../intro/intro_08.asp"<%If sub_01=8 Then%> class="on"<%End If%>>스토리텔링</a></li>
		<li class="sb09"><a href="../intro/intro_09_01.asp"<%If sub_01=9 Then%> class="on"<%End If%>>About 엔큐</a></li>

	<% ElseIf pageNo = 2 Then %>

		<li class="sb10"><a href="../proc/proc_01.asp"<%If sub_01=1 Then%> class="on"<%End If%>>교육과정소개</a></li>
		<li class="sb11"><a href="../proc/proc_02.asp"<%If sub_01=2 Then%> class="on"<%End If%>>학습로드맵</a></li>
		<li class="sb12"><a href="../proc/proc_03.asp"<%If sub_01=3 Then%> class="on"<%End If%>>교육과정의 특징</a></li>
		<li class="sb13"><a href="../proc/proc_04.asp"<%If sub_01=4 Then%> class="on"<%End If%>>교과목소개</a></li>
		<li class="sb14"><a href="../proc/proc_05.asp"<%If sub_01=5 Then%> class="on"<%End If%>>수강신청방법</a></li>
		<li class="sb15"><a href="../proc/proc_06.asp"<%If sub_01=6 Then%> class="on"<%End If%>>강의맛보기</a></li>

	<% ElseIf pageNo = 3 Then %>

		<li class="sb16"><a href="../rese/rese_01_01.asp"<%If sub_01=1 Then%> class="on"<%End If%>>예비입학생추천</a></li>
		<li class="sb17"><a href="../rese/rese_02.asp"<%If sub_01=2 Then%> class="on"<%End If%>>최고·최초 10</a></li>
		<li class="sb18"><a href="../rese/rese_03.asp"<%If sub_01=3 Then%> class="on"<%End If%>>미래를 향한 도전</a></li>
		<li class="sb19"><a href="../rese/rese_04.asp"<%If sub_01=4 Then%> class="on"<%End If%>>자주하는 질문</a></li>
		<li class="sb20"><a href="../rese/rese_05.asp"<%If sub_01=5 Then%> class="on"<%End If%>>교수님 궁금해요</a></li>
		<li class="sb21"><a href="../rese/rese_06.asp"<%If sub_01=6 Then%> class="on"<%End If%>>조교님 궁금해요</a></li>

	<% ElseIf pageNo = 4 Then %>

		<li class="sb22"><a href="../noti/noti_01.asp"<%If sub_01=1 Then%> class="on"<%End If%>>학교소식</a></li>
		<li class="sb23"><a href="../noti/noti_02.asp"<%If sub_01=2 Then%> class="on"<%End If%>>학과소식</a></li>
		<li class="sb24"><a href="../noti/noti_03.asp"<%If sub_01=3 Then%> class="on"<%End If%>>학과게시판</a></li>
		<li class="sb25"><a href="../noti/noti_04.asp"<%If sub_01=4 Then%> class="on"<%End If%>>동문게시판</a></li>
		<li class="sb26"><a href="../noti/noti_05.asp"<%If sub_01=5 Then%> class="on"<%End If%>>축하해주세요</a></li>
		<li class="sb27"><a href="../noti/noti_06.asp"<%If sub_01=6 Then%> class="on"<%End If%>>학과학생회임원진</a></li>
		<li class="sb28"><a href="../noti/noti_07.asp"<%If sub_01=7 Then%> class="on"<%End If%>>이슈토론POST</a></li>
		<li class="sb29"><a href="http://www.seoulscu.co.kr/newweb/bbs/board.php?bo_table=brd_com1" target="_blank">총학알림마당</a></li>

	<% ElseIf pageNo = 5 Then %>

		<li class="sb30"><a href="../study/study_01.asp"<%If sub_01=1 Then%> class="on"<%End If%>>1인1자격증안내</a></li>
		<li class="sb31"><a href="../study/study_02.asp"<%If sub_01=2 Then%> class="on"<%End If%>>대학원진학안내</a></li>
		<li class="sb32"><a href="../study/study_03.asp"<%If sub_01=3 Then%> class="on"<%End If%>>Law School 안내</a></li>
		<li class="sb33"><a href="../study/study_04.asp"<%If sub_01=4 Then%> class="on"<%End If%>>자격증안내</a></li>
		<li class="sb34"><a href="../study/study_05_01.asp"<%If sub_01=5 Then%> class="on"<%End If%>>법무사시험안내</a></li>
		<li class="sb35"><a href="../study/study_06_01.asp"<%If sub_01=6 Then%> class="on"<%End If%>>공무원시험안내</a></li>
		<li class="sb36"><a href="../study/study_07.asp"<%If sub_01=7 Then%> class="on"<%End If%>>통합자료실</a></li>
		<li class="sb37"><a href="../study/study_08_01.asp"<%If sub_01=8 Then%> class="on"<%End If%>>스터디</a></li>

	<% ElseIf pageNo = 6 Then %>

		<li class="sb38"><a href="../abm/abm_01.asp"<%If sub_01=1 Then%> class="on"<%End If%>>학과앨범</a></li>
		<li class="sb39"><a href="../abm/abm_02.asp"<%If sub_01=2 Then%> class="on"<%End If%>>자기소개</a></li>
		<li class="sb40"><a href="../abm/abm_03.asp"<%If sub_01=3 Then%> class="on"<%End If%>>UCC올리기</a></li>

	<% ElseIf pageNo = 7 Then %>

		<li class="sb41"><a href="../off/off_01.asp"<%If sub_01=1 Then%> class="on"<%End If%>>명사초청특강</a></li>

	<% ElseIf pageNo = 8 Then %>

		<li class="sb42"><a href="../etc/etc_01.asp"<%If sub_01=1 Then%> class="on"<%End If%>>사이트맵</a></li>

	<% ElseIf pageNo = 9 Then %>

		<li class="sb43"><a href="../member/member_01.asp"<%If sub_01=1 Then%> class="on"<%End If%>>로그인</a></li>

	<% End If %>
</ul>
