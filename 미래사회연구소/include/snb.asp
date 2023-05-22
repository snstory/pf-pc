<ul class="snb_list">

<% If pageNum = 1 Then %>

	<!-- intro ( 연구소 소개 ) -->
	<li><a href="../intro/intro_01.asp"><img src="../images/pgs/intro/snb_01.gif" alt="연구소장 인사말" /></a></li>
	<li><a href="../intro/intro_02.asp"><img src="../images/pgs/intro/snb_02.gif" alt="연구소 설립목적" /></a></li>
	<li><a href="../intro/intro_03.asp"><img src="../images/pgs/intro/snb_03.gif" alt="연구소 연혁" /></a></li>
	<li><a href="../intro/intro_04.asp"><img src="../images/pgs/intro/snb_04.gif" alt="조직구성" /></a></li>
	<li><a href="../intro/intro_05.asp"><img src="../images/pgs/intro/snb_05.gif" alt="찾아오시는 길" /></a></li>
	<!-- //intro -->

<% ElseIf pageNum = 2 Then %>

	<!-- act ( 연구활동 ) -->
	<li><a href="../act/act_01.asp"><img src="../images/pgs/act/snb_01.gif" alt="고령사회연구실" /></a></li>
	<li><a href="../act/act_02.asp"><img src="../images/pgs/act/snb_02.gif" alt="위기관리연구실" /></a></li>
	<li><a href="../act/act_03.asp"><img src="../images/pgs/act/snb_03.gif" alt="통일문제연구실" /></a></li>
	<li><a href="../act/act_04.asp"><img src="../images/pgs/act/snb_04.gif" alt="문화디자인연구실" /></a></li>
	<li><a href="../act/act_05.asp"><img src="../images/pgs/act/snb_05.gif" alt="경제경영연구실" /></a></li>
	<li><a href="../act/act_06.asp"><img src="../images/pgs/act/snb_06.gif" alt="유비쿼터스연구실" /></a></li>
	<li><a href="../act/act_07.asp"><img src="../images/pgs/act/snb_07.gif" alt="e-노후생애연구실" /></a></li>
	<li><a href="../act/act_08.asp"><img src="../images/pgs/act/snb_08.gif" alt="사이버교육연구실" /></a></li>
	<li><a href="../act/act_09.asp"><img src="../images/pgs/act/snb_09.gif" alt="연구지원센터" /></a></li>
	<!-- //act -->

<% ElseIf pageNum = 3 Then %>

	<!-- res ( 연구실적 ) -->
	<li><a href="../res/res_01.asp"><img src="../images/pgs/res/snb_01.gif" alt="프로젝트" /></a></li>
	<li><a href="../res/res_02.asp"><img src="../images/pgs/res/snb_02.gif" alt="학술활동" /></a></li>
	<li>
		<a href="../res/res_03_01.asp"><img src="../images/pgs/res/snb_03.gif" alt="편집위원회" /></a>

		<ul class="snb_sub">
			<li><a href="../res/res_03_01.asp">편집위원실</a></li>
			<li><a href="../res/res_03_02.asp">논문투고실</a></li>
		</ul>
	</li>
	<!-- //res -->

<% ElseIf pageNum = 4 Then %>

	<!-- data ( 자료실 ) -->
	<li><a href="../data/data_01.asp"><img src="../images/pgs/data/snb_01.gif" alt="문서자료" /></a></li>
	<li><a href="../data/data_02.asp"><img src="../images/pgs/data/snb_02.gif" alt="사진자료" /></a></li>
	<li><a href="../data/data_03.asp"><img src="../images/pgs/data/snb_03.gif" alt="관련사이트" /></a></li>
	<!-- //data -->

<% ElseIf pageNum = 5 Then %>

	<!-- cmu ( 커뮤니티 ) -->
	<li><a href="../cmu/cmu_01.asp"><img src="../images/pgs/cmu/snb_01.gif" alt="연구소 소식" /></a></li>
	<li><a href="../cmu/cmu_02.asp"><img src="../images/pgs/cmu/snb_02.gif" alt="관련 뉴스" /></a></li>
	<li><a href="../cmu/cmu_03.asp"><img src="../images/pgs/cmu/snb_03.gif" alt="Q&amp;A" /></a></li>
	<!-- //cmu -->

<% ElseIf pageNum = 6 Then %>

	<!-- member ( 회원정보관리 ) -->
	<li><a href="../member/login.asp"><img src="../images/pgs/member/snb_01.gif" alt="로그인" /></a></li>
	<li><a href="../member/join_01.asp"><img src="../images/pgs/member/snb_02.gif" alt="회원가입" /></a></li>
	<li><a href="../member/idpw.asp"><img src="../images/pgs/member/snb_03.gif" alt="아이디&amp;비밀번호조회" /></a></li>
	<li><a href="../member/join_edit.asp"><img src="../images/pgs/member/snb_04.gif" alt="회원정보 수정" /></a></li>
	<li><a href="../member/out.asp"><img src="../images/pgs/member/snb_05.gif" alt="회원탈퇴 신청" /></a></li>
	<!-- //member -->

<% ElseIf pageNum = 7 Then %>

	<!-- etc ( 기타안내 ) -->
	<li><a href="../etc/etc_01.asp"><img src="../images/pgs/etc/snb_01.gif" alt="개인보호정책" /></a></li>
	<li><a href="../etc/etc_02.asp"><img src="../images/pgs/etc/snb_02.gif" alt="이메일 무단수집거부" /></a></li>
	<li><a href="../etc/etc_03.asp"><img src="../images/pgs/etc/snb_03.gif" alt="사이트 맵" /></a></li>
	<li><a href="../etc/etc_04.asp"><img src="../images/pgs/etc/snb_04.gif" alt="CONTACT US" /></a></li>
	<!-- //etc -->

<% Else %>

	<li class="on"></li>

<% End if %>

</ul>
