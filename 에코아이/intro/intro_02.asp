<%
pageNum = 1
subNum01 = 2
subNum02 = 1

%><!-- #include virtual = "/inc/top_01.asp" -->
<script type="text/javascript">
//<![CDATA[
$( function() {
	ecoi.intro02Proc.init( {
		btns: $( 'div.intro-02 > ul.anchors a' ).toArray(),
		btnSrc: '/images/btns/gotop.gif'
	} );
	$( 'div.intro-02 > ul.anchors img' ).imgHovers();
} );
//]]>
</script>
<!-- #include virtual = "/inc/top_02.asp" -->

<div class="intro-02">

	<ul class="anchors">
		<li><a href="#tg01"><img src="/images/pgs/intro/tab_02_01.gif" alt="������� ���̵����" /></a></li>
		<li><a href="#tg02"><img src="/images/pgs/intro/tab_02_02.gif" alt="������� �򰡵���" /></a></li>
		<li><a href="#tg03"><img src="/images/pgs/intro/tab_02_03.gif" alt="������� ���μ���" /></a></li>
		<li><a href="#tg04"><img src="/images/pgs/intro/tab_02_04.gif" alt="��ǰ���������� DB" /></a></li>
		<li><a href="#tg05"><img src="/images/pgs/intro/tab_02_05.gif" alt="�׸������� ����" /></a></li>
	</ul>

	<div class="target-01">
		<h1 id="tg01">������� ���̵����</h1>
		<ul>
			<li>����� ���� ���Ӱ�����ǰ���� ������ �������� ������� Ư���� �ݿ��Ͽ� ������ ���̵���� ����</li>
			<li>�ǹ����� ���ظ� ���� ���� ��ǰ���� �ܰ迡�� ȿ�������� ������ �� �ֵ��� ���� ����</li>
		</ul>
	</div><!-- //target-01 -->

	<div class="target-02">
		<h1 id="tg02">������� �򰡵���</h1>
		<ul>
			<li>������� ���� �� �̽��� ���� ���̵���� �׸񿡼� ���׸� ����</li>
			<li>���׸� �򰡹���� �����ϰ� �׸� ���μ� ���</li>
			<li>�򰡽�Ʈ�� �ٿ�޾� ����� ������Ȳ�� �°� �׸� �� ������ ����, �����Ͽ� Ȱ��</li>
		</ul>
	</div><!-- //target-02 -->

	<div class="target-03">
		<h1 id="tg03">������� ���μ���</h1>
		<ul>
			<li>������� Ư���� �ݿ��� ���� ��ǰ���� ���μ����� �������� ���ߵ� ���Ӱ�����ǰ���� ���μ��� ����</li>
			<li>��ǰ���� �ܰ躰�� ���̵����, �򰡵����� Ȱ���ϴ� ����, ���μ�, �μ� �� ���� ���� ���� ���</li>
			<li>�� ���μ����� Ȱ���Ͽ� �ڻ� Ư���� �´� ���Ӱ�����ǰ���� ���μ����� �����ϰ� ���� ��ǰ���� �� Ȱ��</li>
		</ul>
	</div><!-- //target-03 -->

	<div class="target-04">
		<h1 id="tg04">��ǰ���������� DB</h1>
		<ul>
			<li>������� ���� ��ǰ�� ���Ӱ��ɼ��� �м��Ͽ� ���Ӱ�����ǰ�� ���� ���ظ� ���� ���̵�� ���⿡ ����</li>
			<li>���Ӱ��ɼ��� ����ų �� �ִ� ���� �� ����� �߱��ϰ� Ư��, ������ǰ, ������� �������� �����Ͽ� ���� �߼ұ�� �ǹ��ڰ� ���� ������ ���� ������ ���� �� �ֵ��� ����</li>
		</ul>
	</div><!-- //target-04 -->

	<div class="target-05">
		<h1 id="tg05">�׸������� ����</h1>
		<ul>
			<li>��ǰ���߿��� ������ ���� �ƴ϶� ���忡�� ������ �� �ִ� �׸������� �ֿ� ���� �� ��� ����</li>
			<li>������ �ֿ� �׸������� �̽� �Ұ� _ �귣�� ���� �� ���� ����</li>
		</ul>
	</div><!-- //target-05 -->

</div>

<!-- #include virtual = "/inc/btm.asp" -->