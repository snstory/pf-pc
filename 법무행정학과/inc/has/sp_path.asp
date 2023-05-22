<a href="../main/main.asp">Home</a> &gt; 

<% If pageNo = 1 Then %>

	<a href="">학과소개</a> &gt; 

	<%If sub_01=1 Then%><b>학과소개</b><%End If%>
	<%If sub_01=2 Then%><b>학과연혁</b><%End If%>
	<%If sub_01=3 Then%><b>학과특징</b><%End If%>
	<%If sub_01=4 Then%><b>교수소개</b><%End If%>
	<%If sub_01=5 Then%><b>대학원진학현황</b><%End If%>
	<%If sub_01=6 Then%><b>산학협력기관</b><%End If%>
	<%If sub_01=7 Then%><b>관련사이트</b><%End If%>
	<%If sub_01=8 Then%><b>스토리텔링</b><%End If%>
	<%If sub_01=9 Then%><b>About 엔큐</b><%End If%>

<% ElseIf pageNo = 2 Then %>

	<a href="../proc/proc_01.asp">교육과정소개</a> &gt; 

	<%If sub_01=1 Then%><b>교육과정소개</b><%End If%>
	<%If sub_01=2 Then%><b>학습로드맵</b><%End If%>
	<%If sub_01=3 Then%><b>교육과정의 특징</b><%End If%>
	<%If sub_01=4 Then%><b>교과목소개</b><%End If%>
	<%If sub_01=5 Then%><b>수강신청방법</b><%End If%>
	<%If sub_01=6 Then%><b>강의맛보기</b><%End If%>

<% ElseIf pageNo = 3 Then %>

	<a href="../rese/rese_01_01.asp">예비입학생</a> &gt; 

	<%If sub_01=1 Then%><b>예비입학생추천</b><%End If%>
	<%If sub_01=2 Then%><b>최고·최초 10</b><%End If%>
	<%If sub_01=3 Then%><b>미래를 향한 도전</b><%End If%>
	<%If sub_01=4 Then%><b>자주하는 질문</b><%End If%>
	<%If sub_01=5 Then%><b>교수님 궁금해요</b><%End If%>
	<%If sub_01=6 Then%><b>조교님 궁금해요</b><%End If%>

<% ElseIf pageNo = 4 Then %>

	<a href="../noti/noti_01.asp">알림과 나눔터</a> &gt; 

	<%If sub_01=1 Then%><b>학교소식</b><%End If%>
	<%If sub_01=2 Then%><b>학과소식</b><%End If%>
	<%If sub_01=3 Then%><b>학과게시판</b><%End If%>
	<%If sub_01=4 Then%><b>동문게시판</b><%End If%>
	<%If sub_01=5 Then%><b>축하해주세요</b><%End If%>
	<%If sub_01=6 Then%><b>학과학생회임원진</b><%End If%>
	<%If sub_01=7 Then%><b>이슈토론POST</b><%End If%>
	<%If sub_01=8 Then%><b>총학알림마당</b><%End If%>

<% ElseIf pageNo = 5 Then %>

	<a href="../study/study_01.asp">1인1자격증/고시</a> &gt; 

	<%If sub_01=1 Then%><b>1인1자격증안내</b><%End If%>
	<%If sub_01=2 Then%><b>대학원진학안내</b><%End If%>
	<%If sub_01=3 Then%><b>Law School 안내</b><%End If%>
	<%If sub_01=4 Then%><b>자격증안내</b><%End If%>
	<%If sub_01=5 Then%><b>법무사시험안내</b><%End If%>
	<%If sub_01=6 Then%><b>공무원시험안내</b><%End If%>
	<%If sub_01=7 Then%><b>통합자료실</b><%End If%>
	<%If sub_01=8 Then%><b>스터디</b><%End If%>

<% ElseIf pageNo = 6 Then %>

	<a href="../abm/abm_01.asp">학과앨범</a> &gt; 

	<%If sub_01=1 Then%><b>학과앨범</b><%End If%>
	<%If sub_01=2 Then%><b>자기소개</b><%End If%>
	<%If sub_01=3 Then%><b>UCC올리기</b><%End If%>

<% ElseIf pageNo = 7 Then %>

	<a href="../off/off_01.asp">특강</a> &gt; 

	<%If sub_01=1 Then%><b>명사초청특강</b><%End If%>

<% ElseIf pageNo = 8 Then %>

	<%If sub_01=1 Then%><b>사이트맵</b><%End If%>

<% ElseIf pageNo = 9 Then %>

	<%If sub_01=1 Then%><b>로그인</b><%End If%>

<% End If %>
