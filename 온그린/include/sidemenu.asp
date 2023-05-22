<%
' 각 페이지들의 pageNum 과 subNum 들을 사용하여, 플래시 파일을 따로 지정하거나,
' 플래시 flashvars 에 변수를 전달해 주어 폴더별 사이드 메뉴를 선택 지정할 수 있습니다.

response.write "Directory no : "& pageNum &", "& subNum01 &", "& subNum02
%>

<!--[if IE]>
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="170px" height="292px">
	<param name="movie" value="/images/swf/snb.jpg" />
	<param name="allowScriptAccess" value="sameDomain" />
	<param name="flashvars" value="" />
	<param name="loop" value="false" />
	<param name="menu" value="false" />
	<param name="quality" value="high" />
	<param name="scale" value="noscale" />
	<param name="bgcolor" value="#ffffff" />
	<param name="wmode" value="transparent" />

</object>
<![endif]-->
<!--[if !IE]> <-->
<object type="application/x-shockwave-flash" data="/images/swf/snb.jpg" width="170px" height="292px">
	<param name="wmode" value="transparent" />
	<p>&nbsp;</p>
</object>
<!--> <![endif]-->
