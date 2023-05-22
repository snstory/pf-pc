<!-- #include virtual = "/inc/top_01.asp" -->

<script type="text/javascript">
//<![CDATA[
$( window ).ready( function() {

	$( '#main-container .main-gallerys' ).each( function() {

		ecoi.indexGallery.init( {
			context: this,
			btnLt: $( 'a.lt:first', this ),
			btnGt: $( 'a.gt:first', this ),
			staticLayer: $( 'div.item:first', this ),
			dynamicLayer: $( 'div.item:first > ul:first', this ),
			interval: 2000,
			layerSpeed: 300,
			autoMode: 'off', // 자동실행모드 [ on: 켜기, off: 끄기 ]
			direction: 'gt' // 레이어 기본이동 방향 [ lt: 좌측이동, gt: 우측이동 ]
		} );

	} );

} );
//]]>
</script>


</head>

<body id="indexpage">
<div id="wrap">

	<div id="wrap-inner">
	
		<div id="header">
			<!-- #include virtual = "/inc/header.asp" -->
		</div><!-- //header -->

		<div id="main-container">

			<div class="main-gallerys">

				<h1><img src="/images/pgs/main/c_title_01.png" alt="PRODUCT DB" /></h1>

				<div class="item">
					<ul><!-- 이미지 사이즈: width="207" height="114" -->
						<li><a href="#"><img src="/images/pgs/main/c_grp_01_01.jpg" alt="전기전자" /></a></li>
						<li><a href="#"><img src="/images/pgs/main/c_grp_01_02.jpg" alt="가구" /></a></li>
						<li><a href="#"><img src="/images/pgs/main/c_grp_01_03.jpg" alt="화장품패키지" /></a></li>
					</ul>
				</div>

				<a href="#" class="lt"><img src="/images/pgs/main/btn_lt.gif" alt="이전" /></a>
				<a href="#" class="gt"><img src="/images/pgs/main/btn_gt.gif" alt="다음" /></a>

			</div><!-- //main-gallerys -->

			<div class="main-gallerys">

				<h1><img src="/images/pgs/main/c_title_02.png" alt="MATERIALS DB" /></h1>

				<div class="item">
					<ul><!-- 이미지 사이즈: width="207" height="114" -->
						<li><a href="#"><img src="/images/pgs/main/c_grp_02_01.jpg" alt="플라스틱" /></a></li>
						<li><a href="#"><img src="/images/pgs/main/c_grp_02_02.jpg" alt="금속" /></a></li>
						<li><a href="#"><img src="/images/pgs/main/c_grp_02_03.jpg" alt="목재" /></a></li>
						<li><a href="#"><img src="/images/pgs/main/c_grp_02_04.jpg" alt="유리세라믹" /></a></li>
						<li><a href="#"><img src="/images/pgs/main/c_grp_02_05.jpg" alt="종이" /></a></li>
						<li><a href="#"><img src="/images/pgs/main/c_grp_02_06.jpg" alt="기타" /></a></li>
					</ul>
				</div>

				<a href="#" class="lt"><img src="/images/pgs/main/btn_lt.gif" alt="이전" /></a>
				<a href="#" class="gt"><img src="/images/pgs/main/btn_gt.gif" alt="다음" /></a>

			</div><!-- //main-gallerys -->

			<div class="main-gallerys">

				<h1><img src="/images/pgs/main/c_title_03.png" alt="DESIGN TECHNIQUES DB" /></h1>

				<div class="item">
					<ul><!-- 이미지 사이즈: width="207" height="114" -->
						<li><a href="#"><img src="/images/pgs/main/c_grp_03_01.jpg" alt="표면처리" /></a></li>
						<li><a href="#"><img src="/images/pgs/main/c_grp_03_02.jpg" alt="가공기술" /></a></li>
						<li><a href="#"><img src="/images/pgs/main/c_grp_03_03.jpg" alt="설계기법" /></a></li>
					</ul>
				</div>

				<a href="#" class="lt"><img src="/images/pgs/main/btn_lt.gif" alt="이전" /></a>
				<a href="#" class="gt"><img src="/images/pgs/main/btn_gt.gif" alt="다음" /></a>

			</div><!-- //main-gallerys -->

		</div><!-- //main-container -->

		<div id="footer">
			<!-- #include virtual = "/inc/footer.asp" -->
		</div><!-- //footer -->
	
	</div><!-- //wrap-inner -->

</div><!-- //wrap -->
</body>
</html>
