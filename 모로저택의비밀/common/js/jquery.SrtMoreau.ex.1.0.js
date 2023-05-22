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
		lt: $("a.lt", this), // 좌측버튼 (누르면 direction: gt 적용)
		gt: $("a.gt", this), // 우측버튼 (누르면 direction: lt 적용)
		staticArea: $("div.int02_2", this), // 뷰 영역 (고정)
		visualArea: $("div.int02_3", this), // 썸네일과 연결되는 타겟 이미지가 보여질 영역
		xmlSrc: "/xml/intro_02.xml", // xml 문서 경로.
		auto: true, // 자동 실행 선택
		delayTime: 4000, // 자동 실행 모드인 경우 interval or setInterval 간격.
		duration: 300, // 메뉴목록 이동속도.
		easing: "easeInOutCirc", // 레이어 이동시 적용되는 스타일.
		viewDuration: 600, // 뷰 영역 opacity 에 적용.
		viewEasing: "easeOutSine", // 뷰 영역에 이미지 로드시 적용되는 스타일.
		viewSetOpacity: 0.5, // 뷰 영역에 로드완료후 애니메이션 시작전 불투명도. (0.0 ~ 1.0)
		finalOpacity: 1 // 뷰 영역에 애니메이션 후 불투명도. (0.0 ~ 1.0)
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
			xmlErrorAlertImg: "/images/intro/pg_02_error.jpg",
			cursor: null, // 현재노드
			mlayer: null, // 노드들의 부모 moving Layer
			direction: "gt", // 현재 이동 방향 (기본 : 우측으로 이동)
			defaultWidth: 56, // 메뉴 태그의 넓이 (레이어가 움직일때 사용)
			itemLength: 0, // 메뉴 갯수 (xml 에서 받아온 데이터를 파싱한 후 등록.)
			itemMinLength: 0, // 이벤트가 필요한 아이템의 최소개수
			setInterval_id: null, // interval 아이디.
			doScrollCheck: true, // 스크롤이 필요한가? 확인.
			loadIngImgElem: null, // 로딩용 이미지의 참조.

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
							inn.visualArea.empty(); // 이미지가 로딩될 영역 청소.
							var htmlStr = "<div style=\"width:100%;height:100%;text-align:center;\">";
							htmlStr += "<img src=\""+inn.xmlErrorAlertImg+"\" alt=\"Sorry. Now inspecting the system...\" />";
							htmlStr += "</div>";
							$(this).html(htmlStr);
						}
					});
				},
				parsingAndFirstPlay: function(xhr){ // xml을 파싱한 후 관련 초기작업실행. 
					var items = $("list", xhr);
					inn.itemLength = items.length; // 아이템 갯수 등록.
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

					if(inn.itemLength <= 0){ return false; } // 아이템수가 없다면 실행 취소.
					inn.fns.binding(); // 각 개체에 해당 이벤트 바인딩.
					inn.fns.coreEngine.call(inn.cursor); // 초기 이벤트 실행.
				},
				csftrForEngine: function(){
					inn.fns.unBinding(); // 언바인딩. (기능 일시 잠금).
					var newCursor = null;
					var security = inn.fns.layerPosRealize.call(inn.cursor); // 커서가 이동할 위치 확인.
					var oriPaLeft = parseInt(inn.cursor.parents("div:eq(0)").css("left"));

					if(inn.direction == "gt"){
						if(! inn.cursor.next().attr("nodeName")){
							newCursor = $("li:first", inn.cursor.parent());
							var cloneCursor = newCursor.clone();
							cloneCursor.appendTo(inn.cursor.parent());
							inn.cursor = null;
							inn.cursor = cloneCursor;
							newCursor.remove();

							if(! security){ // 우측경계이고, 뷰영역도 벗어난 경우. (부모를 우측으로 이동시켜둔다)
								inn.cursor.parents("div:eq(0)").css({ left: oriPaLeft + inn.defaultWidth });
							}
						}else{
							newCursor = inn.cursor.next();
							inn.cursor = null;
							inn.cursor = newCursor;

							if(! security){ // 우측경계가 아니고, 뷰영역만 벗어난 경우.
								oriPaLeft = oriPaLeft - inn.defaultWidth; // 부모영역만 이동.
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

							if(! security){ // 좌측경계이고, 뷰영역도 벗어난 경우. (부모를 좌측으로 이동시켜둔다)
								inn.cursor.parents("div:eq(0)").css({ left: oriPaLeft - inn.defaultWidth });
							}
						}else{
							newCursor = inn.cursor.prev();
							inn.cursor = null;
							inn.cursor = newCursor;

							if(! security){ // 좌측경계가 아니고, 뷰영역만 벗어난 경우.
								oriPaLeft = oriPaLeft + inn.defaultWidth; // 부모영역만 이동.
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
				layerPosRealize: function(){ // inn.cursor 가 이동할 곳의 위치 확인.
					var security = true;
					var mypa = this.parents("div:eq(0)");
					var mypaLeft = parseInt(mypa.css("left"));
					var myIdx = $("li", mypa).index(this);
					var myLeft = mypaLeft + (myIdx * inn.defaultWidth);
					var myTarget = 0;
					var myGpa = mypa.parents("div:eq(0)");
					if(inn.direction == "gt"){
						myTarget = myLeft + inn.defaultWidth; // 커서가 이동할 위치
						security = (myLeft < (myGpa.width() - inn.defaultWidth)) ? true : false;
					}else{
						myTarget = myLeft - inn.defaultWidth; // 커서가 이동할 위치
						security = (myTarget >= 0) ? true : false;
					}
					return security;
				},
				coreEngine: function(){ // =======
					inn.visualArea.empty(); // 이미지가 로딩될 영역 청소.
					inn.fns.waitImgLoading(); // 로딩이미지 생성.
					inn.fns.unBinding(); // 언바인딩. (기능 일시 잠금).

					var imgClick = (arguments[0]) ? true : false;
					if(imgClick){ // item 을 클릭했다면,
						inn.cursor=null;
						inn.cursor=this; // 자신을 등록
						inn.fns.thumbNailProc.call(this); // thumb nail 처리 및 타겟 이미지 로드.
					}else{ // 좌우 버튼을 클릭했다면,
						inn.fns.thumbNailProc.call(inn.cursor);
					}
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

					$("<img />").attr({
						src: isrc,
						alt: ialt
					}).bind({
						load: function(){
							var thisHeight = $(this).height();
							inn.visualArea.height(thisHeight);
							if(inn.loadIngImgElem){ // 로딩이미지가 있다면 삭제.
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
			if(varcath){
				$.map(obj.funcOffFoler, function(n,i){
					if(varcath.search(n)!=-1){
						obj.pageNoOff=true;
					}
				});
			}
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

	/*
		* url 형식이 http://www-nnnn.sitename.co.kr/ 적용가능하도록 수정.
	*/
	$.MRUReturnFolderURL=function(){
		var url=window.location.href;
		//var pattern=/(\w+):\/\/([\w.]+)\/(\S*)/; // 정상패턴.
		var pattern=/(\w+):\/\/([\w\W.]+)\/(\S*)/; // 테스트 url 용 패턴.
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
