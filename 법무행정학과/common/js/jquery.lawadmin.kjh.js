/*
*	lawadmin.iscu.ac.kr 의 확장 플러그인 모음
*	(추가해야 할 소스 추가는 common.js 를 사용해 주시기 바랍니다)
*/

var lawadm = window.lawadm = {};

( function($) {

lawadm.normalTabMenu = function() {}
lawadm.normalTabMenu.init = function( opt ) {
	var conn = new lawadm.normalTabMenu;
	conn.setting( opt ), conn.init();
}
lawadm.normalTabMenu.prototype = {

	tabs: [],
	list: [],
	onCls: null,

	setting: function( opt ) {
		var opt = $.extend( {
			tabs: 'div.main_content_A:first dt a',
			list: 'div.main_content_A:first dd',
			onCls: 'on'
		}, opt || {} );

		this.tabs = $( opt.tabs ).toArray()
		, this.list = $( opt.list ).toArray()
		, this.onCls = opt.onCls;

		if( !this.tabs.length || !this.list.length || ( this.tabs.length != this.list.length ) ) return false;
	},

	binding: function() {
		var $th = this;
		$.map( this.tabs, function( n,i ) {
			$( n ).bind( {
				mouseenter: function() {
					$( $th.tabs ).not( this ).removeClass( $th.onCls );
					$( $th.list ).hide();

					if( !$( this ).hasClass( $th.onCls ) ){
						$( this ).addClass( $th.onCls );
					}
					$( this ).parent().next().show();
				}
			} );
		} );
	},

	init: function() {
		this.binding();
		$( this.tabs[0] ).mouseenter();
	}
}


lawadm.snbmenu = function() {}
lawadm.snbmenu.init = function( opt ) {
	var conn = new lawadm.snbmenu;
	conn.setting( opt ), conn.init();
}
lawadm.snbmenu.prototype = {

	context: null,
	items: [],
	arrow: null,

	staticNo: 0,
	keyNo: 0,

	prop: {
		duration: 300,
		onCls: 'on',
		gab: { left: 5, top: -5 },
		easing: 'easeInOutQuart'
	},

	setting: function( opt ) {
		var opt = $.extend( {
			context: '#snb-inner div.snb_menu:first',
			items: '#snb-inner .snb_menu ul a',
			arrow: '#snb-inner .snb_menu span.arrow'
		}, opt || {} );

		this.context = $( opt.context )
		,this.items = $( opt.items ).toArray()
		,this.arrow = $( opt.arrow )
		,this.arrow.hide();
	},

	init: function() {
		this.itemsBinding( this );
	},

	itemsBinding: function() {
		var $th = this;
		$.map( this.items, function( n,i ) {

			$th.arrow.clone().hide().insertBefore(n);
			$(n).prev().data( 'end', parseInt( $(n).prev().css('top'), 10 ) );
			$(n).prev().data( 'stay', parseInt( $(n).prev().css('top'), 10 ) - $th.prop.gab.top );
			$(n).prev().css( 'top', $(n).prev().data( 'stay' ) );

			if( $(n).hasClass( $th.prop.onCls ) ){
				$th.staticNo = i
				,$(n).prev().show().stop().animate( {
					top: $(n).prev().data( 'end' )
				}, $th.prop.duration, $th.prop.easing );
			}

			$(n).data( 'keyNo', i ).bind( {
				mouseenter: function() {
					$th.keyNo = $( this ).data( 'keyNo' ), $th.engine();
				}
			} );
		} );

		this.context.bind( {
			mouseleave: function() {
				$th.keyNo = $th.staticNo, $th.engine();
			}
		} );

	},

	engine: function() {
		var $th = this;
		$.map( this.items, function( n,i ) {
			if( $th.keyNo == $( n ).data( 'keyNo' ) ){
				$( n ).prev().show().stop().animate( {
					top: $( n ).prev().data( 'end' )
				}, $th.prop.duration, $th.prop.easing );

				if( !$( n ).hasClass( $th.prop.onCls ) ){
					$( n ).addClass( $th.prop.onCls );
				}
			} else {
				$( n ).prev().css( {
					top: $( n ).prev().data( 'stay' )
				} ).hide();

				if( $( n ).hasClass( $th.prop.onCls ) ){
					$( n ).removeClass( $th.prop.onCls );
				}
			}
		} );
	}
}

lawadm.normalMenu = function() {}
lawadm.normalMenu.init = function( opt ) {
	var conn = new lawadm.normalMenu;
	conn.setting( opt ), conn.init();
}
lawadm.normalMenu.prototype = {

	elements: {
		items: [],
		context: null
	},
	
	prop: {
		staticNo: -1,
		keyNo: -1,
		onCls: 'on',

		opacity: {
			on: 1,
			off: .8
		}
	},

	setting: function( opt ) {
		var opt = $.extend( {
			context: '#header-inner .lnb:first',
			items: '#header-inner .lnb:first a'
		}, opt || {} );

		this.elements.items = $( opt.items ).toArray();
		this.elements.context = $( opt.context );
	},

	init: function() {
		this.binding()
		,this.prop.keyNo = this.prop.staticNo
		,this.engine();
	},

	binding: function() {
		var $th = this;
		$.map( this.elements.items, function( n,i ) {
			if( $(n).hasClass( $th.prop.onCls ) ){
				$th.prop.staticNo = i;
			}

			$(n).data( 'keyNo', i ).bind( {
				mouseenter: function() {
					$th.prop.keyNo = $(this).data('keyNo'), $th.engine();
				}
			} );
		} );

		this.elements.context.bind( {
			mouseleave: function() {
				$th.prop.keyNo = $th.prop.staticNo, $th.engine();
			}
		} );
	},

	engine: function() {
		var $th = this;
		$.map( this.elements.items, function( n,i ) {
			if( $(n).data('keyNo') == $th.prop.keyNo ){
				$(n).css( 'opacity', $th.prop.opacity.on );
			} else{
				$(n).css( 'opacity', $th.prop.opacity.off );
			}
		} );
	}
}

} )( jQuery );

// 퀵메뉴 제어
lawadm.QuickMenu = ( function( $ ) {

	var interval = 300;
	var duration = 500;
	var easing = 'swing';
	var gaps = {
		top: 30,
		bottom: 100
	}

	function Constructor( opt ) {
		this.appendTarget = opt.appendTarget || $( 'body' );
		this.quickMenuLayer = opt.quickMenuLayer;
		this.interval = opt.interval == undefined ? interval : opt.interval < 300 ? interval : opt.interval;
		this.duration = opt.duration == undefined ? duration : opt.duration < interval ? opt.interval : opt.duration;
		this.gaps = $.extend( gaps, opt.gaps || {} );
		this.init();
	}

	Constructor.prototype = {

		quickLayer: null,
		offsetPa: null,
		intervalId: null,

		init: function() {
			// if( !this.appendTarget.attr( 'nodeName' ) ) return false;

			this.appendToLayerSet();
			this.offSetParent();
			// this.btnBinding();
			this.rollingStart();
		},

		appendToLayerSet: function() {
			this.quickLayer = this.quickMenuLayer.appendTo( this.appendTarget );
		},

		offSetParent: function() {
			this.offsetPa = this.appendTarget.offset();
		},

		btnBinding: function() {

			$( 'ul:first img', this.quickLayer ).imgHovers();
			$( 'a.gotop:first', this.quickLayer ).bind( {
				click: function() {
					$( document ).scrollTop(0);
					return false;
				}
			} );
		},

		rollingStart: function() {
			try{
				window.contextFunc = this;
				this.intervalId = window.setInterval( this.resetPosition, this.interval );
			}
			catch( e ){}
		},

		resetPosition: function() {
			var $th = window.contextFunc;
			var top = $( document ).scrollTop() + $th.offsetPa.top + $th.gaps.top;
			var bottom = $( document ).height() - ( $( document ).height() - $th.appendTarget.height() + $th.gaps.bottom );
			top = top > bottom ? bottom : top;
			$( $th.quickLayer ).stop().animate( { top: top }, $th.duration, $th.easing );
		}
	}

	return {
		init: function( opt ) {
			var con = new Constructor( opt || {} );
		}
	}

} )( jQuery );

( function( $ ) {

	$.extend( $.fn, {
		
		autoColspan: function() {
			var colgroupLen = $( this ).parents( 'table:first' ).find( 'colgroup:first > col' ).size();
			$( '>td:first', this ).attr( 'colspan', colgroupLen );
		},

		pushElem: function( elem ) {
			$( '>*', this ).not(':first').each( function() {
				$( elem ).insertBefore( this );
			} );
		},

		posVcProc: function( opt ) {
			var opt = $.extend( {
				parent: null
			}, opt || {} );

			var pH = opt.parent ? $( opt.parent ).height() : $( this ).parent().height();
			var mH = $( this ).height();

			if( pH > mH ){
				var top = parseInt( pH * .5 ) - parseInt( mH * .5 );

				$( this ).css( {
					position: 'relative',
					top: top
				} );
			}
		},

		eecuteamProc: function( opt ) {

			var $th = $( this );

			var opt = $.extend( {
				menu: $th.find( 'select:first' ),
				tabs: $th.find( 'ul.tab:first' ),
				list: $th.find( 'ul.list:first' ),
				tableLayer: $( '#eecuteamBGLayer' )
			}, opt || {} );

			opt.tableLayer.find( '>div' ).hide();

			opt.menu.bind( {
				change: function() {
					engine( $( this ).val() );
				}
			} );

			engine( 2012 );

			function engine( val ) {
				opt.list.find( 'li' ).hide();
				var fnd = opt.list.find( 'li:has(img[alt*='+val+'])' );
				fnd.show();

				if( fnd.find('u').size() ) {
					opt.tabs.find( 'li:eq(0)' ).show().find( 'b:first' ).text(val);

					opt.tableLayer.find( '>div' ).hide();
					opt.tableLayer.find( '>div:has(img[alt*='+val+'])' ).show();

				} else {
					opt.tabs.find( 'li:eq(0)' ).hide();
				}

				if( fnd.find('b').size() ) {
					opt.tabs.find( 'li:eq(1)' ).show().find( 'b:first' ).text(val);
				} else {
					opt.tabs.find( 'li:eq(1)' ).hide();
				}
			}
		}

	} );

} )( jQuery );

// 팝업레이어
lawadm.popupLayer = ( function( $ ) {

	function Conn( opt ) {
		this.opt = $.extend( {
			context: null,
			eventType: 'click',
			duration: 150,
			duration_layer: 300,
			closeBtn: null,
			opacity: .8,
			addClass: { position: 'relative', top: 72, display: 'none' },
			topGab: 72,
			divi_key: null
		}, opt || {} );

		if( lawadm.isie60 ){
			this.opt.duration = 0;
			//this.opt.duration_layer = 0;
		}

		if( this.opt.context == null ) return false;
		if( this.opt.divi_key == null ){
			this.opt.divi_key = 'ranid_' + parseInt( Math.random() * 100000000 );
		}
		$( $( this.opt.context ).attr( 'href' ) ).hide();
		lawadm.view_layer_elem = null;
		this.init();
	}

	Conn.prototype = {

		layer: null,
		wrapper: null,
		divi_key_id: null,
		closeBtn: null,

		init: function() {
			this.binding();
			// this.positions();
		},

		positions: function() {
			var $th = this;
			$( window ).scroll( function() {
				try{
					if( $th.layer.css( 'display' ).toLowerCase() == 'block' ){
						$th.layer.stop().animate( {
							top: $( document ).scrollTop() + $th.opt.topGab
						}, $th.opt.duration_layer );
					}
				}
				catch(e){}
			} );
		},

		setting: function() {
			var $th = this;
			this.layer = $( $( this.opt.context ).attr( 'href' ) );
			this.divi_key_id = $( this.layer ).attr( 'id' ) + this.opt.divi_key;

			if( !$( this.divi_key_id ).attr( 'id' ) ){
				this.layer.css( this.opt.addClass );
				if( this.opt.closeBtn != null ){
					this.closeBtn = this.layer.find( this.opt.closeBtn + ':first' );
				}

				$( this.closeBtn ).click( function() {
					$th.hideLayer();
					return false;
				} );

				this.wrapper = $( '<div id="'+ this.divi_key_id +'" style="display:none;position:absolute;left:0px;top:0px;z-index:1000;width:100%;height:100%;"><div class="bg_layer_elem" style="display:none;position:absolute;left:0px;top:0px;width:100%;height:100%;background:#000;"></div></div>' ).appendTo( 'body' );
				this.wrapper.append( this.layer );
			}
		},

		binding: function() {
			var $th = this;
			$( this.opt.context )[ this.opt.eventType ]( function() {
				$th.setting();

				if( $( $th.wrapper ).css( 'display' ).toLowerCase() == 'none' ){
					$th.engine();
				}
				return false;
			} );
		},

		engine: function() {
			var $th = this;
			this.wrapper.height( $( document ).height() ).show(0);

			if( lawadm.isie60 ){
				this.wrapper.find( 'div.bg_layer_elem:first' ).show().click( function() {
					$th.hideLayer();
				} );

				this.layer.show().css( { top: $( document ).scrollTop() + $th.opt.topGab } );
			} else {
				this.wrapper.find( 'div.bg_layer_elem:first' ).stop().fadeTo( this.opt.duration, this.opt.opacity, function() {
					$th.layer.show().css( { top: $( document ).scrollTop() + $th.opt.topGab } );
				} ).click( function() {
					$th.hideLayer();
				} );
			}
		},

		hideLayer: function() {
			var $th = this;
			this.wrapper.find( 'div.bg_layer_elem:first' ).fadeOut( 0, function() {
				$th.layer.hide();
				$th.wrapper.hide();
			} );
		}

	}

	return {
		init: function( opt ) {
			var conn = new Conn( opt );
		}
	}

} )( jQuery );

function popupAbsMiddle(o){
	var _screenW = window.screen.width;
	var _screenH = window.screen.height;
	var setLeft = parseInt(_screenW * .5) - parseInt(o.width * .5);
	var setTop = parseInt(_screenH * .5) - parseInt(o.height * .5);
	window.open(o.url, "new", "scrollbars=no, toolbar=no, menubar=no, resizable=no, status=no, location=no, left=" + setLeft + ", top=" + setTop + ", width=" + o.width + ", height=" + o.height);
}

function showSwfMov( src, width, height, wmode ){
	document.write('<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="https://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="' + width + '" height="' + height + '">');
	document.write('<param name=movie value="' + src + '">');
	document.write('<param name=quality value=high>');
	document.write('<param name=allowScriptAccess value=always>');
	if(wmode == 0){ document.write('<param name="wmode" value="transparent">');}
	document.write('<embed src="' + src + '" quality=high pluginspage="https://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" wmode="transparent" width="' + width + '" height="' + height + '">');
	document.write('</embed> ');
	document.write('</object>');
}
