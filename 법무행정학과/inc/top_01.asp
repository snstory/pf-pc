<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>���������а�</title>

<!-- #include file="has/header_load_list.asp" -->

<script type="text/javascript">
//<![CDATA[

jQuery( document ).ready( function() {

	lawadm.normalMenu.init();
	lawadm.snbmenu.init();

	// ���޴� ����
	lawadm.QuickMenu.init( {
		appendTarget: jQuery( '#container' ), // ���� �θ� ������Ʈ [�ʼ�]
		quickMenuLayer: jQuery( '#quickMenuElem' ), // ���޴� ���̾� [�ʼ�]
		interval: 1000, // setInterval ����
		duration: 500, // ��ư �̵� �ӵ�
		easing: 'swing', // ��ư �ִϸ��̼� ��Ÿ�� ( swing | linear )
		gaps: {
			top: -277, // ��� ����
			bottom: 450 // �ϴ� ����
		}
	} );

	// ���̺� colspan
	jQuery( 'tr.no_data' ).autoColspan();
	jQuery( 'table.tb_1 tbody tr:first td' ).css( 'border', 0 );
	jQuery( '.bk_3_pazing:first span:first' ).pushElem( '<em>.</em>' );

} );

//]]>
</script>
