(function($) {

	// 이미지 롤오버 처리.
	$.fn.jcfmAddRollOverEvt = function(_obj) {
		if (isNaN(_obj.gno)){
			if (_obj.len == 1){
				_obj.gno = 1;
			} else {
				_obj.gno = 0; // 변수를 지정하지 않았을 경우 초기값 설정. (현재 위치 선택되지 않음)
			}
		}

		var obj = $.extend({
			gno: 0,
			upno: 0,
			len: 0,
			gab: 20
		}, _obj || {});
		
		var _level = this;

		$.each(this, function(idx, elem) {
			elem._parent = $(elem).parents("div")[0];
			elem.no = idx + 1;
			elem.img = $(elem).find("a > img")[0];
			elem.smenu = $(elem).find("a ~ dl");
			elem.smenuHght = $(elem.smenu).innerHeight();

			if (elem.smenu){
				$(elem.smenu).css({ height: "0px" });
			}

			if (elem.img && elem.no == obj.gno){
				obj.upno = elem.no;
				imgChange({ elem: _level }); // 버튼 이미지 처리.
			}

			$(elem).bind({
				mouseenter: function() {
					if (this.img){
						obj.upno = this.no;
						imgChange({ elem: _level }); // 버튼 이미지 처리.
					}
				},
				mouseleave: function() {
					if (this.img){
						obj.upno = obj.gno;
					}
				}
			});
			
			$(elem._parent).bind({
				mouseleave: function() {
					imgChange({ elem: _level }); // 버튼 이미지 처리.
				}
			});
		});

		function imgChange(_obj) {

			var o = $.extend({
				elem: null
			}, _obj || {});

			if (o.elem==null){ return false; }

			$.each(o.elem, function(idx, elem) {
				if (elem.img){
					if (this.no == obj.upno){
						$.imgNameEditor(this.img, "on"); // now rollover menu.
						if (this.smenu){
							$(this.smenu).stop().animate({
								height: this.smenuHght + "px"
							}, 400);
						}
					} else {
						$.imgNameEditor(this.img, "off"); // now rollout menu.
						if (this.smenu){
							$(this.smenu).stop().animate({
								height: "0px"
							}, 400);
						}
					}
				}
			});
		}

		return this;
	}

	// 메인 탭메뉴 컨트롤
	$.fn.jcfmAddTabMenuControl = function(_obj) {
		var obj = $.extend({
			slideSpeed: 200,
			nowAreaNo: 1,
			gno: 1,
			_level: this
		}, _obj || {});

		$.each(this, function(idx, div) {
			if ($(this).find("h3").size() < 2){
				return false;
			}

			div.no = idx + 1;
			$(div).bind({
				mouseenter: function() {
					obj.nowAreaNo = this.no;
				},
				mouseleave: function() { /* ready */ }
			});
			
			var h3 = $(div).find("h3");

			$.each(h3, function(idx, h3s) {
				var img = $(h3s).find("a > img")[0];
				h3s.no = img.no = div.no;
				h3s.sno = img.sno = idx + 1; 
				$(img).bind({
					mouseover: function() {
						obj.nowAreaNo = this.no;
						obj.gno = this.sno;
						tabAreaControl();
					},
					mouseout: function() { /* ready */ }
				});

			});

			tabAreaControl(1);
		});

		function tabAreaControl(checkFirst) {

			$.each($(obj._level).find("h3"), function(idx, elem) {
				var img = $(this).find("a > img")[0];
				var list = $(this).next("div.list")[0];

				if (checkFirst){
					if (this.sno == undefined){
						$.imgNameEditor(img, "on");
						$(list).css({
							display: "block"
						});
					} else {
						if (this.sno == obj.gno){
							$.imgNameEditor(img, "on");
							$(list).css({
								display: "block"
							});
						} else {
							$.imgNameEditor(img, "off");
							$(list).css({
								display: "none"
							});
						}
					}
				} else {
					if (this.no == obj.nowAreaNo){
						if (this.sno == obj.gno){
							$.imgNameEditor(img, "on");
							$(list).css({
								display: "block"
							});
						} else {
							$.imgNameEditor(img, "off");
							$(list).css({
								display: "none"
							});
						}
					}
				}
			});
		}

		return this;
	}

	$.fn.jcfmBbsEraseLine = function() {
		var targets = $(this).find("table tbody tr:first-child td");
		$.each(targets, function(idx, td) {
			$(td).css({
				backgroundImage: "none"
			});
		});
		return this;
	}

	$.fn.jcfmLayoutControl = function() {
		var pageZone = $(this).parents("div.pageZone")[0]; // 컨텐츠 레이아웃 부모 객체.
		var pageMaxWidth = parseInt($(pageZone).css("width")) || 615; // 레이아웃 최대 넓이.
		var ifr = $(this).children("iframe")[0]; // 아이프레임 객체.
		var par = $(this).parents("div.bb01_swf")[0]; // 부모 div 객체.

		$(this).css({
			position: "absolute",
			width: $(ifr).innerWidth() + "px",
			height: $(ifr).innerHeight() + "px",
			left: (this.width() <= pageMaxWidth) ? "0px" : "-" + (parseInt((this.width() - pageMaxWidth) * 0.5)) + "px"
		});
		$(par).css({
			width: ($(ifr).innerWidth() <= pageMaxWidth) ? $(ifr).innerWidth() : pageMaxWidth + "px",
			height: $(ifr).innerHeight() + "px"
		});

		return this;
	}

	$.fn.jcfmPageZonePrint = function(_obj) {

		var o = $.extend({
			url: "../pagePrintZone/printPage.html",
			wGab: 20,
			hGab: 0
		}, _obj || {});

		var pageZone = this.parents("div.pageZone")[0]; // 컨텐츠 레이아웃 부모 객체.
		var pageMaxWidth = parseInt($(pageZone).css("width")) + o.wGab || 615; // 레이아웃 최대 넓이.
		var pageMaxHeight = parseInt($(pageZone).css("height")) - parseInt($(".bb_btn_01").css("height")) - parseInt($(".fm01").css("height")) + o.hGab || 700;

		this.bind({
			click: function() {
				window.open(o.url, 'newWindow', 'scrollbars=yes,menubar=yes,width='+pageMaxWidth+',height='+pageMaxHeight);
				return false;
			}
		});

		return this;
	}

	$.fn.jcfmEHabitsControl = function(obj) {
		var o = $.extend({
			quLayer: $("#eatingHabitsQLayer"), // 문제용 레이어.
			reLayer: $("#eatingHabitsReaultLayer"), // 결과보기 레이어.
			nextBtn: $("#nextQuestion"), // 다음질문으로 넘어가기 버튼.
			resetBtn: $("#resetQuestion"),
			resultBtnSrc: "../images/common/btns/result.gif"
		}, obj || {});

		var level = this;
		var eventCancle = false;

		$.each(o, function(n) {
			if (n != "resultBtnSrc"){
				if (! this.attr("id")){
					eventCancle = true;
				}
			}
		});

		if (eventCancle){ return false; }

		// 오늘 체크하였는가?
		//alert($.cookie("EHabits"));

		var idx = {
			nowTurn: 1,
			aniSpeed: 600,
			onColor: "#a54921",
			offColor: "#999",
			question: [
				{q: "아침밥은 제대로 먹었어요.", ex1: "네.", ex2: "아니요. 아침은 조금만 먹거나 안먹었어요.", choice:0, correct:1, score:0},
				{q: "오늘 하루 한 시간 운동을 했어요", ex1: "네", ex2: "아니요", choice:0, correct:1, score:0},
				{q: "일찍 자고 일찍 일어났어요.", ex1: "네", ex2: "아니요", choice:0, correct:1, score:0},
				{q: "간식을 먹을 때는 우유와 함께 먹었어요.", ex1: "네, 우유는 항상 곁들여 먹어요.", ex2: "아니요. 아무거나 먹어요.", choice:0, correct:1, score:0},
				{q: "규칙적으로 간식을 먹어요.", ex1: "네, 정해진 시간에 간식을 먹었어요.", ex2: "아니요. 먹고 싶을 때 먹었어요.", choice:0, correct:1, score:0},
				{q: "인스턴트 식품 보단 엄마가 해준 음식을 먹었어요.", ex1: "네, 인스턴트 식품은 싫어요.", ex2: "아니요. 인스턴트 식품이 더 좋아요.", choice:0, correct:1, score:0},
				{q: "결식은 하지 않았어요.", ex1: "네, 결식은 절대 하지 않아요.", ex2: "아니요. 배가 안고프면 안 먹었어요.", choice:0, correct:1, score:0},
				{q: "감기나 질병에 잘 걸리지 않았어요.", ex1: "네, 저는 항상 건강해요.", ex2: "아니요. 전 자주 자주 아파요.", choice:0, correct:1, score:0},
				{q: "짠 음식보단 싱거운 음식을 먹었어요.", ex1: "네, 싱거운 음식이 좋아요.", ex2: "아니요. 싱거운 음식은 맛이 없어요.", choice:0, correct:1, score:0},
				{q: "야식은 먹지 않았어요.", ex1: "네, 야식은 건강에 나빠요.", ex2: "아니요. 늦은 밤이라도 배고프면 먹어요.", choice:0, correct:1, score:0}
			],
			total: function() {
				var qcount = idx.question.length;
				var correctEA = 0;
				$.each(idx.question, function() {
					correctEA += (this.score != 0) ? 1 : 0;
				});
				return (correctEA / qcount) * 100;
			}
		};

		function questionStageReady() {
			o.reLayer.hide();

			o.quLayer.css({
				position: "relative",
				overflow: "hidden"
			}).find("div:first-child").css({
				position: "absolute",
				left: "0px",
				top: "0px",
				width: "100%"
			});

			dataInsert(o.quLayer);
		}
		function dataInsert(obj) {
			$(obj).find("h3:first-child").text(idx.nowTurn + ". " + idx.question[idx.nowTurn-1].q)
			.end().find("li:eq(0) > a").text(idx.question[idx.nowTurn-1].ex1).css({
				color: (idx.question[idx.nowTurn-1].choice == 1) ? idx.onColor : idx.offColor
			}).end().find("li:eq(1) > a").text(idx.question[idx.nowTurn-1].ex2).css({
				color: (idx.question[idx.nowTurn-1].choice == 2) ? idx.onColor : idx.offColor
			}).end().find("li:eq(1)").css({ paddingRight: "0px" });

			bindQEvent(o.quLayer); // 현재 문제 레이어의 객체들에 이벤트 로드.
		}
		questionStageReady(); // 초기 기본 세팅.

		o.nextBtn.bind({
			click: function() {
				if (idx.question[idx.nowTurn-1]){
					var stoped = (idx.question[idx.nowTurn-1].choice == 0) ? true : false;

					if (stoped){
						alert(idx.nowTurn + "번 문제의 답을 선택해 주세요.");
						return false;
					} else { // 문제를 풀고 다음문제버튼을 클릭했다면, 레이어를 새로 정리 후 문제 출제.
						idx.nowTurn++;
						layerReset(o.quLayer);
					}

					if (idx.nowTurn > idx.question.length){ // 문제를 모두 풀었다면, 결과보기
						resultScore();
					}
				} else {
					if (idx.nowTurn > idx.question.length){ // 문제를 모두 풀었다면, 결과보기
						resultScore();
					}
				}

				return false;
			}
		});

		o.resetBtn.bind({
			click: function() {
				window.location.reload();
				return false;
			}
		});

		function resultScore() {
			o.quLayer.hide();
			o.reLayer.css({
				display: "block",
				opacity: "0.3"
			}).animate({
				opacity: "1.0"
			}, idx.aniSpeed).find("p.score > span:first-child").text(idx.total());

			$.cookie("EHabits", idx.total(), "");

			// 검수.
			/*
			var str = "";
			$.each(idx.question, function(n) {
				str += "선택: "+this.choice+" , 정답: "+this.correct+" , 점수:"+this.score+"\n";
			});
			alert(str);
			*/
		}

		function bindQEvent(obj, unbinded) {
			if (unbinded){
				$(obj).find("ul > li > a:first-child").each(function(n) {
					if (n+1 == idx.question[idx.nowTurn-1].choice){
						$(this).css({ color: idx.onColor });
					} else {
						$(this).css({ color: idx.offColor });
					}
				});

			} else {
				$(obj).find("ul > li > a:first-child").each(function(n) {
					$(this).bind({
						click: function() {
							var no = n+1;
							if (idx.question[idx.nowTurn-1].choice == no){
								return false;
							}
							if (idx.nowTurn >= idx.question.length){
								o.nextBtn.find("img:first-child").attr({
									src: "../images/common/btns/result.gif"
								});
							}

							idx.question[idx.nowTurn-1].score = (idx.question[idx.nowTurn-1].correct == no) ? 1 : 0;
							idx.question[idx.nowTurn-1].choice = no; // 선택한 정답.
							bindQEvent(obj, true);
							return false;
						}
					});
				});
			}
		}

		function layerReset(obj) {

			if ($(obj).find("div").size() == 1){
				$(obj).find("div").clone().appendTo(obj);
			}

			$(obj).find("div").each(function(n) {
				if (n == 0){
					$(this).css({
						left: "0px"
					}).animate({
						left: "-" + obj.innerWidth() + "px"
					}, idx.aniSpeed, function() {
						$(this).remove();
					});
				} else if(n == 1){
					if (idx.question[idx.nowTurn-1]){
						dataInsert(this);
					}

					$(this).css({
						position: "absolute",
						left: obj.innerWidth() + "px",
						top: "0px",
						width: "100%"
					}).animate({
						left: "0px"
					}, idx.aniSpeed, function() {
						bindQEvent(obj);
					});
				}
			});
		}

		return this;
	}

// ====================================== 공통사용 함수 ===============================================================

	// 이미지 롤오버 이벤트
	$.imgNameEditor = function(img, stat) {
		var reStat = (stat == "on") ? "off" : "on";
		var srcArray = $(img).attr("src").split("/");
		var srcNewStr = ""; // 이미지명 제외한 경로.
		$.each(srcArray, function(idx, items) {
			if (idx < srcArray.length - 1){
				srcNewStr += items + "/";
			}
		});

		var exps = srcArray[srcArray.length - 1];
		if (exps.search("_"+ stat +".") != -1) {
			return false;
		} else {
			$(img).attr("src", srcNewStr + exps.replace("_"+ reStat +".", "_"+ stat +"."))
				.css({ opacity: "0.3" })
				.stop().animate({
					opacity: "1.0"
			}, (reStat=="off") ? 300 : 0);
		};
	}

	// alert($.cookie(value));
	$.cookie = function(key, value, options) {
		if(arguments.length > 1) {
			var o = $.extend({}, $.cookie.defaults, options);

			if (value === null || value === undefined) {
				value = '';
				o.expires = -1;
			}
			if (o.expires.constructor != Date) {
				var today = new Date();
				today.setDate(today.getDate() + o.expires);
				o.expires = today;
			}
			// Create the cookie string
			document.cookie =
			key + '=' + value + '; expires=' + o.expires.toUTCString() +
			(o.path? '; path=' + (o.path) : '') +
			(o.domain? '; domain=' + (o.domain) : '') +
			(o.secure? '; secure' : '');
		} else {
			if(result = new RegExp(key+"=(.*?)(?:;|$)").exec(document.cookie))
			return decodeURIComponent(result[1]); 
			return false;
		}
	}; //' $.cookie = function(key, value, options)
	$.cookie.defaults = {
		expires: 365,
		path: '/'
	} // '$.cookie.defaults

})(jQuery);
