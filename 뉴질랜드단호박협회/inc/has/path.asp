<%

dim pathArr(5,1)

If pageNum = 1 Then ' ====================== 뉴질랜드 단호박협회

	pathArr(0,0) = "뉴질랜드 단호박협회"
	pathArr(0,1) = "/assoc/assoc_01.asp"

	If subNum01 = 1 Then
		pathArr(1,0) = "협회소개"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 2 Then
		pathArr(1,0) = "문의하기"
		pathArr(1,1) = "targets"

	End if


Elseif pageNum = 2 Then ' ====================== 단호박 소개

	pathArr(0,0) = "단호박 소개"
	pathArr(0,1) = "/intro/intro_01.asp"

	If subNum01 = 1 Then
		pathArr(1,0) = "단호박"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 2 Then
		pathArr(1,0) = "단호박 영양"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 3 Then
		pathArr(1,0) = "다이어트 / 체중관리를 위한 단호박"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 4 Then
		pathArr(1,0) = "우리아이 영양관리/성장관리를 위한 단호박"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 5 Then
		pathArr(1,0) = "성인들의 건강관리를 위한 단호박"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 6 Then
		pathArr(1,0) = "뉴질랜드 단호박"
		pathArr(1,1) = "targets"

	End if


Elseif pageNum = 3 Then ' ====================== 단호박 요리

	pathArr(0,0) = "단호박 요리"
	pathArr(0,1) = "/cook/cook_01_01.asp"

	If subNum01 = 1 Then
		pathArr(1,0) = "블로거 요리법"
		pathArr(1,1) = "/cook/cook_01_01.asp"

		If subNum02 = 1 Then
			pathArr(2,0) = "갱씨의 요리법"
			pathArr(2,1) = "targets"

		Elseif subNum02 = 2 Then
			pathArr(2,0) = "잠꾸러기의 요리법"
			pathArr(2,1) = "targets"
		
		End if

	Elseif subNum01 = 2 Then
		pathArr(1,0) = "추천 기본요리법"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 3 Then
		pathArr(1,0) = "단호박 고르는 법"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 4 Then
		pathArr(1,0) = "단호박 보관 법"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 5 Then
		pathArr(1,0) = "단호박 기본 요리팁"
		pathArr(1,1) = "targets"

	End if


Elseif pageNum = 4 Then ' ====================== 단호박 매니아

	pathArr(0,0) = "단호박 매니아"
	pathArr(0,1) = "/mania/mania_01.asp"

	If subNum01 = 1 Then
		pathArr(1,0) = "한줄토크"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 2 Then
		pathArr(1,0) = "추천! 단호박이 맛있는 집"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 3 Then
		pathArr(1,0) = "단호박 쿠킹 클래스"
		pathArr(1,1) = "/mania/mania_03_01.asp"

		If subNum02 = 1 Then
			pathArr(2,0) = "쿠킹클래스 신청하기"
			pathArr(2,1) = "targets"

		Elseif subNum02 = 2 Then
			pathArr(2,0) = "쿠킹클래스 후기"
			pathArr(2,1) = "targets"

		End if

	End if


Elseif pageNum = 5 Then ' ====================== 뉴스/이벤트

	pathArr(0,0) = "뉴스/이벤트"
	pathArr(0,1) = "/news/news_01.asp"

	If subNum01 = 1 Then
		pathArr(1,0) = "이벤트"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 2 Then
		pathArr(1,0) = "공지사항"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 3 Then
		pathArr(1,0) = "보도자료"
		pathArr(1,1) = "targets"

	End if


Elseif pageNum = 6 Then ' ====================== 업계회원코너

	pathArr(0,0) = "업계회원코너"
	pathArr(0,1) = "/bnss/bnss_01.asp"

	If subNum01 = 1 Then
		pathArr(1,0) = "공지사항"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 2 Then
		pathArr(1,0) = "뉴질랜드 단호박 뉴스"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 3 Then
		pathArr(1,0) = "통계자료"
		pathArr(1,1) = "targets"

	End if


Elseif pageNum = 7 Then ' ====================== 멤버쉽

	pathArr(0,0) = "멤버쉽"
	pathArr(0,1) = "/member/login.asp"

	If subNum01 = 1 Then
		pathArr(1,0) = "로그인"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 2 Then
		pathArr(1,0) = "아이디/비밀번호찾기"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 3 Then
		pathArr(1,0) = "회원가입"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 4 Then
		pathArr(1,0) = "회원정보수정"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 5 Then
		pathArr(1,0) = "회원탈퇴"
		pathArr(1,1) = "targets"

	End if


Elseif pageNum = 8 Then ' ====================== ETC

	pathArr(0,0) = "ETC"
	pathArr(0,1) = "/member/login.asp"

	If subNum01 = 1 Then
		pathArr(1,0) = "사이트맵"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 2 Then
		pathArr(1,0) = "이용약관"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 3 Then
		pathArr(1,0) = "개인정보취급방침"
		pathArr(1,1) = "targets"

	End if

End if

%>

<div class="path">
	<h2 class="blind">페이지 위치정보</h2>
	<ul>
		<li class="hm"><a href="/"><img src="/images/icons/home.gif" alt="Home" /></a></li>

		<%
			For i=0 to ubound(pathArr)-1

				If pathArr(i,0) <> "" Then

					If pathArr(i,1) = "" Then
						%><li><em><%=pathArr(i,0)%></em></li><%
					Elseif pathArr(i,1) = "targets" Then
						%><li><strong><%=pathArr(i,0)%></strong></li><%
					Else
						%><li><a href="<%=pathArr(i,1)%>"><%=pathArr(i,0)%></a></li><%
					End if

				End if
			Next
		%>
	</ul>
</div><!-- //path -->
