
var sqashTempletMenu = ( function( $ ) {

	var target = 'body';
	var opened = true;
	var showUrl = false;
	var cssStyle = {
		position: 'absolute',
		left: 10,
		top: 10,
		zIndex: 10000,
		padding: 20,
		backgroundColor: '#fff',
		borderRadius: '1em 1em 1em 1em',
		overflow: 'hidden'
	};

	function Constructor( opt ) {

		this.target = opt.target || $( target );
		this.opened = opt.opened == undefined ? opened : opt.opened;
		this.cssStyle = opt.cssStyle || cssStyle;
		this.showUrl = opt.showUrl == undefined ? showUrl : opt.showUrl;
		this.init();

	}

	Constructor.prototype = {

		init: function() {

			this.contentStyle.call( $( '<div >' )
				.css( this.cssStyle )
				.html( this.index )
				.appendTo( this.target ), this );
		},

		contentStyle: function( $th ) {

			if( !$th.opened ) $( this ).find( '> div' ).hide();

			$( this ).find( '> div > h2' ).css( {
				fontWeight: 'bold',
				paddingBottom: '.3em'
			} ).end().find( '> div > ul' ).css( {
				padding: '0 .5em .9em 1.2em'
			} ).end().find( '> div > ul > li' ).css( {
				padding: '.1em 0'
			} ).end().find( 'h3' ).css( {
				padding: '.2em 0 .2em',
				fontWeight: 'bold'
			} ).end().find( 'h3 + ul' ).css( {
				padding: '0 .8em .8em 1.2em'
			} ).end().find( 'h3 + ul > li a' ).css( {
				fontSize: '11px'				
			} ).end().find( ' > h1' ).css( {
				paddingBottom: '.5em',
				cursor: 'pointer',
				fontSize: '1.2em',
				fontWeight: 'bold',
				color: '#532421'
			} ).bind( {
				click: function(){
					$( this ).next().toggle();
					return false;
				}
			} ).end().find( 'a' ).each( function() {
				if( $th.showUrl ) $( this ).samijang_addAhref();
			} );
		},

		index: '<h1>�ӽø޴�</h1>'
			+ '<div>'
				+ '<h2><a href="/assoc/assoc_01.asp">�������� ��ȣ����ȸ</a></h2>'
				+ '<ul>'
					+ '<li><a href="/assoc/assoc_01.asp">��ȸ�Ұ�</a></li>'
					+ '<li><a href="/assoc/assoc_02.asp">�����ϱ�</a></li>'
				+ '</ul>'

				+ '<h2><a href="/intro/intro_01.asp">��ȣ�� �Ұ�</a></h2>'
				+ '<ul>'
					+ '<li><a href="/intro/intro_01.asp">��ȣ��</a></li>'
					+ '<li><a href="/intro/intro_02.asp">��ȣ�� ����</a></li>'
					+ '<li><a href="/intro/intro_03.asp">���̾�Ʈ/ü�߰��������Ѵ�ȣ��</a></li>'
					+ '<li><a href="/intro/intro_04.asp">�츮���̿������/������� ��</a></li>'
					+ '<li><a href="/intro/intro_05.asp">���ε��ǰǰ����������Ѵ�ȣ��</a></li>'
					+ '<li><a href="/intro/intro_06.asp">�������� ��ȣ��</a></li>'
				+ '</ul>'

				+ '<h2><a href="/cook/cook_01_01.asp">��ȣ�� �丮</a></h2>'
				+ '<ul>'
					+ '<li>'
						+ '<h3><a href="/cook/cook_01_01.asp">��ΰ� �丮��</a></h3>'
						+ '<ul>'
							+ '<li><a href="/cook/cook_01_01.asp">������ �丮��</a></li>'
							+ '<li><a href="/cook/cook_01_02.asp">��ٷ����� �丮��</a></li>'
						+ '</ul>'
					+ '</li>'
					+ '<li><a href="/cook/cook_02.asp">��õ �⺻�丮��</a></li>'
					+ '<li><a href="/cook/cook_03.asp">��ȣ�� ���� ��</a></li>'
					+ '<li><a href="/cook/cook_04.asp">��ȣ�� ���� ��</a></li>'
					+ '<li><a href="/cook/cook_05.asp">��ȣ�� �⺻ �丮��</a></li>'
				+ '</ul>'

				+ '<h2><a href="/mania/mania_01.asp">��ȣ�� �ŴϾ�</a></h2>'
				+ '<ul>'
					+ '<li><a href="/mania/mania_01.asp">������ũ</a></li>'
					+ '<li><a href="/mania/mania_02.asp">��õ! ��ȣ���� ���ִ� ��</a></li>'
					+ '<li>'
						+ '<h3><a href="/mania/mania_03_01.asp">��ȣ�� ��ŷ Ŭ����</a></h3>'
						+ '<ul>'
							+ '<li><a href="/mania/mania_03_01.asp">��ŷŬ���� ��û�ϱ�</a></li>'
							+ '<li><a href="/mania/mania_03_02.asp">��ŷŬ���� �ı�</a></li>'
						+ '</ul>'
					+ '</li>'
				+ '</ul>'

				+ '<h2><a href="/news/news_01.asp">����/�̺�Ʈ</a></h2>'
				+ '<ul>'
					+ '<li><a href="/news/news_01.asp">�̺�Ʈ</a></li>'
					+ '<li><a href="/news/news_02.asp">��������</a></li>'
					+ '<li><a href="/news/news_03.asp">�����ڷ�</a></li>'
				+ '</ul>'

				+ '<h2><a href="/bnss/bnss_01.asp">����ȸ���ڳ�</a></h2>'
				+ '<ul>'
					+ '<li><a href="/bnss/bnss_01.asp">��������</a></li>'
					+ '<li><a href="/bnss/bnss_02.asp">�������� ��ȣ�� ����</a></li>'
					+ '<li><a href="/bnss/bnss_03.asp">����ڷ�</a></li>'
				+ '</ul>'

				+ '<h2><a href="/member/login.asp">�����</a></h2>'
				+ '<ul>'
					+ '<li><a href="/member/login.asp">�α���</a></li>'
					+ '<li><a href="/member/idpw.asp">���̵�/��й�ȣã��</a></li>'
					+ '<li><a href="/member/join_01.asp">ȸ������</a></li>'
					+ '<li><a href="#">ȸ����������</a></li>'
					+ '<li><a href="/member/out.asp">ȸ��Ż��</a></li>'
				+ '</ul>'

				+ '<h2><a href="/etc/etc_01.asp">��Ÿ</a></h2>'
				+ '<ul>'
					+ '<li><a href="/etc/etc_01.asp">����Ʈ��</a></li>'
					+ '<li><a href="/etc/etc_02.asp">�̿���</a></li>'
					+ '<li><a href="/etc/etc_03.asp">����������޹�ħ</a></li>'
				+ '</ul>'
			+ '</div>'

	}

	return {
		init: function( opt ) {
			var con = new Constructor( opt || {} );
		}
	}

} )( jQuery );

( function( $ ) {

	$.samijang_resetHref = function( href ) {
		var regexp = /(\w+):\/\/([\w.]+)\//;
		return href.replace( regexp, "/" );
	}

	$.extend( $.fn, {

		samijang_addAhref: function() {
			newHref = $.samijang_resetHref( $( this ).attr( "href" ) );
			$( "<span style='color:green;font-weight:normal;'> �� "+ newHref +"</span>" ).insertAfter( this );
			return this;
		}

	} );

} )( jQuery );

