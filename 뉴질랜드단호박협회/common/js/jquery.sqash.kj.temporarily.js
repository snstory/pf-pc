
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

		index: '<h1>임시메뉴</h1>'
			+ '<div>'
				+ '<h2><a href="/assoc/assoc_01.asp">뉴질랜드 단호박협회</a></h2>'
				+ '<ul>'
					+ '<li><a href="/assoc/assoc_01.asp">협회소개</a></li>'
					+ '<li><a href="/assoc/assoc_02.asp">문의하기</a></li>'
				+ '</ul>'

				+ '<h2><a href="/intro/intro_01.asp">단호박 소개</a></h2>'
				+ '<ul>'
					+ '<li><a href="/intro/intro_01.asp">단호박</a></li>'
					+ '<li><a href="/intro/intro_02.asp">단호박 영양</a></li>'
					+ '<li><a href="/intro/intro_03.asp">다이어트/체중관리를위한단호박</a></li>'
					+ '<li><a href="/intro/intro_04.asp">우리아이영양관리/성장관리 …</a></li>'
					+ '<li><a href="/intro/intro_05.asp">성인들의건강관리를위한단호박</a></li>'
					+ '<li><a href="/intro/intro_06.asp">뉴질랜드 단호박</a></li>'
				+ '</ul>'

				+ '<h2><a href="/cook/cook_01_01.asp">단호박 요리</a></h2>'
				+ '<ul>'
					+ '<li>'
						+ '<h3><a href="/cook/cook_01_01.asp">블로거 요리법</a></h3>'
						+ '<ul>'
							+ '<li><a href="/cook/cook_01_01.asp">갱씨의 요리법</a></li>'
							+ '<li><a href="/cook/cook_01_02.asp">잠꾸러기의 요리법</a></li>'
						+ '</ul>'
					+ '</li>'
					+ '<li><a href="/cook/cook_02.asp">추천 기본요리법</a></li>'
					+ '<li><a href="/cook/cook_03.asp">단호박 고르는 법</a></li>'
					+ '<li><a href="/cook/cook_04.asp">단호박 보관 법</a></li>'
					+ '<li><a href="/cook/cook_05.asp">단호박 기본 요리팁</a></li>'
				+ '</ul>'

				+ '<h2><a href="/mania/mania_01.asp">단호박 매니아</a></h2>'
				+ '<ul>'
					+ '<li><a href="/mania/mania_01.asp">한줄토크</a></li>'
					+ '<li><a href="/mania/mania_02.asp">추천! 단호박이 맛있는 집</a></li>'
					+ '<li>'
						+ '<h3><a href="/mania/mania_03_01.asp">단호박 쿠킹 클래스</a></h3>'
						+ '<ul>'
							+ '<li><a href="/mania/mania_03_01.asp">쿠킹클래스 신청하기</a></li>'
							+ '<li><a href="/mania/mania_03_02.asp">쿠킹클래스 후기</a></li>'
						+ '</ul>'
					+ '</li>'
				+ '</ul>'

				+ '<h2><a href="/news/news_01.asp">뉴스/이벤트</a></h2>'
				+ '<ul>'
					+ '<li><a href="/news/news_01.asp">이벤트</a></li>'
					+ '<li><a href="/news/news_02.asp">공지사항</a></li>'
					+ '<li><a href="/news/news_03.asp">보도자료</a></li>'
				+ '</ul>'

				+ '<h2><a href="/bnss/bnss_01.asp">업계회원코너</a></h2>'
				+ '<ul>'
					+ '<li><a href="/bnss/bnss_01.asp">공지사항</a></li>'
					+ '<li><a href="/bnss/bnss_02.asp">뉴질랜드 단호박 뉴스</a></li>'
					+ '<li><a href="/bnss/bnss_03.asp">통계자료</a></li>'
				+ '</ul>'

				+ '<h2><a href="/member/login.asp">멤버쉽</a></h2>'
				+ '<ul>'
					+ '<li><a href="/member/login.asp">로그인</a></li>'
					+ '<li><a href="/member/idpw.asp">아이디/비밀번호찾기</a></li>'
					+ '<li><a href="/member/join_01.asp">회원가입</a></li>'
					+ '<li><a href="#">회원정보수정</a></li>'
					+ '<li><a href="/member/out.asp">회원탈퇴</a></li>'
				+ '</ul>'

				+ '<h2><a href="/etc/etc_01.asp">기타</a></h2>'
				+ '<ul>'
					+ '<li><a href="/etc/etc_01.asp">사이트맵</a></li>'
					+ '<li><a href="/etc/etc_02.asp">이용약관</a></li>'
					+ '<li><a href="/etc/etc_03.asp">개인정보취급방침</a></li>'
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
			$( "<span style='color:green;font-weight:normal;'> → "+ newHref +"</span>" ).insertAfter( this );
			return this;
		}

	} );

} )( jQuery );

