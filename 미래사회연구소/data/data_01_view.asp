<%
pageNum = 4
subNum01 = 1
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "�ڷ��"
pathArr(0,1) = "../data/data_01.asp"
pathArr(1,0) = "�����ڷ�"
pathArr(1,1) = ""

'���� Ÿ��Ʋ img, alt
ttl_img = "../images/pgs/data/title_01.gif"
ttl_ment = pathArr(0,0)

'������ Ÿ��Ʋ img, alt
s_ttl_img = "../images/pgs/data/s_title_0"& subNum01 &".gif"
s_ttl_ment = pathArr(1,0)

'������ Ÿ��Ʋ �ϴ� �ΰ����� img, alt
s_ttl_img_2 = "../images/pgs/data/s_title_0"& subNum01 &"_ment.gif"
s_ttl_ment_2 = "�̷���ȸ�������� �����ڷḦ �ٿ������ �� �ֽ��ϴ�."
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

<div class="bs_01">
	<span class="blt"></span><span class="bgt"></span>

	<ul class="vw_info_list">
		<li class="nobdr">
			<dl class="vw_info">
				<dt><strong><img src="../images/txt/ttl.gif" alt="����" /></strong></dt>
				<dd class="t cmn_02">[���۾�] 2010.07.12 ���� 2:00-4:00 ���۾����� ���� ���� ����</dd>
			</dl>
		</li>
		<li>
			<dl class="vw_info">
				<dt><strong><img src="../images/txt/date_b.gif" alt="�ۼ���" /></strong></dt>
				<dd class="cmn_02">2010.06.20</dd>

				<dt><strong><img src="../images/txt/count_b.gif" alt="��ȸ" /></strong></dt>
				<dd class="cmn_02">250</dd>
			</dl>
		</li>
		<li>
			<dl class="vw_info">
				<dt><strong><img src="../images/txt/file_b.gif" alt="÷������" /></strong></dt>
				<dd class="f cmn_02"><a href="#">�̷���ȸ.doc</a></dd>
			</dl>
		</li>
	</ul>

	<!-- vw_info_content -->
	<div class="vw_info_content">

		<!-- �����ͷ� ��� �ǹǷ� ������ ��Ÿ���� ������ �� �����ϴ�. �Ʒ��� ��Ͽ� �Դϴ�. -->
		<p style="line-height:220%;padding:0 20px;">����������ȸ���� ��ȭ�� ���ΰ� ���� �׸��� ������ ������ ���踦 �ٺ������� ��ȭ��Ű�� �ֽ��ϴ�. �̷��� ��ȭ�� �ٽ��� �����ϸ鼭 �������� ��ȸ�� ���� ������ �츮 ��ȸ�� ���Ŀ����� ���� �ϴ� �Ͽ� �������� �⿩�ϰ��� �մϴ�. ������̹����б� �̷����������Ҵ� �̷� ������ ������ ü���� ������ ���� �ٿ����� ��⸦ �����ϰ� �Ž��� ������ �̽��� ������ �ƿ﷯ ���ο� ������ Ȯ��� ����ü�踦 Ȯ��������ϰ��� �մϴ�.</p>

	</div>
	<!-- //vw_info_content -->
</div>

<!-- ��ư���� -->
<div class="cmn_01">
	<a href="data_01.asp"><img src="../images/btns/list.gif" alt="���" /></a>
</div>
<!-- //��ư���� -->

<!-- ������, ������ ���� -->
<div class="ltgt_gde cmn_03">
	<ul class="ltgt_list">
		<li>
			<h3 class="t"><img src="../images/txt/prev.gif" alt="������" /></h3>
			<p>
				<a href="#">������ �Դϴ�.</a>
				���� �����ϴ�.
			</p>
		</li>
		<li>
			<h3 class="t"><img src="../images/txt/next.gif" alt="������" /></h3>
			<p>
				<a href="#">������ �Դϴ�.</a>
				���� �����ϴ�.
			</p>
		</li>
	</ul>
</div>
<!-- //������, ������ ���� -->

<!-- ��۾��� ���� -->
<div class="reply_gde cmn_04">
	<form method="post" action="#" accept-charset="euc-kr" name="reply_add_form" id="reply_add_form">
		<fieldset>
			<legend>��� ����� ���</legend>

			<textarea name="reply_text" id="reply_text" rows="3" cols="50" class="txe"></textarea>
			<input type="image" src="../images/btns/reply.gif" alt="����Է�" class="btn" />
		</fieldset>
	</form>
</div>
<!-- //��۾��� ���� -->

<!-- ��ۿ��� -->
<div class="reply_list_gde">

	<!-- ��۸�� ���� -->
	<div>
		<ul class="reply_list">
			<li>
				<strong>ȫ�浿</strong>
				<p>�����ڷ� �����մϴ�.</p>
				<em>2010.07.05 17:30</em>
			</li>
			<li>
				<strong>ȫ�浿</strong>
				<p>�����ڷ� �����մϴ�.</p>
				<em>2010.07.05 17:30</em>
			</li>
		</ul>
	</div>
	<!-- //��۸�� ���� -->

	<!-- pazing -->
	<div class="pazing">
		<div>
			<a href="#"><img src="../images/btns/paz_lt_b.gif" alt="����������" /></a>

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

			<a href="#"><img src="../images/btns/paz_gt_b.gif" alt="����������" /></a>
		</div>
	</div>
	<!-- //pazing -->

</div>
<!-- //��ۿ��� -->

<!-- #include file = "../include/bottom.asp" -->
