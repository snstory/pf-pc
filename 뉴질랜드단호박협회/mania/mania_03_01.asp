<%
pageNum = 4
subNum01 = 3
subNum02 = 1
%>

<!-- #include virtual = "/inc/top_01.asp" -->
<!-- #include virtual = "/inc/top_02.asp" -->

<div class="bbs-guide-1">

	<div class="bbs-head-2">
		<span class="t"></span>

		<h1>
			<span>������ ����˴ϴ�.</span>
			<em class="lt"></em><em class="gt"></em><em class="ltb"></em><em class="gtb"></em>
		</h1>

		<dl>
			<dt class="a">�Ͻ�</dt>
			<dd class="a">11�� 1�� ���� 2��</dd>

			<dt class="b">����</dt>
			<dd class="b">000 ��</dd>

			<dt class="c">���</dt>
			<dd class="c">
				<span>����</span>
				<a href="#" class="rmap"><img src="/images/btns/rmap.gif" alt="�൵����" /></a>
			</dd>
		</dl>

		<span class="b"></span>
	</div>

	<!-- ���뿵�� -->
	<div class="bbs-view-1 except-border-1">
		�� �κп� �����ε� �ıⰡ ���� �˴ϴ�.
	</div>
	<!-- //���뿵�� -->

	<!-- ��ư���� -->
	<div class="bbs-btns-1">
		<a href="#" onclick="window.history.back(); return false;"><img src="../images/btns/list.gif" alt="���" /></a>
	</div>
	<!-- //��ư���� -->

	<!-- ��۾��� -->
	<div class="bbs-comment">
		<h1 class="req">��û�ϱ�, 500�� �̳��� �ۼ��Ͻ� �� �ֽ��ϴ�.</h1>

		<form method="post" action="#">
			<fieldset>
				<legend>��۾��� ���</legend>

				<label for="commentText" class="blind">��۾���</label>
				<textarea name="commentText" id="commentText" rows="3" cols="55">�α��� �Ŀ� �ۼ��Ͻ� �� �ֽ��ϴ�.</textarea>
				<input type="image" src="/images/btns/check.gif" />
			</fieldset>
		</form>
	</div>
	<!-- //��۾��� -->

	<!-- ��۸�� -->
	<div class="bbs-comment-list">
		<ul>
			<li>
				<h4>ȫ�浿</h4>
				<p>��ϵ� �� �� ���� ������ ����˴ϴ�.��ϵ� �� �� ���� ������ ����˴ϴ�. ��ϵ� �� �� ���� ������ ����˴ϴ�.��ϵ� �� �� ���� ������ ����˴ϴ�. ��ϵ� �� �� ���� ������ ����˴ϴ�.��ϵ� �� �� ���� ������ ����˴ϴ�. (2010.11.05  12:05)</p>
				<a href="#" title="��ۻ����ϱ�">����</a>
			</li>
			<li>
				<h4>ȫ�浿</h4>
				<p>��ϵ� �� �� ���� ������ ����˴ϴ�.��ϵ� �� �� ���� ������ ����˴ϴ�. (2010.11.05  12:05)</p>
				<a href="#" title="��ۻ����ϱ�">����</a>
			</li>
		</ul>
	</div>
	<!-- //��۸�� -->

</div>

<!-- #include virtual = "/inc/btm.asp" -->
