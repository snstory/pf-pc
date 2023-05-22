
// ================ 공통 함수 로드
$( function() {
	if( !( $.browser.msie && parseInt( $.browser.version ) < 7 ) ){
		if( $( '#content-core > .head > p.evt' ).size() ) $( '#content-core > .head > p.evt' ).sqashSlideAfterShow();
	}

	if( $.browser.msie ){
		$( '.bbs-pazing span :first-child' ).css( 'background', 'none' );
	}

	$( '.bbs-pazing > a.prev-wf:eq(0), .bbs-pazing > a.prev:eq(0), .bbs-pazing > a.next:eq(0), .bbs-pazing > a.next-wf:eq(0)' ).each( function() {
		$( this ).sqashImgRollOver();
	});
} );
// ================ //공통 함수 로드

// ================ plugin 
( function( $ ) {

$.extend( $.fn, {

	sqashSlideAfterShow: function() {

		$( this ).find( ':first' ).hide();
		$( this ).hide().slideDown( 300, function() {
			$( this ).find( ':first' ).fadeIn( 300 );
		} );

		return this;
	},

	sqashImgRollOver: function() {
		$( this ).hover( function() {

			var img = $( this ).find( 'img:eq(0)' );
			$.imgNameEditor( img, "on" );

		}, function() {

			var img = $( this ).find( 'img:eq(0)' );
			$.imgNameEditor( img, "" );
		
		} );

		return this;
	}

} );

	// 이미지 롤오버 이벤트
	$.imgNameEditor=function(img, stat, animated){
		var srcArray=$(img).attr("src").split("/");
		var fileName=srcArray.pop();
		var srcNewStr=""; // 이미지명 제외한 경로.
		$.map(srcArray, function(n,i){
			if(i<srcArray.length){
				srcNewStr+=n+"/";
			}
		});

		var fileSArr=fileName.split(".");
		var ext="."+fileSArr[fileSArr.length-1];
		var fileName=fileName.replace(ext,"");
		var cFName=fileName.replace("_on","");

		if(stat=="on"){
			$(img).attr("src", srcNewStr+cFName+"_on"+ext);
			if(animated){
				$(img).css({ opacity: 0.6 }).animate({
					opacity: 1
				}, {duration: 700, easing: "easeInCubic"});
			}
		}else{
			$(img).attr("src", srcNewStr+cFName+ext);
		}
	}


} )( jQuery );
// ================ //plugin 