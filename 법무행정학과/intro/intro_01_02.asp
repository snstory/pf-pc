<%
pageNo = 1
sub_01 = 1
sub_02 = 2
%>

<!-- #include file="../inc/top_01.asp" -->
<!-- #include file="../inc/top_02.asp" -->

<!-- 카테고리 메뉴 -->
<ul class="lsts_6">
	<li><a href="intro_01_01.asp"><img src="../images/btns/tab_int_01_01.gif" alt="학과소개" /></a></li>
	<li><a href="intro_01_02.asp"><img src="../images/btns/tab_int_01_02_on.gif" alt="학과소개 동영상" /></a></li>
</ul>
<!-- //카테고리 메뉴 -->

<!-- 동영상 -->
<div class="bk_17"><object id="NSPlay" width="100%" height="100%" classid="CLSID:22D6f312-B0F6-11D0-94AB-0080C74C7E95" codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=6,4,5,715" standby="Loading Microsoft?Windows?Media Player components..."type="application/x-oleobject">
	<param name="AutoStart" value="True" />
	<param name="DisplaySize" value="true" />
	<param name="AutoSize" value="false" />
	<param name="ShowDisplay" value="false" />
	<param name="ShowStatusBar" value="false" />
	<param name="ShowControls" value="true" />
	<param name="FileName" value="mms://media.iscu.ac.kr/iscu/homepage/law/law.wmv" />
	<param name="Volume" value="0" />
	<embed type="application/x-mplayer2" pluginspage = "http://www.microsoft.com/Windows/Downloads/Contents/Products/MediaPlayer/" name="NSPlay" src="mms://media.iscu.ac.kr/iscu/homepage/law/law.wmv"></embed>
</object></div>
<!-- //동영상 -->

<p class="bk_18">
	<span class="blind">법무행정학과는 지식기반사회에서 선도적인 역할을 할 수 있도록 행정지식과 법률지식에 관한 이론과 실무를 겸비한 전문가를 양성하는데 목표를 둔다. 특히 행정과 법률 분야를 실무적으로 해결하기 위하여 각종 고등고시와 일반 공부원 시험은 물론 법무사, 변리사, 노무사, 공인중개사, 감정평가사, 행정관리사 등의 업무수행에 필요한 다양한 교과목들을 개설하여 학습하고자 한다.</span>
	<a href="http://windows.microsoft.com/ko-KR/windows/products/windows-media" target="_blank" class="btn"><img src="../images/btns/media_download.gif" alt="Download Media Player" /></a>
</p><!-- //bk_18 -->

<!-- #include file="../inc/bottom_01.asp" -->
<!-- #include file="../inc/bottom_02.asp" -->
