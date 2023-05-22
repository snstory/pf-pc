/***************************************************************************************************
*** easing style list
*
* swing, [ easeInQuad, easeOutQuad, easeInOutQuad ] [ easeInCubic, easeOutCubic, easeInOutCubic ]  
* [ easeInQuart, easeOutQuart, easeInOutQuart ] [ easeInQuint, easeOutQuint, easeInOutQuint ]      
* [ easeInSine, easeOutSine, easeInOutSine ] [ easeInExpo, easeOutExpo, easeInOutExpo ]            
* [ easeInCirc, easeOutCirc, easeInOutCirc ] [ easeInElastic, easeOutElastic, easeInOutElastic ]   
* [ easeInBack, easeOutBack, easeInOutBack ] [ easeInBounce, easeOutBounce, easeInOutBounce]       
****************************************************************************************************/

( function( $ ) {

$.fRes_indexOf = function( arr ) {
	var res = -1;
	$.map( arr, function( n, i ) {
		if( this == n ){
			res = i;
		}
	} );
	return res;
};

$.fRes_urlMatcher = function() {
	
	var regexp = /\/\w+\/\w+\./gi;
	if( arguments.length && arguments[0] ){
		regexp = arguments[0];
	}
	var href = $( this ).attr( "href" );
	var mat = href.match( regexp );
	var wUrl = window.location.href;
	return wUrl.search( mat ) == -1 ? false : true;

}

$.fRes_useChecker = function( opt ) {
	if( ! $.fRes_nodeNameChk.call( this, opt.nodeName ) ) return;

	opt.url = opt.url ? opt.url : $( this ).attr( "action" );
	opt.type = opt.type ? opt.type : $( this ).attr( "method" );
	opt.data = opt.data ? opt.data : $( this ).serialize();

	var opt = $.extend( {

		url: null,
		type: null,
		data: null,
		dataType: "xml",
		success: null,

		Constructor: function() {

			$.ajax( {

				url: this.url,
				type: this.type,
				data: this.data,
				dataType: this.dataType,
				success: this.success == null ? this.callback : this.success

			} );

		},

		callback: function() {
			alert( "콜백함수가 지정되지 않았습니다." );
			return;
		}

	}, opt || {} );

	opt.Constructor();
}

$.fRes_nodeNameChk = function( nodeName ) {
	if( !$( this ).attr( "nodeName" ) ) return false;
	return $( this ).attr( "nodeName" ).toLowerCase() == nodeName.toLowerCase() ? true : false;
}

$.fRes_checkedList = function( selector ) {

	$( this ).bind( {
		click: function() {

			var checked = true;
			$( selector ).each( function() {
				if( ! $( this ).is( ":checked" ) ){
					var title = $( this ).attr( "title" );
					alert( title + "에 동의해 주세요." );
					$( this ).focus();
					checked = false;
					return false;
				}
			} );

			return checked;
		}
	} );
}

$.fRes_emailExp = function( value ) {
	return /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i.test( value );
}

$.extend( $.fn, {

	fRes_selected_Act: function( opt ) {

		if( !$.fRes_nodeNameChk.call( this, "select" ) ) return false;
		$this = $( this );
		var opt = $.extend( {

			target: null,
			Constructor: function() {

				if( opt.target == null ) return false;
				opt.selfVal = $this.find( "option:eq(0)" ).val();

				$this.bind( {
					change: function() {
						var valu = $( this ).val();

						if( valu == opt.selfVal ){
							opt.target.removeAttr( "readonly" );
							opt.target.val( "" );
							opt.target.focus();
						} else {
							opt.target.attr( "readonly", "readonly" );
							opt.target.val( $( this ).val() );
						}
					}
				} );
			}

		}, opt || {} );

		opt.Constructor();
		return this;
	},

	fRes_data_dbl_checked: function( opt ) {
		if( !$( this ).attr( "id" ) ) return false;

		$this = $( this );

		opt.title = $this.attr( "title" );

		var opt = $.extend( {

			nodeName: null,
			email: null,
			email_inp: { a: null, b: null },
			url: null,
			type: null,
			data: null,
			dataType: "xml",
			context: null,
			success: null,

			Constructor: function() {
				opt.bind.call( $this );
			},
			
			bind: function() {
				$( this ).bind( {
					click: function() {

						if( opt.context.val() == "" ){
							alert( opt.title + " 을(를) 입력해 주세요" );
							opt.context.focus();
							return false;
						}

						if( opt.email ){

							if( opt.email_inp.b.val() == "" ){
								alert( "직접입력하시거나 우측의 이메일 목록에서 선택해 주세요" );
								opt.email_inp.b.focus();
								return false;
							}

							opt.emailVal = opt.email_inp.a.val() + "@" + opt.email_inp.b.val();

							if( !$.fRes_emailExp( opt.emailVal ) ){
								alert( opt.emailVal + " 는 유효하지 않은 이메일 형식 입니다.\n\n형식에 맞게 입력하였는지 확인해 주세요." );
								opt.context.focus();
								return false;
							}
						}

						$.fRes_useChecker.call( $this, {

							nodeName: opt.nodeName,
							url: opt.url,
							type: opt.type,
							data: opt.email ? opt.data + opt.emailVal : opt.data + opt.context.val(),
							dataType: opt.dataType,
							success: opt.success

						} );

						return false;
					}
				} );
			}

		}, opt || {} );

		opt.Constructor();
		return this;
	},

	fRes_snbEvent: function( opt ) {

		opt.context = $( this );
		opt.topUlCls = opt.context.attr( "class" );

		var opt = $.extend( {

			animated: true, // 버튼에 애니메이션을 적용할 경우. true: 적용, false: 비적용
			dura: 1000, // 애니메이션 속도
			easi: "easeInOutSine", // 애니메이션 스타일
			onClass: "on", // 메뉴 li 에 적용될 스타일
			sttClass: "now_on", // 현재 활성화 된 메뉴에 추가할 class 명
			hover_node: "li",
			paOnClass: "pa_on",
			regexp: null,
			absNoBdr: null,
			
			cursor: null,

			Constructor: function() {
				this.staticAdd.call( opt.context );

				if( opt.absNoBdr ){
					opt.context.find( "li:eq(0)" ).addClass( opt.absNoBdr );
				}
			},

			staticAdd: function() { // 고정메뉴 클래스 추가

				$( this ).bind( {
					mouseleave: function() {
						delete opt.cursor;
						opt.dynProc.call( $( this ).find( "a." + opt.sttClass + ":last" ) );
					}
				} );

				$.each( $( "a", this ), function() {

					if( $.fRes_urlMatcher.call( this, opt.regexp ) ){
						$( this ).addClass( opt.sttClass );
					}

					$( this ).parent().bind( {
						mouseenter: function() {

							$( this ).addClass( opt.onClass );
							$anc = $( this ).find( "a:eq(0)" );
							if( opt.cursor == $anc ) return;

							delete opt.cursor;
							opt.cursor = $anc;
							opt.dynProc.call( $anc );
						},

						mouseleave: function() {
							$( this ).removeClass( opt.onClass );
						}
					} );
				} );

				// 초기 실행.
				opt.dynProc.call( $( this ).find( "a." + opt.sttClass + ":last" ) );
			},
			
			dynProc: function() {
				opt.context.find( opt.hover_node ).each( function() {
					if( !$( this ).hasClass( opt.onClass ) ){
						opt.hoverEvt.call( $( this ).find( "a:eq(0)" ), 0 );
					}
				} );

				opt.paHoverProc.call( this );
			},

			paHoverProc: function() {
				$( this ).parentsUntil( "ul." + opt.topUlCls ).each( function() {
					if( $( this ).attr( "nodeName" ).toLowerCase() == opt.hover_node ){
						$anc = $( this ).find( "a:eq(0)" );
						opt.hoverEvt.call( $anc, 1 );
					}
				} );
			},

			hoverEvt: function( bool ) {

				if( !$( this ).find( "img" ).size() ){

					if( bool ){
						$( this ).addClass( opt.onClass );
					} else {
						$( this ).removeClass( opt.onClass );
					}

				} else {

					var img = $( this ).find( "img:eq(0)" );

					img.fRes_imgChange( {
						overname: "_on",
						stat: bool,
						animated: bool,
						speed: opt.dura,
						strOpac: "0.6",
						desOpec: "1"
					 } );

				}
			}
			
		}, opt || {} );

		opt.Constructor();
		return this;

	},

	fRes_mainTabMenu: function( opt ) {

		if( opt.useId ){ // id 참조일 경우.
			if( !$( this ).attr( "id" ) ) return;
		}
		
		opt.context = $( this );
		var opt = $.extend( {

			useId: true,
			eventType: "show",
			group: {
				box: "div",
				tab: "h1 > a",
				listGrp: "ul",
				list: "li",
				more: "a.more",
				eas: {
					list: "swing",
					tab: "swing"
				},
				dura: {
					list: 500,
					tab: 500
				}
			},

			dyn: {
				nowTab: 0
			},

			Constructor: function() {
				this.fns.tebEventLoad.call( opt.context );
			},

			fns: {
				tebEventLoad: function() {
					this.find( opt.group.box ).each( function( i ) {

						$.data( this, "nowTab", i );
						// 탭 버튼에 이벤트 로드
						opt.bind.hoverBtn.call( $( this ).find( opt.group.tab + ":eq(0)" ), i );

						if( i == 0){ // 초기 셋팅
							opt.dyn.nowTab = i;
							opt.fns.menuEventLoad.call( opt.context );
						}

					} );
				},

				menuEventLoad: function() {
					this.find( opt.group.box ).each( function( i ) {

						$( this ).find( opt.group.listGrp ).each( function() {
							$( this ).hide();
						} );

						if( $.data( this, "nowTab" ) == opt.dyn.nowTab ){

							$( this ).css( "zIndex", 2 );

							// more
							$( this ).find( opt.group.more + ":eq(0)" ).show();

							// tab
							$( this ).find( opt.group.tab + " > img:eq(0)" ).fRes_imgChange( {
								overname: "_on",
								stat: true,
								animated: true,
								speed: opt.group.dura.tab,
								strOpac: "0.6",
								desOpec: "1"
							} );

							// list
							$( this )
								.find( opt.group.listGrp + ":eq(0)" )
								.css( "opacity", "1.0" )
								.fRes_listViewer( {
									eventType: opt.eventType,
									loaded: true,
									stepby: true,
									speed: opt.group.dura.list,
									easing: opt.group.eas.list
								} );

						} else {

							$( this ).css( "zIndex", 1 );

							// more
							$( this ).find( opt.group.more + ":eq(0)" ).hide();

							// tab
							$( this ).find( opt.group.tab + " > img:eq(0)" ).fRes_imgChange( {
								overname: "_on",
								stat: false,
								animated: false,
								speed: 0,
								strOpac: "0.6",
								desOpec: "1"
							} );

							// list
							$( this )
								.find( opt.group.listGrp + ":eq(0)" )
								.css( "opacity", "1.0" )
								.fRes_listViewer( {
									eventType: opt.eventType,
									loaded: false,
									stepby: true,
									speed: opt.group.dura.list,
									easing: opt.group.eas.list
								} );

						}

					} );
				}
			},

			bind: {
				hoverBtn: function( nowTab ) {
					$( this ).bind( {

						mouseover: function() {
							if( opt.dyn.nowTab == nowTab ) return;
							opt.dyn.nowTab = nowTab;
							opt.fns.menuEventLoad.call( opt.context );
						}

					} );
				}
			}

		}, opt || {} );

		opt.Constructor();

	},

	fRes_listViewer: function( opt ) {

		opt.context = $( this );

		var opt = $.extend( {

			eventType: "show", // 이벤트 타입, 기본: show
			loaded: true, // 활성화: true, 비활성화: false
			stepby: true, // 하나씩 적용: true, 한번에 적용: false
			speed: 300,
			easing: "easeInOutSine",

			fns: {
				Constructor: function() {
					opt.loadEvent.call( opt.context, opt.loaded );
				}
			},
			
			loadEvent: function( loaded ) {

				if( loaded ){ // 메뉴 활성화 일 경우

					if( opt.stepby ){ // 개별적용일 경우

						$( this ).stop().hide()[ opt.eventType ]( {
							duration: opt.speed,
							easing: opt.easing,
							complete: function() {
								var nodeN = $( this ).attr( "nodeName" ).toLowerCase();
								var next = $( this ).next( $( this ).attr( nodeN ) );

								if( !$( next ).attr( "nodeName" ) ) return;

								if( $( next ).attr( "nodeName" ).toLowerCase() == nodeN ){
									$( next ).fRes_listViewer( {
										eventType: opt.eventType,
										loaded: true,
										stepby: true,
										speed: opt.speed,
										easing: opt.easing
									} );
								}
							}
						} );

					} else { // 한번에 적용할 경우
						$( this ).each( function() {
							$( this ).stop().hide()[ opt.eventType ]( opt.speed, opt.easing );
						} );
					}

				} else { // 메뉴 비활성화 일 경우

					$( this ).hide();

				}

			}

		}, opt || {} );

		opt.fns.Constructor();
		return this;
	},

	// 롤오버 이미지 적용
	fRes_imgChange: function( pat ) {

		var pat = $.extend( {
			overname: "_on",
			stat: false,
			animated: false,
			speed: 500,
			strOpac: "0.5",
			desOpec: "1"
		}, pat || {} );

		if( pat.stat ){
			if( $( this ).attr( "src" ).search( pat.overname + "." ) != -1 ) return;
		}

		var srcArray = $( this ).attr( "src" ).split( "/" );
		var fileName = srcArray.pop();
		var srcNewStr = ""; // 이미지명 제외한 경로.
		$.map( srcArray, function( n, i ){
			if( i < srcArray.length ){
				srcNewStr += n + "/";
			}
		} );

		var fileSArr = fileName.split( "." );
		var ext = "." + fileSArr[ fileSArr.length - 1 ];
		var fileName = fileName.replace( ext,"" );
		var cFName = fileName.replace( pat.overname,"" );

		if( pat.stat ){
			$( this ).attr( "src", srcNewStr + cFName + pat.overname + ext );
		} else {
			$( this ).attr( "src", srcNewStr + cFName + ext );
		}

		if( pat.animated ){

			$( this ).stop().css( { opacity: pat.strOpac } ).animate( {
				opacity: pat.desOpec
			}, pat.speed );

		} else {

			$( this ).stop().css( { opacity: pat.desOpec } );

		}

		return this;

	}

} );

} )( jQuery );
