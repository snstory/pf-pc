// Document Ready List ...
$(function(){

	$(".snb_in_ul").MRURollover({
		funcOffFoler: ["pcs"]
	});
	$(".lnb_ul").MRURollover({
		autoSearch: "manual"
	});

	/***************************************************************************************************
	*** easing style list
	* swing,
	* [ easeInQuad, easeOutQuad, easeInOutQuad ] [ easeInCubic, easeOutCubic, easeInOutCubic ]  
	* [ easeInQuart, easeOutQuart, easeInOutQuart ] [ easeInQuint, easeOutQuint, easeInOutQuint ]      
	* [ easeInSine, easeOutSine, easeInOutSine ] [ easeInExpo, easeOutExpo, easeInOutExpo ]            
	* [ easeInCirc, easeOutCirc, easeInOutCirc ] [ easeInElastic, easeOutElastic, easeInOutElastic ]   
	* [ easeInBack, easeOutBack, easeInOutBack ] [ easeInBounce, easeOutBounce, easeInOutBounce]       
	****************************************************************************************************/
	$("#intro_02Event").MRUIntro02Event({
		context: $("#intro_02Event"),
		lt: $("a.lt", this), // ������ư (������ direction: gt ����)
		gt: $("a.gt", this), // ������ư (������ direction: lt ����)
		staticArea: $("div.int02_2", this), // �� ���� (����)
		visualArea: $("div.int02_3", this), // ����ϰ� ����Ǵ� Ÿ�� �̹����� ������ ����
		xmlSrc: "/xml/intro_02.xml", // xml ���� ���.
		auto: true, // �ڵ� ���� ����
		delayTime: 4000, // �ڵ� ���� ����� ��� interval or setInterval ����.
		duration: 300, // �޴���� �̵��ӵ�.
		easing: "easeInOutCirc", // ���̾� �̵��� ����Ǵ� ��Ÿ��.
		viewDuration: 600, // �� ���� opacity �� ����.
		viewEasing: "easeOutSine", // �� ������ �̹��� �ε�� ����Ǵ� ��Ÿ��.
		viewSetOpacity: 0.5, // �� ������ �ε�Ϸ��� �ִϸ��̼� ������ ������. (0.0 ~ 1.0)
		finalOpacity: 1 // �� ������ �ִϸ��̼� �� ������. (0.0 ~ 1.0)
	});
});

// Plugin List ...
(function($){
	
	// home > ���ӼҰ� > ĳ���ͼҰ�
	$.fn.MRUIntro02Event=function(obj){
		if(!document.getElementById(this.attr("id"))){ return false; }
		var obj = $.extend({
			// context: null,
			lt: null, // ������ư (������ direction: gt ����)
			gt: null, // ������ư (������ direction: lt ����)
			staticArea: null, // �� ���� (����)
			visualArea: null, // ����ϰ� ����Ǵ� Ÿ�� �̹����� ������ ����
			xmlSrc: null, // xml ���� ���.
			auto: false, // �ڵ� ���� ����
			delayTime: 3000, // �ڵ� ���� ����� ��� interval or setInterval ����.
			duration: 300, // �̵��ÿ� ����.
			easing: "swing", // ���̾� �̵��� ����Ǵ� ��Ÿ��.
			viewDuration: 600, // �� ������ ����.
			viewEasing: "swing", // �� ������ �̹��� �ε�� ����Ǵ� ��Ÿ��.
			viewSetOpacity: 0.5, // �� ������ �ε�Ϸ��� �ִϸ��̼� ������ ������. (0.0 ~ 1.0)
			finalOpacity: 1 // �� ������ �ִϸ��̼� �� ������. (0.0 ~ 1.0)
		}, obj || {});

		if($.returnNullCheck(obj)){ return false; }

		var inn = $.extend({
			xmlErrorAlertImg: "/images/intro/pg_02_error.jpg",
			cursor: null, // ������
			mlayer: null, // ������ �θ� moving Layer
			direction: "gt", // ���� �̵� ���� (�⺻ : �������� �̵�)
			defaultWidth: 56, // �޴� �±��� ���� (���̾ �����϶� ���)
			itemLength: 0, // �޴� ���� (xml ���� �޾ƿ� �����͸� �Ľ��� �� ���.)
			itemMinLength: 0, // �̺�Ʈ�� �ʿ��� �������� �ּҰ���
			setInterval_id: null, // interval ���̵�.
			doScrollCheck: true, // ��ũ���� �ʿ��Ѱ�? Ȯ��.
			loadIngImgElem: null, // �ε��� �̹����� ����.

			fns: {
				Constructor: function(){
					this.formatDefaultSet();
				},
				formatDefaultSet: function(){ // �⺻ ����
					var oriWidth = $("li:eq(1)", inn.staticArea).width();
					inn.defaultWidth = oriWidth ? oriWidth : inn.defaultWidth;
					inn.itemMinLength = parseInt(inn.staticArea.width() / inn.defaultWidth);
					this.getXml(); // xml �Ľ� �� ���̾� ����.
					if(inn.auto){
						inn.setInterval_id = setInterval(this.csftrForEngine, inn.delayTime);
						inn.context.bind({
							mouseenter : function(){
								if(inn.setInterval_id != null){
									clearInterval(inn.setInterval_id);
									inn.setInterval_id = null;
								}
							},
							mouseleave : function(){
								if(inn.auto){
									if(inn.setInterval_id == null){
										inn.setInterval_id = setInterval(inn.fns.csftrForEngine, inn.delayTime);
									}
								}
							}
						});
					}
				},
				waitImgLoading: function(){
					if(inn.loadIngImgElem==null){
						inn.loadIngImgElem = $.loadingImgAdd({
							cntext: inn.visualArea,
							src: "/images/common/icons/loadimg_48.gif"
						});
					}
				},
				getXml: function(){
					inn.fns.waitImgLoading();

					$.ajax({
						url: inn.xmlSrc,
						type: "get",
						dataType: "xml",
						success: this.parsingAndFirstPlay,
						context: inn.context.find("div.int02_1"),
						error: function(xhr,status,errorThrown){
							inn.visualArea.empty(); // �̹����� �ε��� ���� û��.
							var htmlStr = "<div style=\"width:100%;height:100%;text-align:center;\">";
							htmlStr += "<img src=\""+inn.xmlErrorAlertImg+"\" alt=\"Sorry. Now inspecting the system...\" />";
							htmlStr += "</div>";
							$(this).html(htmlStr);
						}
					});
				},
				parsingAndFirstPlay: function(xhr){ // xml�� �Ľ��� �� ���� �ʱ��۾�����. 
					var items = $("list", xhr);
					inn.itemLength = items.length; // ������ ���� ���.
					var mLayerWidth = inn.itemLength * inn.defaultWidth;
					var staticWidth = inn.staticArea.width();
					var htmlStr = "<ul class=\"int02_2_ul\">";
					$.each(items, function(){
						var thumTitle = $("thumnail", this).attr("title");
						var tnumSrc = $("thumnail", this).text();
						var realTitle = $("realpic", this).attr("title");
						var realSrc = $("realpic", this).text();
						htmlStr += "<li>";
						htmlStr += "<em title=\""+ realTitle +"\">"+ realSrc +"</em>";
						htmlStr += "<a href=\"#\">";
						htmlStr += "<img src=\""+ tnumSrc +"\" alt=\""+ thumTitle +"\" />";
						htmlStr += "</a>";
						htmlStr += "</li>";
					});
					htmlStr += "</ul>";
					inn.staticArea.empty();

					$("<div />", {
						css: {
							position: "absolute",
							left: 0,
							top: 0,
							width: mLayerWidth,
							height: "100%"
						}
					}).html(htmlStr).appendTo(inn.staticArea);
					inn.mlayer = $("div:first-child", inn.staticArea);
					inn.cursor = $("li:eq(0)", inn.mlayer);

					if(inn.itemLength <= inn.itemMinLength){
						inn.doScrollCheck = false;
						$(inn.lt).css({ display: "none" });
						$(inn.gt).css({ display: "none" });
					}

					if(inn.itemLength <= 0){ return false; } // �����ۼ��� ���ٸ� ���� ���.
					inn.fns.binding(); // �� ��ü�� �ش� �̺�Ʈ ���ε�.
					inn.fns.coreEngine.call(inn.cursor); // �ʱ� �̺�Ʈ ����.
				},
				csftrForEngine: function(){
					inn.fns.unBinding(); // ����ε�. (��� �Ͻ� ���).
					var newCursor = null;
					var security = inn.fns.layerPosRealize.call(inn.cursor); // Ŀ���� �̵��� ��ġ Ȯ��.
					var oriPaLeft = parseInt(inn.cursor.parents("div:eq(0)").css("left"));

					if(inn.direction == "gt"){
						if(! inn.cursor.next().attr("nodeName")){
							newCursor = $("li:first", inn.cursor.parent());
							var cloneCursor = newCursor.clone();
							cloneCursor.appendTo(inn.cursor.parent());
							inn.cursor = null;
							inn.cursor = cloneCursor;
							newCursor.remove();

							if(! security){ // ��������̰�, �俵���� ��� ���. (�θ� �������� �̵����ѵд�)
								inn.cursor.parents("div:eq(0)").css({ left: oriPaLeft + inn.defaultWidth });
							}
						}else{
							newCursor = inn.cursor.next();
							inn.cursor = null;
							inn.cursor = newCursor;

							if(! security){ // ������谡 �ƴϰ�, �俵���� ��� ���.
								oriPaLeft = oriPaLeft - inn.defaultWidth; // �θ𿵿��� �̵�.
							}
						}

						layerMoving.call(inn.cursor.parents("div:eq(0)"), {
							direct: "gt",
							tarLeft: oriPaLeft
						});
					}else{
						if(! inn.cursor.prev().attr("nodeName")){
							newCursor = $("li:last", inn.cursor.parent());
							var cloneCursor = newCursor.clone();
							cloneCursor.prependTo(inn.cursor.parent());
							inn.cursor = null;
							inn.cursor = cloneCursor;
							newCursor.remove();

							if(! security){ // ��������̰�, �俵���� ��� ���. (�θ� �������� �̵����ѵд�)
								inn.cursor.parents("div:eq(0)").css({ left: oriPaLeft - inn.defaultWidth });
							}
						}else{
							newCursor = inn.cursor.prev();
							inn.cursor = null;
							inn.cursor = newCursor;

							if(! security){ // ������谡 �ƴϰ�, �俵���� ��� ���.
								oriPaLeft = oriPaLeft + inn.defaultWidth; // �θ𿵿��� �̵�.
							}
						}

						layerMoving.call(inn.cursor.parents("div:eq(0)"), {
							direct: "lt",
							tarLeft: oriPaLeft
						});
					}

					function layerMoving(on){
						this.animate({
							left: on.tarLeft
						}, inn.duration, inn.easing, function(){
							inn.fns.coreEngine.call(inn.cursor);
						});
					}
				},
				layerPosRealize: function(){ // inn.cursor �� �̵��� ���� ��ġ Ȯ��.
					var security = true;
					var mypa = this.parents("div:eq(0)");
					var mypaLeft = parseInt(mypa.css("left"));
					var myIdx = $("li", mypa).index(this);
					var myLeft = mypaLeft + (myIdx * inn.defaultWidth);
					var myTarget = 0;
					var myGpa = mypa.parents("div:eq(0)");
					if(inn.direction == "gt"){
						myTarget = myLeft + inn.defaultWidth; // Ŀ���� �̵��� ��ġ
						security = (myLeft < (myGpa.width() - inn.defaultWidth)) ? true : false;
					}else{
						myTarget = myLeft - inn.defaultWidth; // Ŀ���� �̵��� ��ġ
						security = (myTarget >= 0) ? true : false;
					}
					return security;
				},
				coreEngine: function(){ // =======
					inn.visualArea.empty(); // �̹����� �ε��� ���� û��.
					inn.fns.waitImgLoading(); // �ε��̹��� ����.
					inn.fns.unBinding(); // ����ε�. (��� �Ͻ� ���).

					var imgClick = (arguments[0]) ? true : false;
					if(imgClick){ // item �� Ŭ���ߴٸ�,
						inn.cursor=null;
						inn.cursor=this; // �ڽ��� ���
						inn.fns.thumbNailProc.call(this); // thumb nail ó�� �� Ÿ�� �̹��� �ε�.
					}else{ // �¿� ��ư�� Ŭ���ߴٸ�,
						inn.fns.thumbNailProc.call(inn.cursor);
					}
				},
				thumbNailProc: function(){ // ���� ���� �� ���־� ���� ����.
					var pa = $(this).parent();
					var idx = $("li", pa).index(this);
					$.each($("li", pa), function(i){
						if(i == idx){
							$.imgNameEditor($("img", this), "on");
							inn.fns.visualLoadProc.call(this);
						}else{
							$.imgNameEditor($("img", this), "");
						}
					});
				},
				visualLoadProc: function(){
					var isrc = $("em", this).text();
					var ialt = $("em", this).attr("title");

					$("<img />").attr({
						src: isrc,
						alt: ialt
					}).bind({
						load: function(){
							var thisHeight = $(this).height();
							inn.visualArea.height(thisHeight);
							if(inn.loadIngImgElem){ // �ε��̹����� �ִٸ� ����.
								$(inn.loadIngImgElem).remove();
								inn.loadIngImgElem=null;
							}
						}
					}).css({
						opacity: inn.viewSetOpacity
					}).animate({
						opacity: inn.finalOpacity
					}, inn.viewDuration, inn.viewEasing, function(){
						inn.fns.binding();
					}).appendTo(inn.visualArea);
				},
				binding: function(){
					if(inn.itemLength <= inn.itemMinLength){ // �����Ƽ��� �ּҰ������� �۰ų� ������,
						if(inn.itemLength <= 1){ return false; } // �������� �ϳ��� �� ���϶�� ���� ���.
						$.each($("a", inn.mlayer), function(){
							$(this).bind({
								click: function(){
									inn.cursor = null;
									inn.cursor = $(this).parent();
									inn.fns.coreEngine.call(inn.cursor, true);
									return false;
								}
							});
						});
					}else{
						inn.lt.bind({
							click: function(){
								inn.direction = "lt";
								inn.fns.csftrForEngine();
								return false;
							},
							mouseover: function(){
								inn.direction = "lt";
							}
						});
						inn.gt.bind({
							click: function(){
								inn.direction = "gt";
								inn.fns.csftrForEngine();
								return false;
							},
							mouseover: function(){
								inn.direction = "gt";
							}
						});
						$.each($("a", inn.mlayer), function(){
							$(this).bind({
								click: function(){
									inn.cursor = null;
									inn.cursor = $(this).parent();
									inn.fns.coreEngine.call(inn.cursor, true);
									return false;
								}
							});
						});
					}
				},
				unBinding: function(){
					inn.lt.unbind();
					inn.gt.unbind();
					$.each($("a", inn.mlayer), function(){ $(this).unbind("click"); });
				}
			}
		}, obj || {});

		inn.fns.Constructor();
		return this;
	}

	/*
	*  *** MRURollover ����. ***
	*	[���ǻ���] ������ ���� ���� ���. ���̵�޴��� Ȯ����(.html)�� ���� �̸��� �����ؾ� ������ �˴ϴ�.
	*		��)   /notice/notice.html == /notice/notice_read.html (��)
	*			/notice/notice.html == /notice/other_notice_read.html (X)
	*
	*	���������� ��Ģ�� ��Ű�� ����� ��� �������� ����Ͻø� �˴ϴ�. (���������� ����Ͽ� pageNo="n" ��Ʈ����Ʈ �߰�)
	*
	*	autoSearch		: pageNo �ڵ��ο���ɼ���. �ڵ�(auto) or ����(manual). ����Ʈ: auto.
	*	funcOffFoler	: ������ ������ ���� �迭.
	*	menuUseTag		: �̹����� �����ϰ� �ִ� �޴��� ���� ������Ʈ ��. ����Ʈ: LI.
	**/
	$.fn.MRURollover=function(obj){
		var obj=$.extend({
			autoSearch: "auto",
			funcOffFoler: null,
			menuUseTag: "li",
			pageNoOff: false,
			pageNoAttr: "pageNo"
		},obj||{});

		if(!this.attr("nodeName")){ return false; } // ������Ʈ�� �ҷ��̸� �������.

		if(obj.funcOffFoler!=null && obj.funcOffFoler.length>0){ // �̺�Ʈ�� �������� ���� url �ΰ� Ȯ��.
			var varcath=$.MRUReturnFolderURL();
			if(varcath){
				$.map(obj.funcOffFoler, function(n,i){
					if(varcath.search(n)!=-1){
						obj.pageNoOff=true;
					}
				});
			}
		}

		obj.menuUseTag=obj.menuUseTag.toLowerCase(); // �±׸� �ҹ��ڷ� ������.
		if(!isNaN(parseInt(this.attr(obj.pageNoAttr)))){ // pageNo �� �������� ��� ������� ��� �������� ��ȯ.
			obj.autoSearch="manual";
		}

		var _level=this;
		var lis=this.find(obj.menuUseTag);
		var rx={
			pgNum: -1,
			ovNum: -1,// �ѿ��� ��ȣ.
			muArr: $.makeArray(lis) // �޴� ���� �迭.
		}

		if(obj.autoSearch.toLowerCase()=="manual"){ // ��������� ��� ����.

			var attrChk=parseInt($(_level).attr(obj.pageNoAttr)); // �������� ������ ��ȣ�� ������ ����.
			if(!isNaN(parseInt(attrChk))){
				if(parseInt(attrChk) > -1){
					rx.pgNum=parseInt(attrChk);
				}
			}

		}else{ // �ڵ����(auto) �ϰ�� ����.
			rx.pgNum=$.MRUAddPageNo({ muArr: rx.muArr });
		}

		if(obj.pageNoOff){ rx.pgNum=-1; } // ��� off �� ������ ���.

		$.map(rx.muArr, function(n,i){
			$(n).bind({
				mouseenter: function(){
					rx.ovNum=i;
					mouseEvent(rx.ovNum);
				}
			});
		});

		$(_level).bind({ mouseleave: function(){ mouseEvent(rx.pgNum-1); } });

		function mouseEvent(num){
			$.map(rx.muArr, function(n,i){
				if(i==num){
					var img=$("img:eq(0)", n);
					$.imgNameEditor(img, "on");
				}else{
					var img=$("img:eq(0)", n);
					$.imgNameEditor(img, "");
				}
			});
		}

		mouseEvent(rx.pgNum-1); // �ε�� ����.
		return this;
	}

	// �̹��� �ѿ��� �̺�Ʈ
	$.imgNameEditor=function(img, stat, animated){
		var srcArray=$(img).attr("src").split("/");
		var fileName=srcArray.pop();
		var srcNewStr=""; // �̹����� ������ ���.
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

	// �ε��� �̹��� �߰�
	$.loadingImgAdd=function(obj){
		var obj=$.extend({
			cntext: null,
			src: null,
			reH: null
		},obj||{});

		obj.reH = (obj.reH) ? obj.reH : obj.cntext.height();

		var chk=0;
		$.each(obj, function(n,v){ if(v==null){ chk=1; } });
		if(chk){ return false; }

		return $("<img />", {
			css: {
				position: "absolute",
				left: "0px",//"0px",
				top: "0px",
				display: "none"
			}
		}).attr({
			src: obj.src,
			alt: "please wait ..."
		}).appendTo(obj.cntext).bind({
			load: function(){
				$img=$(this);
				var cnW=obj.cntext.width();
				var cnH=obj.reH;
				var imgW=$img.width();
				var imgH=$img.height();
				$img.css({
					left: parseInt((cnW-imgW)/2)+"px",
					top: parseInt((cnH-imgH)/2)+"px",
					display: "block"
				});
			}
		});
	}

	// �˾������� ���. (âũ�� ����)
	$.fn.GM4WindowResize=function(){
		$this=$(this);

		var wGab,hGab,svW,svH,nX,nY;
		var nW=$this.innerWidth();
		var nH=$this.innerHeight();
		window.resizeTo(nW, nH); // 1��.

		try{
			wGab=nW+(Math.abs($(window).width()-nW));
			hGab=nH+(Math.abs($(window).height()-nH));
			window.resizeTo(wGab, hGab); // ����.

			svW=screen.availWidth;
			svH=screen.availHeight;
			nX=parseInt((svW/2)-($(window).width()/2));
			nY=parseInt((svH/2)-($(window).height()/2));
			window.moveTo(nX, nY);

		}catch(e){

			var dfW=40;
			var dfH=90;
			wGab=nW+dfW;
			hGab=nH+dfH;
			window.resizeTo(wGab, hGab); // ����.
			nX=20;
			nY=20;
			window.moveTo(nX, nY);
		}

		return this;
	}


	/**
	* function MRUAddPageNo
	*
	*	muArr	: �޴� �迭 (��ȣ�� ������ �� ���� �޴� �迭).
	*
	*****/
	$.MRUAddPageNo=function(obj){
		var returnPageNo=-1;

		var url=window.location.href;
		var patternHref=/\.\.\/|\.\//g;
		var patternSplit=/\.html|\.htm|\.asp|\.php|\.jsp|\.aspx/;
		url=url.split(patternSplit)[0];

		$.map(obj.muArr, function(n,i){
			var src=$("a[href]", n).attr("href");
			if(src){
				src=src.split(patternSplit)[0];
				src=src.replace(patternHref, "");
				if(src){
					if(url.search(src)!=-1){
						returnPageNo=i+1;
					}
				}
			}
		});

		return returnPageNo;
	}

	/*
		* url ������ http://www-nnnn.sitename.co.kr/ ���밡���ϵ��� ����.
	*/
	$.MRUReturnFolderURL=function(){
		var url=window.location.href;
		//var pattern=/(\w+):\/\/([\w.]+)\/(\S*)/; // ��������.
		var pattern=/(\w+):\/\/([\w\W.]+)\/(\S*)/; // �׽�Ʈ url �� ����.
		var rets=url.match(pattern);
		if(!rets){
			return false;
		}
		var catchURL=rets[rets.length-2];
		var varcath=catchURL.split("/");
		return varcath[varcath.length-1];
	}

	$.returnNullCheck=function(obj){
		var nullChk=false;
		$.each(obj, function(i,n){
			if(n==null){ nullChk=true; }
		});
		return nullChk;
	}

})(jQuery);
