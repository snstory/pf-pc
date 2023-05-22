// Document Ready List ...
$(function(){
	$("#header .lnb ul").GM4Rollover();
	$(".snb_in ul.menu").GM4Rollover();
	$(".cmm08 ul.cmm08_ul").GM4Rollover();
});

// Plugin List ...
(function($){

	$.fn.GM4Rollover=function(){
		if(!this.attr("nodeName")){ return false; }

		var _level=this;
		var lis=this.find("li");
		var rx={
			pgNum: parseInt($(_level).attr("pageNo"))?parseInt($(_level).attr("pageNo")):-1, // 현재 페이지 번호.
			ovNum: -1,// 롤오버 번호.
			muArr: $.makeArray(lis) // 메뉴 모음 배열.
		}

		//alert(rx.pgNum+", "+this.attr("nodeName"));

		$.map(rx.muArr, function(n,i){
			$(n).bind({
				mouseenter: function(){
					rx.ovNum=i;
					mouseEvent(rx.ovNum);
				}
			});
		});

		$(_level).bind({
			mouseleave: function(){
				mouseEvent(rx.pgNum-1);
			}
		});

		function mouseEvent(num){
			$.map(rx.muArr, function(n,i){
				if(i==num){
					var img=$("a>img:eq(0)", n);
					$.imgNameEditor(img, "on");
				}else{
					var img=$("a>img:eq(0)", n);
					$.imgNameEditor(img, "");
				}
			});
		}

		// 로드시 실행.
		mouseEvent(rx.pgNum-1);
		return this;
	}

	// 이미지 롤오버 이벤트
	$.imgNameEditor=function(img, stat){
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
		}else{
			$(img).attr("src", srcNewStr+cFName+ext);
		}
	}

})(jQuery);
