<%
pageNo = 2
sub_01 = 6
sub_02 = 1
%>

<!-- #include file="../inc/top_01.asp" -->
<!-- #include file="../inc/top_02.asp" -->

<div class="dst_13" id="prevMovElem">
	<ul>
		<li class="set">
			<div class="list">

				<h3 class="blind">����</h3><!-- ������: width="110" height="100" -->
				<div class="imgbox"><table><tr><td><img src="../images/pgs/proc/tcher/sylee.jpg" alt="�̼��� ����" /></td></tr></table></div>

				<ul>
					<li><span>�������</span>: <b>�����а���</b></li>
					<li><span>��米��</span>: <b>�̼���</b></li>

					<li class="normal"><a href="http://stream.iscu.ac.kr/stream/sample/2009/SD0404/5/SD0404_5_1.asp"><img src="../images/btns/lecture.gif" alt="���Ǻ���" /></a></li>
				</ul>
			</div>
		</li>

		<li class="set">
			<div class="list">

				<h3 class="blind">����</h3><!-- ������: width="110" height="100" -->
				<div class="imgbox"><table><tr><td></td></tr></table></div>

				<ul>
					<li><span>�������</span>: <b>������ǥ��</b></li>
					<li><span>��米��</span>: <b>���¼�</b></li>

					<li class="normal"><a href="#"><img src="../images/btns/lecture.gif" alt="���Ǻ���" /></a></li>
				</ul>
			</div>
		</li>

		<li class="set">
			<div class="list">

				<h3 class="blind">����</h3><!-- ������: width="110" height="100" -->
				<div class="imgbox"><table><tr><td><img src="../images/pgs/proc/tcher/sjkim.jpg" alt="�輱�� ����" /></td></tr></table></div>

				<ul>
					<li><span>�������</span>: <b>��å���� ����</b></li>
					<li><span>��米��</span>: <b>�輱��</b></li>

					<li class="normal"><a href="http://stream.iscu.ac.kr/stream/sample/2009/SD0201/5/SD0201_5_1.asp"><img src="../images/btns/lecture.gif" alt="���Ǻ���" /></a></li>
				</ul>
			</div>
		</li>

		<li class="set">
			<div class="list">

				<h3 class="blind">����</h3><!-- ������: width="110" height="100" -->
				<div class="imgbox"><table><tr><td></td></tr></table></div>

				<ul>
					<li><span>�������</span>: <b>�������ŷ�</b></li>
					<li><span>��米��</span>: <b>�ǿ���, Bert Wyatt</b></li>

					<li class="normal"><a href="http://stream.iscu.ac.kr/stream/sample/2009/SD0407/5/SD0407_5_1.asp"><img src="../images/btns/lecture.gif" alt="���Ǻ���" /></a></li>
				</ul>
			</div>
		</li>

		<li class="set">
			<div class="list">

				<h3 class="blind">����</h3><!-- ������: width="110" height="100" -->
				<div class="imgbox"><table><tr><td><img src="../images/pgs/proc/tcher/ytkim.jpg" alt="����� ����" /></td></tr></table></div>

				<ul>
					<li><span>�������</span>: <b>���</b></li>
					<li><span>��米��</span>: <b>�����</b></li>

					<li class="normal"><a href="http://stream.iscu.ac.kr/stream/sample/2009/SD0103/5/SD0103_5_1.asp"><img src="../images/btns/lecture.gif" alt="���Ǻ���" /></a></li>
				</ul>
			</div>
		</li>
	</ul>
</div>

<!-- #include file="../inc/bottom_01.asp" -->
<script type="text/javascript">
//<![CDATA[
$( '#prevMovElem a:has(img[src*="lecture.gif"])' ).each( function() {
	$( this ).click( function() {
		var href = $( this ).attr( 'href' );
		if( href == '#' ){
			alert( '�غ����Դϴ�.' );
			return false;
		}
		popupAbsMiddle( {
			url: href,
			width: 950,
			height: 700
		} );

		return false;
	} );
} );
//]]>
</script>
<!-- #include file="../inc/bottom_02.asp" -->
