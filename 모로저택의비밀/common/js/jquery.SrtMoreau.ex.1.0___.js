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
	
	// home > 게임소개 > 캐릭터소개
	$.fn.MRUIntro02Event=function(obj){
		if(!document.getElementById(this.attr("id"))){ return false; }
		var obj = $.extend({
			// context: null,
			lt: null, // 좌측버튼 (누르면 direction: gt 적용)
			gt: null, // 우측버튼 (누르면 direction: lt 적용)
			staticArea: null, // 뷰 영역 (고정)
			visualArea: null, // 썸네일과 연결되는 타겟 이미지가 보여질 영역
			xmlSrc: null, // xml 문서 경로.
			auto: false, // 자동 실행 선택
			delayTime: 3000, // 자동 실행 모드인 경우 interval or setInterval 간격.
			duration: 300, // 이동시에 적용.
			easing: "swing", // 레이어 이동시 적용되는 스타일.
			viewDuration: 600, // 뷰 영역에 적용.
			viewEasing: "swing", // 뷰 영역에 이미지 로드시 적용되는 스타일.
			viewSetOpacity: 0.5, // 뷰 영역에 로드완료후 애니메이션 시작전 불투명도. (0.0 ~ 1.0)
			finalOpacity: 1 // 뷰 영역에 애니메이션 후 불투명도. (0.0 ~ 1.0)
		}, obj || {});

		if($.returnNullCheck(obj)){ return false; }

		var inn = $.extend({
			cursor: null, // 현재노드
			mlayer: null, // 노드들의 부모 moving Layer
			direction: "gt", // 현재 이동 방향 (기본 : 우측으로 이동)
			defaultWidth: 56, // 메뉴 태그의 넓이 (레이어가 움직일때 사용)
			itemLength: 0, // 메뉴 갯수 (xml 에서 받아온 데이터를 파싱한 후 등록.)
			itemMinLength: 0, // 이벤트가 필요한 아이템의 최소개수
			setInterval_id: null, // 타임아웃 아이디.
			doScrollCheck: true, // 스크롤이 필요한가? 확인.
			loadIngImgElem: null, // 로딩용 이미지 의 참조를 담을 변수.
			notepad: null, // 변수 확인을 위한 임시 노트가 생성되었는가 확인.

			fns: {
				Constructor: function(){
					this.formatDefaultSet();
				},
				formatDefaultSet: function(){ // 기본 세팅
					var oriWidth = $("li:eq(1)", inn.staticArea).width();
					inn.defaultWidth = oriWidth ? oriWidth : inn.defaultWidth;
					inn.itemMinLength = parseInt(inn.staticArea.width() / inn.defaultWidth);
					this.getXml(); // xml 파싱 및 레이어 생성.
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
							$(this).html("<div class='ma02_alert'><table><tr><td>점검중입니다.</td></tr></table></div>");
						}
					});
				},
				parsingXml: function(xhr){ // xml을 파싱한 후 관련 작업 실행. 
					var items = $("list", xhr);
					inn.itemLength = items.length; // 아이템 갯수 등록.

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
					this.binding(); // 각 개체에 해당 이벤트 바인딩.
					this.coreEngine.call(inn.cursor, true); // 이벤트 실행.
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
					if(inn.itemLength <= inn.itemMinLength){ // 아이탬수가 최소개수보다 작거나 같으면,
						if(inn.itemLength <= 1){ return false; } // 아이탬이 하나나 그 이하라면 실행 취소.
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
					inn.fns.waitImgLoading(); // 로딩이미지 생성.
					inn.fns.unBinding(); // 언바인딩. 기능 잠금.

					var imgClick = (arguments[0]) ? true : false;
					if(imgClick){ // item 을 클릭했다면,
						inn.cursor=null;
						inn.cursor=this; // 자신을 등록
						inn.fns.thumbNailProc.call(this); // thumb nail 처리 및 타겟 이미지 로드.
					}else{ // 좌우 버튼을 클릭했다면,
						var isSafe = inn.fns.safePerception.call(this);
						inn.cursor=null;
						inn.cursor=this; // 자신을 등록
						if(isSafe){ // cursor 의 노드만 교체.
							inn.fns.thumbNailProc.call(this);
						}else{ // 레이어 이동 필요.
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

					if(inn.direction == "gt"){ // 레이어는 좌측으로 이동.
						limitpos = inn.staticArea.width() - inn.defaultWidth;
						relativePos = absMyPos - parseInt($(inn.mlayer).css("left"), 10);
						isSafe = (relativePos <= limitpos) ? true : false;
					}else{ // 레이어는 우측으로 이동.
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
						if(inn.direction=="gt"){ // 우측이동인 경우.
							inn.cursor.appendTo(this.parent());
							this.parents("div:eq(0)").css({
								left: (parseInt(this.parents("div:eq(0)").css("left")) + inn.defaultWidth)
							});
						}else{ // 좌측이동인 경우.
							inn.cursor.prependTo(this.parent());
							this.parents("div:eq(0)").css({
								left: (parseInt(this.parents("div:eq(0)").css("left")) - inn.defaultWidth)
							});
						}
						this.remove();
					}
					inn.fns.coreEngine.call(inn.cursor);
				},
				thumbNailProc: function(){ // 영역 정리 및 비주얼 영역 실행.
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

					if(inn.loadIngImgElem){ // 로딩이미지가 있다면 삭제.
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
				alerts: function(str){ // 임시기능.
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
	*  *** MRURollover 설명. ***
	*	[주의사항] 페이지 명을 정할 경우. 사이드메뉴의 확장자(.html)의 이전 이름이 동일해야 적용이 됩니다.
	*		예)   /notice/notice.html == /notice/notice_read.html (Ο)
	*			/notice/notice.html == /notice/other_notice_read.html (X)
	*
	*	페이지명의 규칙을 지키기 어려운 경우 수동모드로 사용하시면 됩니다. (웹서버등을 사용하여 pageNo="n" 어트리뷰트 추가)
	*
	*	autoSearch		: pageNo 자동부여기능설정. 자동(auto) or 수동(manual). 디폴트: auto.
	*	funcOffFoler	: 적용을 제외할 폴더 배열.
	*	menuUseTag		: 이미지를 포함하고 있는 메뉴로 사용된 엘리먼트 명. 디폴트: LI.
	**/
	$.fn.MRURollover=function(obj){
		var obj=$.extend({
			autoSearch: "auto",
			funcOffFoler: null,
			menuUseTag: "li",
			pageNoOff: false,
			pageNoAttr: "pageNo"
		},obj||{});

		if(!this.attr("nodeName")){ return false; } // 엘리먼트가 불량이면 실행취소.

		if(obj.funcOffFoler!=null && obj.funcOffFoler.length>0){ // 이벤트를 적용하지 않을 url 인가 확인.
			var varcath=$.MRUReturnFolderURL();
			$.map(obj.funcOffFoler, function(n,i){
				if(varcath.search(n+"/")!=-1){
					obj.pageNoOff=true;
				}
			});
		}
		
		obj.menuUseTag=obj.menuUseTag.toLowerCase(); // 태그명 소문자로 재정의.
		if(!isNaN(parseInt(this.attr(obj.pageNoAttr)))){ // pageNo 를 정의했을 경우 사용했을 경우 수동으로 전환.
			obj.autoSearch="manual";
		}

		var _level=this;
		var lis=this.find(obj.menuUseTag);
		var rx={
			pgNum: -1,
			ovNum: -1,// 롤오버 번호.
			muArr: $.makeArray(lis) // 메뉴 모음 배열.
		}

		if(obj.autoSearch.toLowerCase()=="manual"){ // 수동모드일 경우 적용.

			var attrChk=parseInt($(_level).attr(obj.pageNoAttr)); // 수동으로 적용한 번호를 변수에 저장.
			if(!isNaN(parseInt(attrChk))){
				if(parseInt(attrChk) > -1){
					rx.pgNum=parseInt(attrChk);
				}
			}

		}else{ // 자동모드(auto) 일경우 적용.
			rx.pgNum=$.MRUAddPageNo({ muArr: rx.muArr });
		}

		if(obj.pageNoOff){ rx.pgNum=-1; } // 기능 off 인 폴더일 경우.

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

		mouseEvent(rx.pgNum-1); // 로드시 실행.
		return this;
	}

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

	// 로딩용 이미지 추가
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

	// 팝업내에서 사용. (창크기 제어)
	$.fn.GM4WindowResize=function(){
		$this=$(this);

		var wGab,hGab,svW,svH,nX,nY;
		var nW=$this.innerWidth();
		var nH=$this.innerHeight();
		window.resizeTo(nW, nH); // 1차.

		try{
			wGab=nW+(Math.abs($(window).width()-nW));
			hGab=nH+(Math.abs($(window).height()-nH));
			window.resizeTo(wGab, hGab); // 최종.

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
			window.resizeTo(wGab, hGab); // 최종.
			nX=20;
			nY=20;
			window.moveTo(nX, nY);
		}

		return this;
	}


	/**
	* function MRUAddPageNo
	*
	*	muArr	: 메뉴 배열 (번호를 생성할 때 사용될 메뉴 배열).
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
