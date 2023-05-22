
var ecoi = window.ecoi = {};

ecoi.indexGallery = ( function() {

	var option = {
		context: null,
		btnLt: null,
		btnGt: null,
		staticLayer: null,
		dynamicLayer: null,
		interval: 3000,
		layerSpeed: 100,
		autoMode: 'on', // on || off
		direction: 'lt'
	};

	function Conn( opt ){
		var opt = $.extend( option, opt || {} );
		if( ! $.nullChecker( opt ) ) return false;

		this.lt = opt.btnLt;
		this.gt = opt.btnGt;
		this.sLayer = opt.staticLayer;
		this.dLayer = opt.dynamicLayer;
		this.interval = opt.interval;
		this.layerSpeed = opt.layerSpeed;
		this.autoMode = opt.autoMode;
		this.direction = opt.direction;

		this.itemWidth = 0;
		this.itemLen = 0;
		this.minLen = 3;
		this.nowMoving = false;

		this.init();
	}

	Conn.prototype = {
		init: function() {

			this.itemWidth = $( '> :first', this.dLayer ).width();
			this.itemLen = $( '> *', this.dLayer ).size();
			this.minLen = parseInt( ( this.sLayer.width() / this.itemWidth ), 10 );

			if( this.itemLen <= this.minLen ){
				this.lt.hide();
				this.gt.hide();
				return false;
			}

			window.th = this;
			this.layerSetting();
			this.binding();
			if( this.autoMode == 'on' ){
				this.setTimeoutProc();
			}
		},

		setTimeoutProc: function() {
			window.th.engine();
		},

		clearTimeoutProc: function() {
		},

		layerSetting: function() {

			this.dLayer.css( {
				display: 'block',
				position: 'absolute',
				left: 0,
				top: 0,
				width: this.itemWidth * this.itemLen
			} );
		},

		binding: function() {
			var $th = this;

			this.lt.bind( {
				mouseenter: function() {
					try{ window.clearTimeout( $th.timeout_id ); }catch(e){}
					$th.direction = 'lt';
				},
				click: function() {
					if( $th.nowMoving ) return false;
					$th.engine();
					return false;
				},
				mouseleave: function() {
					if( $th.autoMode == 'on' ){
						$th.timeout_id = window.setTimeout( $th.setTimeoutProc, $th.interval );
					}
				}
			} );

			this.gt.bind( {
				mouseenter: function() {
					try{ window.clearTimeout( $th.timeout_id ); }catch(e){}
					$th.direction = 'gt';
				},
				click: function() {
					if( $th.nowMoving ) return false;
					$th.engine();
					return false;
				},
				mouseleave: function() {
					if( $th.autoMode == 'on' ){
						$th.timeout_id = window.setTimeout( $th.setTimeoutProc, $th.interval );
					}
				}
			} );

			$( '>*', this.dLayer ).each( function() {
				$( this ).bind( {
					mouseenter: function() {
						try{ window.clearTimeout( $th.timeout_id ); }catch(e){}
					},
					mouseleave: function() {
						if( $th.autoMode == 'on' ){
							$th.timeout_id = window.setTimeout( $th.setTimeoutProc, $th.interval );
						}
					}
				} );
			} );
		},

		engine: function() {

			this.nowMoving = true;
			var $th = this;
			var pos = $( this.dLayer ).position();

			$( '#header .gnb:first' ).text( pos.left + ' , wd: ' + this.itemWidth );

			if( this.direction == 'gt' ){
				this.moveLt( pos );
				//this.moveGt( pos );
			} else {
				this.moveLt( pos );
			}
		},

		moveLt: function( pos ) {
			var $th = this;
			if( pos.left >= 0 ){
				this.dLayer.css( {
					left: -$th.itemWidth
				} );
				$( '>:last', this.dLayer ).insertBefore( $( '>:first', this.dLayer ) );
			}

			var pos = this.dLayer.position();
			this.dLayer.stop().animate( {
				left: pos.left + $th.itemWidth
			}, $th.layerSpeed, function() {
				$th.nowMoving = false;

				if( $th.autoMode == 'on' ){
					try{ window.clearTimeout( $th.timeout_id ); }catch(e){}
					$th.timeout_id = window.setTimeout( $th.setTimeoutProc, $th.interval );
				}
			} );
		},

		moveGt: function( pos ) {
			var $th = this;
			var limit = this.sLayer.width() - this.dLayer.width();
			if( pos.left <= limit ){

				this.dLayer.css( {
					left: pos.left + $th.itemWidth
				} );
				$( '>:first', this.dLayer ).appendTo( $( this.dLayer ) );
			}

			var newPos = this.dLayer.position();

			this.dLayer.stop().animate( {
				left: newPos.left - $th.itemWidth
			}, $th.layerSpeed, function() {
				$th.nowMoving = false;

				if( $th.autoMode == 'on' ){
					try{ window.clearTimeout( $th.timeout_id ); }catch(e){}
					$th.timeout_id = window.setTimeout( $th.setTimeoutProc, $th.interval );
				}
			} );
		}
	}

	return {
		init: function( opt ) {
			var con = new Conn( opt );
		}
	}

} )( jQuery );

ecoi.intro02Proc = ( function( $ ) {

	var option = {
		btns: [],
		btnSrc: '/images/btns/gotop.gif'
	};

	function Conn( opt ) {
		this.opt = $.extend( option, opt || {} );
		if( !this.opt.btns.length ) return false;

		this.nLayer = null;
		this.gotoTopBtn = null;
		this.btns = this.opt.btns;
		this.init();
	}

	Conn.prototype = {
		init: function() {
			this.binding();
		},
		binding: function() {
			var $th = this;
			$.map( this.btns, function( n, i ) {
				$( n ).bind( {
					click: function() {
						var id = $( this ).attr( 'href' );
						$th.nLayer = $( id );
						$th.engine();
						return false;
					}
				} );
			} );
		},
		engine: function() {
			if( this.nLayer == null ) return false;
			if( this.gotoTopBtn != null ){
				$( this.gotoTopBtn ).remove();
				this.gotoTopBtn = null;
			}

			var $th = this;
			var pos = this.nLayer.offset();
			$( document ).scrollTop( pos.top );
			this.gotoTopBtn = $( '<img src="'+ this.opt.btnSrc +'" />' ).css( {
				position: 'absolute',
				right: 0,
				bottom: 0,
				zIndex: 100,
				cursor: 'pointer',
				opacity: 0
			} ).stop().animate( {
				opacity: 1
			}, 'slow' ).bind( {
				click: function() {
					$( document ).scrollTop( 0 );
					$( this ).remove();
					$th.gotoTopBtn = null;
				}
			} ).appendTo( this.nLayer.parent() );
		}
	}

	return {
		init: function( opt ) {
			var con = new Conn( opt );
		}
	}

} )( jQuery );

ecoi.faqProc = ( function( $ ) {

	var option = {
		context: null,
		qTag: 'dt',
		aTag: 'dd'
	};

	function Constructor( opt ) {
		this.opt = $.extend( option, opt || {} );
		if( ! this.opt.context ){ return false; }
		this.init();
	}

	Constructor.prototype = {
		init: function() {
			this.askedFormat();
			this.qTagFormat();
		},

		askedFormat: function() {
			$( this.opt.qTag + ' > a', this.opt.context ).css( 'color', '#fff' );
			$( this.opt.aTag, this.opt.context ).hide();

			// 추가 이벤트 작업진행 고려중.
			/*
			$( this.opt.aTag, this.opt.context ).each( function() {
				$.data( this, 'paddingTop', parseInt( $( this ).css( 'paddingTop' ), 10 ) );
				$.data( this, 'paddingBottom', parseInt( $( this ).css( 'paddingBottom' ), 10 ) );
			} );
			*/
		},

		qTagFormat: function() {
			var $th = this;
			$( this.opt.qTag, this.opt.context ).each( function() {
				$( this ).bind( {
					click: function() {
						$th.askedFormat();
						$( this )
							.next().show().end()
							.find( 'a:first' ).css( 'color', '#ff9200' );
						return false;
					}
				} );
			} );
		}
	}

	return {
		init: function( opt ) {
			var con = new Constructor( opt );
		}
	}

} )( jQuery );

ecoi.iframeload = ( function( $ ) {

	ecoi.iframeLayer = null;
	ecoi.iframeBgLayer = null;

	var option = {
		context: null,
		idname: 'ifrid_' + parseInt( Math.random() * 10000000000, 10 ),
		width: 725,
		height: 694,
		bgColor: '#000',
		opacity: .6, // 0 ~ 1
		topGap: 50
	};

	function Constructor( opt ){
		this.opt = $.extend( option, opt || {} );
		if( !this.opt.context ) return false;
		if( ! ( $( this.opt.context ).attr( 'nodeName' ) != 'a' ) ) return false;
		this.name = this.opt.idname;
		this.width = this.opt.width;
		this.height = this.opt.height;
		this.href = $( this.opt.context ).attr( 'href' );
		this.bgColor = this.opt.bgColor;
		this.opacity = this.opt.opacity;
		this.topGap = this.opt.topGap;
		this.init();
	}

	Constructor.prototype = {
		init: function() {
			this.binding();
		},

		binding: function() {
			var $th = this;
			$( this.opt.context ).bind( {
				click: function() {
					$th.iframeMaker();
					return false;
				}
			} );
		},

		iframeMaker: function() {

			if( ecoi.iframeLayer != null ){
				$( ecoi.iframeLayer ).remove();
				ecoi.iframeLayer = null;
			}

			if( ecoi.iframeBgLayer != null ){
				$( ecoi.iframeBgLayer ).remove();
				ecoi.iframeBgLayer = null;
			}

			ecoi.iframeLayer = $( '<div style="position:absolute;left:0px;top:0px;z-index:11000;width:100%;height:'+ $(document).height()+';background:transparent;"><div style="width:'+ this.width +'px;height:'+ this.height +'px;margin:0 auto;position:relative;top:'+ ($(document).scrollTop() + this.topGap) +'px;"><iframe src="'+ this.href +'" name="'+ this.name +'" id="'+ this.name +'" width="100%" height="100%" title="" longdesc="" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" allowtransparency="true"></iframe></div></div>' ).appendTo( 'body' );

			ecoi.iframeBgLayer = $( '<div />', {
				css: {
					position: 'absolute',
					left: 0,
					top: 0,
					zIndex: 10000,
					width: '100%',
					height: $(document).height(),
					opacity: 0, //this.opacity,
					backgroundColor: this.bgColor
				}
			} ).appendTo( 'body' ).animate( {
				opacity: this.opacity
			}, this.duration );

			$( ecoi.iframeLayer ).bind( {
				click: function() {
					$( ecoi.iframeBgLayer ).remove();
					$( this ).remove();
				}
			} );
		}
	}

	return {
		init: function( opt ) {
			var con = new Constructor( opt );
		}
	}

} )( jQuery );

ecoi.snb = ( function( $ ) {

	var option = {
		boxTag: null,
		topTag: null,
		subTag: null
	};

	function Constructor( opt ) {
		this.opt = $.extend( option, opt || {} );
		if( !this.opt.boxTag || !this.opt.topTag ) return false;
		this.init();
	}

	Constructor.prototype = {
		init: function() {
			this.box = $( this.opt.boxTag );
			this.sntop = $( this.box ).attr( 'sntop' );
			this.snsub = $( this.box ).attr( 'snsub' );
			this.tops = $( this.opt.topTag, this.box ).toArray();
			this.subs = $( this.opt.subTag, this.box ).toArray();

			this.dataset();
			this.binding();
			this.engine( this.sntop, 1 );
		},

		dataset: function() {
			var $th = this;
			$.map( this.tops, function( n, i ) {
				$.data( n, 'sntop', ( i + 1 ) );
			} );

			$.map( this.subs, function( n, i ) {
				$( n ).attr( 'oriH', $( n ).height() );
				$( n ).height( 0 ).css( 'padding', 0 );
			} );
		},

		binding: function() {
			var $th = this;
			$.map( this.tops, function( n, i ) {
				$( n ).bind( {
					mouseenter: function() {
						$th.engine( $.data( n, 'sntop' ) );
					}
				} );
			} );

			this.box.bind( {
				mouseleave: function() {
					$th.engine( $th.sntop );
				}
			} );
		},

		engine: function( draw ) {
			var $th = this;
			var outbool = arguments[1];

			$.map( this.tops, function( n, i ) {
				var dl = $( $th.opt.subTag + ':first', n );

				if( draw == $.data( n, 'sntop' ) ){
					$.imgChange.call( $( 'img:first', n ), '_on', 'on' );
					try{
						$( dl ).stop().animate( {
							height: parseInt( $( dl ).attr( 'oriH' ), 10 ),
							paddingTop: 10,
							paddingBottom: 10
						}, 300 );

						if( outbool ){
							$( ' >*', dl ).each( function( i ) {
								if( $th.snsub == ( i + 1 ) ){
									$( this ).addClass( 'on' );
								} else {
									$( this ).removeClass( 'on' );
								}
							} );
						}

					}
					catch(e){}
				} else {
					$.imgChange.call( $( 'img:first', n ), '_on', '' );
					$( dl ).stop().animate( {
						height: 0,
						paddingTop: 0,
						paddingBottom: 0
					}, 300 );
				}
			} );
		}
	}

	return {
		init: function( opt ) {
			var con = new Constructor( opt );
		}
	}

} )( jQuery );

ecoi.lnb = ( function( $ ) {

	var option = {
		boxTag: null,
		topTag: null,
		layerTag: null
	};

	function Constructor( opt ) {
		this.opt = $.extend( option, opt || {} );
		if( !this.opt.boxTag || !this.opt.topTag || !this.opt.layerTag ) return false;
		this.init();
	}

	Constructor.prototype = {
		init: function() {
			this.box = $( this.opt.boxTag );
			this.pageNum = this.box.attr( 'pageNum' );
			this.subNum = this.box.attr( 'subNum' );
			this.tops = $( this.opt.topTag, this.box ).toArray();
			this.layers = $( this.opt.layerTag, this.box ).toArray();

			this.dataSetting();
			this.binding();
			this.vitalize();
			this.box.css( 'visibility', 'visible' );
		},

		vitalize: function() {

			var $th = this;
			$( this.opt.layerTag, this.box ).hide();
			$( this.opt.topTag, this.box ).css( 'zIndex', 10 );

			$.map( this.tops, function( n, i ) {
				if( $th.pageNum == $.data( n, 'pageNum' ) ){
					$( n ).css( 'zIndex', 20 );
					$.imgChange.call( $( 'img:first', n ), '_on', 'on' );
					$( n ).next( $th.opt.layerTag + ':first' ).show();
					$( n ).next( $th.opt.layerTag + ':first' ).find( 'img' ).each( function( i ) {
						if( $th.subNum == ( i + 1 ) ){
							$.imgChange.call( this, '_on', 'on' );
						}
					} );
				}
			} );
		},

		dataSetting: function() {
			$.map( this.tops, function( n, i ) {
				$.data( n, 'pageNum', i + 1 );
			} );
		},

		binding: function() {
			var $th = this;
			var layerTag = this.opt.layerTag;
			var topTag = this.opt.topTag
			$.map( this.tops, function( n, i ) {
				$( n ).bind( {
					mouseenter: function() {
						$( $th.opt.layerTag, $th.box ).hide();
						$( $th.opt.topTag, $th.box ).css( 'zIndex', 10 );
						$( $th.opt.topTag + ' img', $th.box ).each( function() {
							$.imgChange.call( this, '_on', '' );
						} );
						$( this ).css( 'zIndex', 20 );
						$( this ).next( layerTag + ':first' ).show();
						$.imgChange.call( $( 'img:first', this ), '_on', 'on' );
					},
					mouseleave: function() {
						$( $th.opt.layerTag, $th.box ).hide();
						$.imgChange.call( $( 'img:first', this ), '_on', '' );
						$th.vitalize();
					}
				} );

				$( n ).next( layerTag + ':first' ).bind( {
					mouseenter: function() {
						$( this ).prev( topTag + ':first' ).mouseenter();
					},
					mouseleave: function() {
						$( this ).prev( topTag + ':first' ).mouseleave();
					}
				} );

				$( 'img', $( n ).next( layerTag + ':first' ) ).each( function() {
					$( this ).bind( {
						mouseenter: function() {
							$.imgChange.call( this, '_on', 'on' );
						},
						mouseleave: function() {
							$.imgChange.call( this, '_on', '' );
						}
					} );
				} );
			} );
		}
	};

	return {
		init: function( opt ) {
			var con = new Constructor( opt || {} );
		}
	}

} )( jQuery );

// jQuery Extend
( function( $ ) {

	$.imgChange = function( upName, stat ) {

		var srcArray = $( this ).attr( 'src' ).split( '/' );
		var fileName = srcArray.pop();
		var srcNewStr = ''; // 이미지명 제외한 경로.
		$.map( srcArray, function( n, i ){
			if( i < srcArray.length ){
				srcNewStr += n + '/';
			}
		});

		var fileSArr = fileName.split('.');
		var ext = '.' + fileSArr[ fileSArr.length - 1 ];
		var fileName = fileName.replace( ext, '' );
		var cFName = fileName.replace( upName, '' );

		if( stat == 'on' ){
			$( this ).attr( 'src', srcNewStr + cFName + upName + ext );
		} else {
			$( this ).attr( 'src', srcNewStr + cFName + ext );
		}
	}

	$.nullChecker = function( obj ) {
		var checkResult = true;
		$.each( obj, function( i, n ) {
			if( n == null ){
				checkResult = false;
				return false;
			}
		} );
		return checkResult;
	}

$.extend( $.fn, {
	imgHovers: function( opt ) {

		var opt = $.extend( {
			overname: '_on'
		}, opt || {} );

		$( this ).bind( {
			mouseenter: function() {
				$.imgChange.call( this, opt.overname, 'on' );
			},
			mouseleave: function() {
				$.imgChange.call( this, opt.overname, '' );
			}
		} );

		return this;
	},

	addgifimg: function( opt ) {

		var opt = $.extend( {
			src: null
		}, opt || {} );

		if( !opt.src ){ return false; }
		$( this ).parent().css( 'position', 'relative' ).css( 'display', 'block' );
		$( '<img src="'+ opt.src +'" border="0" alt="" style="position:absolute;left:0px;top:0px;" />' ).insertAfter( this );

		return this;

	},

	familySiteOpen: function( opt ) {
		var opt = $.extend( {
			openType: '_blank' // _self
		}, opt || {} );

		$( this ).bind( {
			change: function() {
				if( $( this ).val() != '' ){
					if( opt.openType == '_blank' ){
						window.open( $( this ).val() );
					} else {
						window.location.href = $( this ).val();
					}
				}
			}
		} );
	}
} );

} )( jQuery );
