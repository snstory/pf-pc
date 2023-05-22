// Document Ready List ...
$(function(){

	$(".snb_in_ul").MRURollover({
		funcOffFoler: ["pcs"]
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
		lt: $("a.lt", this),
		gt: $("a.gt", this),
		staticArea: $("div.int02_2", this),
		visualArea: $("div.int02_3", this),
		xmlSrc: "/xml/intro_02.xml",
		auto: false,
		delayTime: 2000,
		duration: 300,
		easing: "easeInOutQuad",
		viewDuration: 800,
		viewEasing: "easeInOutElastic",
		viewSetOpacity: 0.5,
		finalOpacity: 1
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
			cursor: null, // ������
			mlayer: null, // ������ �θ� moving Layer
			direction: "gt", // ���� �̵� ���� (�⺻ : �������� �̵�)
			defaultWidth: 56, // �޴� �±��� ���� (���̾ �����϶� ���)
			itemLength: 0, // �޴� ���� (xml ���� �޾ƿ� �����͸� �Ľ��� �� ���.)
			itemMinLength: 0, // �̺�Ʈ�� �ʿ��� �������� �ּҰ���
			setInterval_id: null, // Ÿ�Ӿƿ� ���̵�.
			doScrollCheck: true, // ��ũ���� �ʿ��Ѱ�? Ȯ��.
			loadIngImgElem: null, // �ε��� �̹��� �� ������ ���� ����.
			notepad: null, // ���� Ȯ���� ���� �ӽ� ��Ʈ�� �����Ǿ��°� Ȯ��.

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
						inn.setInterval_id = setInterval(this.directionProc, inn.delayTime);

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
										inn.setInterval_id = setInterval(inn.fns.directionProc, inn.delayTime);
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
						success: this.parsingXml,
						context: this,
						error: function(xhr,status,errorThrown){
							$(this).html("<div class='ma02_alert'><table><tr><td>�������Դϴ�.</td></tr></table></div>");
						}
					});
				},
				parsingXml: function(xhr){ // xml�� �Ľ��� �� ���� �۾� ����. 
					var items = $("list", xhr);
					inn.itemLength = items.length; // ������ ���� ���.

					//inn.fns.alerts(inn.itemLength * inn.defaultWidth);

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
							width: inn.itemLength * inn.defaultWidth,
							height: "100%"
						}
					}).html(htmlStr).appendTo(inn.staticArea);
					inn.mlayer = $("div:first-child", inn.staticArea);
					inn.cursor = $("li:eq(0)", inn.mlayer);

					if(inn.itemLength <= inn.itemMinLength){
						inn.doScrollCheck = true;
						$(inn.lt).css({ display: "none" });
						$(inn.gt).css({ display: "none" });
					}

					if(inn.itemLength <= 0){ return false; }
					this.binding(); // �� ��ü�� �ش� �̺�Ʈ ���ε�.
					this.coreEngine.call(inn.cursor, true); // �̺�Ʈ ����.
				},
				directionProc: function(){
					inn.fns.alerts("inn.setInterval_id: " + inn.setInterval_id);

					if(inn.direction=="lt"){
						if(!inn.cursor.prev().attr("nodeName")){
							inn.fns.nodeChange.call($("li:last", inn.cursor.parent()));
							return false;
						}
						inn.fns.coreEngine.call(inn.cursor.prev(), false);
					}else{
						if(!inn.cursor.next().attr("nodeName")){
							inn.fns.nodeChange.call($("li:eq(0)", inn.cursor.parent()));
							return false;
						}
						inn.fns.coreEngine.call(inn.cursor.next(), false);
					}
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
								inn.fns.directionProc();
								return false;
							}
						});
						inn.gt.bind({
							 click: function(){
								inn.direction = "gt";
								inn.fns.directionProc();
								return false;
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
				},
				coreEngine: function(){ // =======
					inn.fns.waitImgLoading(); // �ε��̹��� ����.
					inn.fns.unBinding(); // ����ε�. ��� ���.

					var imgClick = (arguments[0]) ? true : false;
					if(imgClick){ // item �� Ŭ���ߴٸ�,
						inn.cursor=null;
						inn.cursor=this; // �ڽ��� ���
						inn.fns.thumbNailProc.call(this); // thumb nail ó�� �� Ÿ�� �̹��� �ε�.
					}else{ // �¿� ��ư�� Ŭ���ߴٸ�,
						var isSafe = inn.fns.safePerception.call(this);
						inn.cursor=null;
						inn.cursor=this; // �ڽ��� ���
						if(isSafe){ // cursor �� ��常 ��ü.
							inn.fns.thumbNailProc.call(this);
						}else{ // ���̾� �̵� �ʿ�.
							inn.fns.layerMoving.call(this);
						}
					}
				},
				safePerception: function(){
					var isSafe = false;
					var limitpos = null;
					var relativePos = null;
					var idx = $("li", inn.mlayer).index(this) + 1;
					var absMyPos = inn.defaultWidth * idx - inn.defaultWidth;

					if(inn.direction == "gt"){ // ���̾�� �������� �̵�.
						limitpos = inn.staticArea.width() - inn.defaultWidth;
						relativePos = absMyPos - parseInt($(inn.mlayer).css("left"), 10);
						isSafe = (relativePos <= limitpos) ? true : false;
					}else{ // ���̾�� �������� �̵�.
						limitpos = 0;
						relativePos = absMyPos + parseInt($(inn.mlayer).css("left"), 10);
						isSafe = (relativePos >= limitpos) ? true : false;
					}
					return isSafe;
				},
				layerMoving: function(){
					var _level = this;
					var layer = $(this).parents("div:eq(0)");
					var paNatureLeft = parseInt(layer.css("left"));
					var dest = (inn.direction=="gt") ? (paNatureLeft - ($(this).width())) : 0;
					layer.animate({
						left: dest
					}, inn.duration, inn.easing, function(){
						inn.fns.thumbNailProc.call(_level);
					});
				},
				nodeChange: function(){
					if(inn.doScrollCheck){
						if(!inn.cursor.next().attr("nodeName")){
							var pa = inn.cursor.parent();
							inn.cursor=null;
							inn.cursor=$("li:first", pa);
							alert("inn.cursor : "+ inn.cursor.attr("nodeName"));
						}
					}else{
						inn.cursor=null;
						inn.cursor=this.clone();
						if(inn.direction=="gt"){ // �����̵��� ���.
							inn.cursor.appendTo(this.parent());
							this.parents("div:eq(0)").css({
								left: (parseInt(this.parents("div:eq(0)").css("left")) + inn.defaultWidth)
							});
						}else{ // �����̵��� ���.
							inn.cursor.prependTo(this.parent());
							this.parents("div:eq(0)").css({
								left: (parseInt(this.parents("div:eq(0)").css("left")) - inn.defaultWidth)
							});
						}
						this.remove();
					}
					inn.fns.coreEngine.call(inn.cursor);
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
					inn.visualArea.empty();

					if(inn.loadIngImgElem){ // �ε��̹����� �ִٸ� ����.
						$(inn.loadIngImgElem).remove();
						inn.loadIngImgElem=null;
					}

					$("<img />").attr({
						src: isrc,
						alt: ialt
					}).bind({
						load: function(){
							var thisHeight = $(this).height();
							inn.visualArea.height(thisHeight);
						}
					}).css({
						opacity: inn.viewSetOpacity
					}).animate({
						opacity: inn.finalOpacity
					}, inn.viewDuration, inn.viewEasing, function(){
						inn.fns.binding();
					}).appendTo(inn.visualArea);
				},
				alerts: function(str){ // �ӽñ��.
					if(!inn.notepad){
						var ran_id = "id_"+parseInt(Math.random()*10000000000000, 10);
						$("<div />", {
							css: {
								position: "absolute",
								left: 10,
								top: 10,
								zIndex: 10000,
								width: "auto",
								height: "auto",
								padding: 30,
								border: "2px solid black",
								backgroundColor: "#f2f2f2",
								color: "#000"
							},
							click: function(){
								$(this).remove();
								inn.notepad = null;
							}
						}).attr({ id: ran_id }).appendTo("body");
						inn.notepad = $("#"+ran_id);
					}
					inn.notepad.html(str + " <br />turn :" + parseInt(Math.random()*100000000000000));
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
			$.map(obj.funcOffFoler, function(n,i){
				if(varcath.search(n+"/")!=-1){
					obj.pageNoOff=true;
				}
			});
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

	$.MRUReturnFolderURL=function(){
		var url=window.location.href;
		var pattern=/(\w+):\/\/([\w.]+)\/(\S*)/;
		var rets=url.match(pattern);
		var catchURL=rets[rets.length-1];
		var varcath=catchURL.split("?");
		return varcath[0];
	}

	$.returnNullCheck=function(obj){
		var nullChk=false;
		$.each(obj, function(i,n){
			if(n==null){ nullChk=true; }
		});
		return nullChk;
	}

})(jQuery);
