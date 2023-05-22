<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>법무행정학과</title>

<!-- #include file="has/header_load_list.asp" -->

<script type="text/javascript">
//<![CDATA[

jQuery( document ).ready( function() {

	lawadm.normalMenu.init();
	lawadm.snbmenu.init();

	// 퀵메뉴 제어
	lawadm.QuickMenu.init( {
		appendTarget: jQuery( '#container' ), // 기준 부모 엘리먼트 [필수]
		quickMenuLayer: jQuery( '#quickMenuElem' ), // 퀵메뉴 레이어 [필수]
		interval: 1000, // setInterval 간격
		duration: 500, // 버튼 이동 속도
		easing: 'swing', // 버튼 애니메이션 스타일 ( swing | linear )
		gaps: {
			top: -277, // 상단 간격
			bottom: 450 // 하단 간격
		}
	} );

	// 테이블 colspan
	jQuery( 'tr.no_data' ).autoColspan();
	jQuery( 'table.tb_1 tbody tr:first td' ).css( 'border', 0 );
	jQuery( '.bk_3_pazing:first span:first' ).pushElem( '<em>.</em>' );

} );

//]]>
</script>
