<%
pageNum = 5
subNum01 = 1
subNum02 = ""

dim pathArr(2,1)
pathArr(0,0) = "Service Hole"
pathArr(0,1) = "/service/service_01_list.asp"
pathArr(1,0) = "���� Ȧ"
pathArr(1,1) = ""

titleImgSrc = "/images/service/s_title_01.gif"
titleImgMent = "���� Ȧ"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<!-- �˻����� -->
<div class="bbsSch bSh_op01">
	<form method="post" action="">
		<fieldset>
			<legend>�˻� ���</legend>
			<select name="sel" id="sel" class="fs_01">
				<option>�����ϼ���</option>
				<option>����</option>
				<option>����</option>
			</select>

			<input type="text" name="schword" id="schword" class="fi_df_b fi_03" />
			<input type="image" src="/images/common/btns/search.gif" />
		</fieldset>
	</form>
</div>
<!-- //�˻����� -->


<div class="tk01">
	<div class="tk01_wp">
		<ul class="tk01_ul">
			<li>
				<div class="wp">
					<div class="pic"><a href="#"><img src="../images/common/test_img/ucc_s_01.jpg" width="140" height="103" alt="" /></a></div>
					<h3 class="title"><a href="#"><strong>[New]</strong> ���� ������</a></h3>
					<p class="hit">HIT : 2162</p>
					<p class="wtr">�ۼ��� : �輮��</p>
				</div>
			</li>
			<li>
				<div class="wp">
					<div class="pic"><a href="#"><img src="../images/common/test_img/ucc_s_02.jpg" width="140" height="103" alt="" /></a></div>
					<h3 class="title"><a href="#"><strong class="best">[Best]</strong> ���� ������</a></h3>
					<p class="hit">HIT : 2162</p>
					<p class="wtr">�ۼ��� : �輮��</p>
				</div>
			</li>
			<li>
				<div class="wp">
					<div class="pic"><a href="#"><img src="../images/common/test_img/ucc_s_01.jpg" width="140" height="103" alt="" /></a></div>
					<h3 class="title"><a href="#"><strong>[New]</strong> ���� ������</a></h3>
					<p class="hit">HIT : 2162</p>
					<p class="wtr">�ۼ��� : �輮��</p>
				</div>
			</li>
			<li>
				<div class="wp">
					<div class="pic"><a href="#"><img src="../images/common/test_img/ucc_s_02.jpg" width="140" height="103" alt="" /></a></div>
					<h3 class="title"><a href="#"><strong class="best">[Best]</strong> ���� ������</a></h3>
					<p class="hit">HIT : 2162</p>
					<p class="wtr">�ۼ��� : �輮��</p>
				</div>
			</li>

			<li>
				<div class="wp">
					<div class="pic"><a href="#"><img src="../images/common/test_img/ucc_s_01.jpg" width="140" height="103" alt="" /></a></div>
					<h3 class="title"><a href="#"><strong>[New]</strong> ���� ������</a></h3>
					<p class="hit">HIT : 2162</p>
					<p class="wtr">�ۼ��� : �輮��</p>
				</div>
			</li>
			<li>
				<div class="wp">
					<div class="pic"><a href="#"><img src="../images/common/test_img/ucc_s_02.jpg" width="140" height="103" alt="" /></a></div>
					<h3 class="title"><a href="#"><strong class="best">[Best]</strong> ���� ������</a></h3>
					<p class="hit">HIT : 2162</p>
					<p class="wtr">�ۼ��� : �輮��</p>
				</div>
			</li>
		</ul>
	</div>

	<!-- �ڷᰡ ���� ��� -->
	<!-- <p class="tk01_nodata">�ڷᰡ �����ϴ�.</p> -->
</div>

<!-- ����¡ -->
<div class="bbsPaz bbsPaz_pd02">
	<a href="#"><img src="/images/common/btns/prev_LL.gif" alt="���� 10������" /></a>
	<a href="#"><img src="/images/common/btns/prev_L.gif" alt="��������" /></a>

	<span>
		<strong>1</strong>
		<a href="#">2</a>
		<a href="#">3</a>
		<a href="#">4</a>
		<a href="#">5</a>
		<a href="#">6</a>
		<a href="#">7</a>
		<a href="#">8</a>
		<a href="#">9</a>
		<a href="#">10</a>
	</span>

	<a href="#"><img src="/images/common/btns/next_L.gif" alt="��������" /></a>
	<a href="#"><img src="/images/common/btns/next_LL.gif" alt="���� 10������" /></a>

	<!-- ��ư���� (����¡ ������) -->
	<div class="bbsBtns_02">
		<a href="service_01_write.asp"><img src="/images/common/btns/write.gif" alt="�۾���" /></a>
	</div>
	<!-- //��ư���� (����¡ ������) -->
</div>
<!-- //����¡ -->

<!-- #include virtual = "/include/bottom.asp" -->
