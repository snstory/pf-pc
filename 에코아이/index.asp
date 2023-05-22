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
			autoMode: 'off', // �ڵ������� [ on: �ѱ�, off: ���� ]
			direction: 'gt' // ���̾� �⺻�̵� ���� [ lt: �����̵�, gt: �����̵� ]
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
					<ul><!-- �̹��� ������: width="207" height="114" -->
						<li><a href="#"><img src="/images/pgs/main/c_grp_01_01.jpg" alt="��������" /></a></li>
						<li><a href="#"><img src="/images/pgs/main/c_grp_01_02.jpg" alt="����" /></a></li>
						<li><a href="#"><img src="/images/pgs/main/c_grp_01_03.jpg" alt="ȭ��ǰ��Ű��" /></a></li>
					</ul>
				</div>

				<a href="#" class="lt"><img src="/images/pgs/main/btn_lt.gif" alt="����" /></a>
				<a href="#" class="gt"><img src="/images/pgs/main/btn_gt.gif" alt="����" /></a>

			</div><!-- //main-gallerys -->

			<div class="main-gallerys">

				<h1><img src="/images/pgs/main/c_title_02.png" alt="MATERIALS DB" /></h1>

				<div class="item">
					<ul><!-- �̹��� ������: width="207" height="114" -->
						<li><a href="#"><img src="/images/pgs/main/c_grp_02_01.jpg" alt="�ö�ƽ" /></a></li>
						<li><a href="#"><img src="/images/pgs/main/c_grp_02_02.jpg" alt="�ݼ�" /></a></li>
						<li><a href="#"><img src="/images/pgs/main/c_grp_02_03.jpg" alt="����" /></a></li>
						<li><a href="#"><img src="/images/pgs/main/c_grp_02_04.jpg" alt="���������" /></a></li>
						<li><a href="#"><img src="/images/pgs/main/c_grp_02_05.jpg" alt="����" /></a></li>
						<li><a href="#"><img src="/images/pgs/main/c_grp_02_06.jpg" alt="��Ÿ" /></a></li>
					</ul>
				</div>

				<a href="#" class="lt"><img src="/images/pgs/main/btn_lt.gif" alt="����" /></a>
				<a href="#" class="gt"><img src="/images/pgs/main/btn_gt.gif" alt="����" /></a>

			</div><!-- //main-gallerys -->

			<div class="main-gallerys">

				<h1><img src="/images/pgs/main/c_title_03.png" alt="DESIGN TECHNIQUES DB" /></h1>

				<div class="item">
					<ul><!-- �̹��� ������: width="207" height="114" -->
						<li><a href="#"><img src="/images/pgs/main/c_grp_03_01.jpg" alt="ǥ��ó��" /></a></li>
						<li><a href="#"><img src="/images/pgs/main/c_grp_03_02.jpg" alt="�������" /></a></li>
						<li><a href="#"><img src="/images/pgs/main/c_grp_03_03.jpg" alt="������" /></a></li>
					</ul>
				</div>

				<a href="#" class="lt"><img src="/images/pgs/main/btn_lt.gif" alt="����" /></a>
				<a href="#" class="gt"><img src="/images/pgs/main/btn_gt.gif" alt="����" /></a>

			</div><!-- //main-gallerys -->

		</div><!-- //main-container -->

		<div id="footer">
			<!-- #include virtual = "/inc/footer.asp" -->
		</div><!-- //footer -->
	
	</div><!-- //wrap-inner -->

</div><!-- //wrap -->
</body>
</html>
