// Document Ready List ...
$(function(){

	// 메인 - 클릭! 오늘의 추천명함.
	$("#clickTodayCard").sinMove({
		autoPlay: true,
		autoPlayTime: 4000,
		xmlURL: "/xml/mainCard.xml"
	});

	// 상단 플래시 메뉴영역 높이 제어.
	$("#lnbSwfArea").onGreenSizeControl({
		maxH: 305,
		minH: 48
	});

	// 메인-영역별 불투명도 설정.
	$.opacitySet({
		setOpacity: [
			{id: "maBg_01", opac: "0.4"},
			{id: "maBg_02", opac: "0.3"},
			{id: "maBg_03", opac: "0.4"},
			{id: "maBg_05", opac: "0.1"},
			{id: "maBg_06", opac: "0.5"},
			{id: "maBg_07", opac: "0.4"},
			{id: "maBg_08", opac: "0.1"},
			{id: "footerBg", opac: "0.7"}
		]
	});

	// 임시메뉴
	$.tempOngreenMenu();

	// 게시판 보더값 제거.
	$("table.bbs03_tb").tbBorderHide();
	$("table.tk03_tb").tbBorderHide();

	// 고객센터 > 이벤트
	$("li:eq(0)", "div.cnt04").css({ backgroundImage: "none" });

	// 온그린과 함께 하는 사람들.
	$.loadXMLPfile({
		va: $("#profileViewArea"),
		list: $("#profileList"),
		shield: $("#content"),
		url: "/xml/story_02.xml"
	});

	// 고객센터 > 자주하는질문
	$("#frequentlyQuestion").onGreenCenter02();
});

// Plugin List ...
(function($){
	$.opacitySet=function(_obj){
		var obj=$.extend({
			setOpacity: []
		},_obj||{});

		if(!obj.setOpacity.length){ return false; }

		$.each(obj.setOpacity, function(n){
			$("#"+this.id).css({
				opacity: this.opac
			});
		});
	};

	$.loadXMLPfile=function(obj){
		var obj=$.extend({
			va: $("#profileViewArea"),
			list: $("#profileList"),
			shield: $("#content"),
			url: "/xml/story_02.xml",
			showSpeed: 500
		},obj||{});

		if(!document.getElementById(obj.va.attr("id"))&&!document.getElementById(obj.list.attr("id"))){ return false; }

		// 현재 선택된 목록 기준변수.
		var nowSelect=0;

		// 리스트 클릭시 이벤트 (xml 데이터 로드).
		$.each(obj.list.find("li"), function(n){
			this.no=n;

			$(this).bind({
				mouseover: function(){
					$(this).addClass("start");
				},
				mouseout: function(){
					listFiltering(nowSelect);
				},
				click: function(){
					xmlDataLoad({th:this});
					return false;
				}
			}).css({ cursor: "pointer" });
		});

		// 데이터 로드 함수 정리.
		function xmlDataLoad(dat){
			// 쉴드 실행.
			standbyShield();
			var reno=Math.floor(dat.th.id.replace("no_",""));
			// 현재선택목록 변수지정.
			nowSelect=reno-1;
			//목록 필터링.
			listFiltering(nowSelect);

			$.ajax({
				url: obj.url,
				type: "get",
				dataType: "xml",
				success: function(xhr){
					var datas={};

					$.each($(xhr).find("section"), function(n){
						var thisno=parseInt($(this).attr("id"));

						if(thisno==reno){
							datas={
								picURL: $(this).find("picURL").text(),
								fanURL: $(this).find("fanURL").text(),
								name: $(this).find("name").text(),
								birth: $(this).find("birth").text(),
								entyear: $(this).find("entyear").text(),
								height: $(this).find("height").text(),
								parti_num: $(this).find("parti_num").text(),
								vic_num: $(this).find("vic_num").text(),
								rece_num: $(this).find("rece_num").text(),
								prize: $(this).find("prize").text()
							};
						}
					});

					$(this).find(".pic img:eq(0)").attr({ src: datas.picURL }).stop().css({opacity: "0.4"}).animate({opacity: "1.0"},obj.showSpeed);
					$(this).find("a.playMoreLink").attr({ href: datas.fanURL });
					$(this).find("h1.name").text(datas.name+" 프로");
					$(this).find(".profile li:eq(0) span").text(datas.birth);
					$(this).find(".profile li:eq(1) span").text(datas.entyear);
					$(this).find(".profile li:eq(2) span").text(datas.height);
					$(this).find(".profile li:eq(3) span").text(datas.parti_num);
					$(this).find(".profile li:eq(4) span").text(datas.vic_num);
					$(this).find(".profile li:eq(5) span").text(datas.rece_num);
					$(this).find(".profile li:eq(6) span").text(datas.prize);

					// 완료후 쉴드삭제
					standbyShield(1);
				},
				context: obj.va,
				error: function(xhr,status,errorThrown){
					//window.alert("xhr : "+xhr+"\nstatus: "+status+"\nerrorThrown: "+errorThrown+"\nobj.url: "+obj.url);
					window.alert("네트웍상에 문제가 발생하여 프로그램이 정상적으로 실행되지 못하였습니다.\n문제가 계속 되면 관리자에게 문의해 주시기 바랍니다.");
					window.location.href="/";
				}
			});
		}

		// 쉴드.
		function standbyShield(destory){
			if(destory){
				$("#content_shield").remove();
				$("#content_shield_img").remove();
			}else{
				$("<div />", {
					css: {
						position: "absolute",
						left: "0px",
						top: "0px",
						zIndex: "10000",
						width: "100%",
						height: obj.shield.innerHeight(),
						opacity: "0.1",
						backgroundColor: "#fff",
						textAlign: "center"
					},
					click: function(){
						return false;
					}
				})
				.attr({ id: "content_shield" })
				.appendTo(obj.shield);

				$("<img />", {
					css: {
						position: "absolute",
						left: "115px", //parseInt(obj.shield.innerWidth()/2)+"px",
						top: "210px"
					}
				})
				.attr({ src: "/images/common/icons/transp_load_48.gif", id: "content_shield_img" })
				.appendTo("#content");
			}
		}

		// 목록 필터링.
		function listFiltering(matchNo){
			// 목록중 현재 선택된 목록 활성화 필터링.
			$.each(obj.list.find("li"), function(n){
				if(matchNo==n){
					$(this).addClass("start");
				}else{
					$(this).removeClass("start");
				}
			});
		}

		// 초기 실행.
		xmlDataLoad({th:obj.list.find("li")[0]});
	};

	$.fn.tbBorderHide=function(){
		$("tr", this).each(function(n){
			$(":first", this).css({ borderLeft: "0px" });
			if($(this).parent().attr("nodeName").toLowerCase()=="tbody" && n==1){
				$("td", this).css({ borderTop: "0px" });
			}
		});
		return this;
	};

	$.fn.sinMove=function(obj){
		if(!document.getElementById(this.attr("id"))){ return false; }
		var obj=$.extend({
			autoPlay: false,
			autoPlayTime: 3000,
			xmlURL: null,
			showMax: 3,
			mount: { x: 10, y: 13 },
			speed: 500,
			space: 10
		},obj||{});
		if(!obj.xmlURL){ return this; }

		var _level=this;

		// 위치값 설정.
		var dObj={
			posArr: [],
			xhrArr: [],
			pArr: [],
			maxCount: 0,
			nowView: 0,
			opacStart: 7,
			shieldRanId: _level.attr("id")+"_"+parseInt(Math.random()*10000000),
			listIdFirstName: "clist_",
			actDone: {
				listPosSet: { // 목록영역에 순서정리가 마무리 되었는지,
					count: 0,
					done: false
				},
				viewLoadSet: false // 뷰 영역에 이미지가 로드되었는지,
			},
			autoPlayId: null
		};

		$.ajax({
			url: obj.xmlURL,
			type: "get",
			dataType: "xml",
			success: function(xhr){
				dObj.maxCount=$(xhr).find("pics").size();
				var xhrPics=$(xhr).find("pics");
				dObj.xhrArr=$.makeArray(xhrPics);

				// 위치정보값 지정.
				for(var i=0; i<dObj.maxCount; i++){
					dObj.posArr[i]={ left:i*obj.mount.x+obj.space, top:i*obj.mount.y+obj.space };
				}

				// 데이터 정렬
				var htmlStr="";
				var displaynone="";
				$.map(dObj.xhrArr, function(n, i){
					if(i>=obj.showMax){
						displaynone="display:none;"
					}

					htmlStr+="<p id="+dObj.listIdFirstName+$(n).attr("id")+" style=\""+displaynone+"left:"+dObj.posArr[i].left+"px;top:"+dObj.posArr[i].top+"px;z-index:"+(dObj.maxCount-i)+"\"><img src="+$(n).find("thumnail").text()+" width=\"36\" height=\"30\" alt=\"d\" /></p>";
				});
				$(this).find(".standby").html(htmlStr);

				dObj.pArr=$.makeArray($(this).find(".standby p"));
				addAnimateSet();

				$("a.proll", this).bind({
					click: function(){
						// 목록정렬 및 이벤트 실행.
						sortByArray();
						return false;
					},
					focus: function(){
						this.blur();
					}
				});

				// 자동실행이 설정되었다면,
				if(obj.autoPlay){
					// 자동실행 실시.
					dObj.autoPlayId=setInterval(sortByArray, obj.autoPlayTime);
					$(this).bind({
						mouseenter: function(){
							if(dObj.autoPlayId){
								clearInterval(dObj.autoPlayId);
							}
						},
						mouseleave: function(){
							dObj.autoPlayId=setInterval(sortByArray, obj.autoPlayTime);
						}
					});
				}
			},
			context: this,
			error: function(xhr,status,errorThrown){
				window.alert("xhr : "+xhr+"\nstatus: "+status+"\nerrorThrown: "+errorThrown+"\nobj.url: "+obj.url);
				//window.alert("네트웍상에 문제가 발생하여 프로그램이 정상적으로 실행되지 못하였습니다.\n문제가 계속 되면 관리자에게 문의해 주시기 바랍니다.");
				//window.location.href="/";
			}
		});

		// 목록 애니메이션.
		function addAnimateSet(){
			//쉴드 생성
			$.stageShield({
				type: "build", // build or delete
				stage: _level,
				shieldId: dObj.shieldRanId,
				opacLevel: "0.1",
				opacColor: "#48692b"
			});

			$.map(dObj.pArr, function(n,i){
				$(n)
				.css({ display: (i<obj.showMax)? "block" : "none", backgroundColor: "#fff" })
				.animate({
					left: dObj.posArr[i].left+"px",
					top: dObj.posArr[i].top+"px",
					opacity: (i==0)? "1.0" : parseFloat((dObj.opacStart-i)/10)
				}, obj.speed, function(){
					$(this).css({ backgroundColor: (i==0)? "yellow" : "#fff" });
					dObj.actDone.listPosSet.count++;
					if(dObj.actDone.listPosSet.count>=dObj.maxCount){
						dObj.actDone.listPosSet.count=0;
						dObj.actDone.listPosSet.done=true;
						shieldDestory();
					}

					// 현재 선택된 명함이라면 뷰에 import.
					if(i==0){
						var viewContent=$.map(dObj.xhrArr, function(m,j){
							if(dObj.listIdFirstName+$(m).attr("id")==$(n).attr("id")){
								//alert(m.idNo+"=="+$(n).attr("id"));
								return m;
							}
						});

						$("#cardViewMain > p > img:eq(0)", _level) // 사진 로드.
							.hide()
							.attr({ src: $("real", viewContent).text() })
							.fadeIn(obj.speed, function(){
								dObj.actDone.viewLoadSet=true;
								shieldDestory();
							})
							.bind({ click: function(){ window.location.href=$("url", viewContent).text(); } });
						$("#cardViewMain > dl > dt", _level).text($("name", viewContent).text());//이름
						$("#cardViewMain > dl > dd.career", _level).text("경력 "+$("career", viewContent).text()+"년"); //경력
						$("#cardViewMain > dl > dd.birth", _level).text($("birth", viewContent).text()+"년생"); //출생년도
					}
				});
			});
		}

		// 데이터 배열 정렬.
		function sortByArray(){
			var shr=dObj.pArr.shift();
			$(shr).css({
				left: parseInt($(dObj.pArr[dObj.pArr.length-1]).css("left"))+obj.mount.x+"px",
				top: parseInt($(dObj.pArr[dObj.pArr.length-1]).css("top"))+obj.mount.y+"px",
				zIndex: $(dObj.pArr[dObj.pArr.length-1]).css("zIndex")-1,
				opacity: "0"
			});
			dObj.pArr.push(shr);
			addAnimateSet();
		}

		function shieldDestory(){
			if(dObj.actDone.listPosSet.done&&dObj.actDone.viewLoadSet){//쉴드 해제.
				dObj.actDone.listPosSet.count=0; // 카운트 초기화.
				dObj.actDone.listPosSet.done=false; // 카운트 확인 초기화.
				dObj.actDone.viewLoadSet=false; // 이미지 확인 초기화.
				$.stageShield({ // 쉴드 해제.
					type: "delete",
					stage: _level,
					shieldId: dObj.shieldRanId
				});

			}
		}

		return this;
	};

	// 자주하는 질문 제어함수.
	$.fn.onGreenCenter02=function(){
		if(!document.getElementById(this.attr("id"))){ return false; }

		$("dt", this).next().hide();
		var dts=$("dt", this);
		var onoffspeed=300;
		var dtArray=$.makeArray(dts);
		var choice=-1;
		$.map(dtArray, function(n,i){
			$("a", n).bind({
				click: function(){
					if(choice==i){
						choice=-1;
					}else{
						choice=i;
					}
					listArraySet();
					return false;
				},
				focus: function(){
					this.blur();
				}
			});
		});

		function listArraySet(){
			$.map(dtArray, function(n,i){
				if(choice==i){
					$("a", n).css({
						fontWeight: "bold",
						letterSpacing: "-0.1em"
					});
					$(n).css({
						backgroundImage: "url(/images/common/icons/arrow_open.gif)"
					}).next("dd").slideDown(onoffspeed);
				}else{
					$("a", n).css({
						fontWeight: "normal",
						letterSpacing: "0em"
					});
					$(n).css({
						backgroundImage: "url(/images/common/icons/arrow_close.gif)"
					}).next("dd").slideUp(onoffspeed);
				}
			});
		}
	}

	// 영역 쉴드 설정.
	$.stageShield=function(obj){
		var obj=$.extend({
			type: "build", // build or delete
			stage: null,
			shieldId: null,
			opacLevel: "0.5",
			opacColor: "white",
			animate: false,
			speed: 500
		},obj||{});

		if(!obj.stage||!obj.shieldId){
			//alert("obj.stage: "+obj.stage+"\nobj.shieldId"+obj.shieldId);
			return false;
		}

		//alert("스테이지아이디: "+obj.stage.attr("id")+"\n쉴드아이디:"+obj.shieldId);
		if(!(obj.stage.css("position").toLowerCase()=="absolute"||obj.stage.css("position").toLowerCase()=="relative")){
			obj.stage.css({ position: "relative" });
		}

		if(obj.type=="build"){
			// 쉴드영역설정.
			$("<div />", {
				css: {
					opacity: (obj.animate)? "0" : obj.opacLevel,
					position: "absolute",
					left: "0px",
					top: "0px",
					zIndex: "10000",
					width: obj.stage.innerWidth()+"px",
					height: obj.stage.innerHeight()+"px",
					backgroundColor: obj.opacColor
				},
				click: function(){
					//alert("장난치지 말아주세요.!!");
					return false;
				}
			})
			.appendTo(obj.stage)
			.attr({ id: obj.shieldId, alt: "정렬중..." });

			//obj.shieldId
			if(obj.animate){
				obj.stage.animate({
					opacity: obj.opacLevel
				}, obj.speed);
			}
		}else{
			if(document.getElementById(obj.shieldId)){
				$("#"+obj.shieldId).remove();
			}
		}
	}

	// 상단 플래시 메뉴 영역 div 높이 조절.
	$.fn.onGreenSizeControl=function(obj){
		if(!document.getElementById(this.attr("id"))){ return false; }

		var obj=$.extend({
			maxH: null,
			minH: null
		},obj||{});

		if(!obj.maxH||!obj.minH){ return false; }
		
		$(this).bind({
			mouseenter: function(){
				$(this).css({ height: obj.maxH+"px" });
			},
			mouseleave: function(){
				$(this).css({ height: obj.minH+"px" });
			}
		});

		return this;
	}

	// 임시메뉴.
	$.tempOngreenMenu=function(){
		$("<div />", {
			css: {
				border: "2px solid gray",
				padding: "5px",
				position: "absolute",
				left: "10px",
				top: "40px",
				zIndex: "1000000",
				backgroundColor: "#fff"
			},
			mouseleave: function(){
				$("h1", this).next().hide();
			}
		})
		.html('<h1>온그린 사이트 임시메뉴</h1><ul><li><h3><a href="/main/main.asp">메인</a></h3></li><li><h3>Ongreen Story</h3><ul><li><h4><a href="/story/story_01_01.asp">온그린은</a></h4><ul><li><a href="/story/story_01_01.asp">대표인사말</a></li><li><a href="/story/story_01_02.asp">온그린소개</a></li></ul></li><li><a href="/story/story_02.asp">온그린과 함께 하는 사람들</a></li><li><a href="/story/story_03.asp">CONTACT</a></li></ul></li><li><h3>open hole</h3><ul><li><a href="/open/open_01_list.asp">인기강좌 18홀</a></li></ul></li><li><h3>teacher hole</h3><ul><li><a href="/teacher/teacher_01.asp">프로들의 방</a></li><li><a href="/teacher/teacher_02.asp">팬클럽</a></li><li><a href="/teacher/teacher_03.asp">아마추어 고수방</a></li><li><a href="/teacher/teacher_04_list.asp">자유게시판</a></li><li><a href="/teacher/teacher_05.asp">개인레슨문의</a></li></ul></li><li><h3>tealk hole</h3><ul><li><h4><a href="/talk/talk_01_01_list.asp">UCC마당</a></h4><ul><li><a href="/talk/talk_01_01_list.asp">UCC영상</a></li><li><a href="/talk/talk_01_02_list.asp">포토겔러리</a></li></ul></li><li><h4><a href="/talk/talk_02_01.asp">명함교환하기</a></h4><ul><li><a href="/talk/talk_02_01.asp">전체명함보기</a></li><li><a href="/talk/talk_02_02.asp">명함등록&amp;수정</a></li><li><a href="/talk/talk_02_03.asp">명함교환자보기</a></li><li><a href="/talk/talk_02_04.asp">나의명함보기</a></li></ul></li><li><a href="/talk/talk_03_list.asp">함께할 친구 찾기</a></li><li><a href="http://cafe.naver.com/" target="_blank">시샾 개념의 까페</a></li></ul></li><li><h3>service hole</h3><ul><li><a href="/service/service_01_list.asp">service 홀</a></li></ul></li><li><h3>고객센터</h3><ul><li><a href="/center/center_01_list.asp">공지사항</a></li><li><a href="/center/center_02_list.asp">자주하는질문</a></li><li><a href="/center/center_03_list.asp">제휴광고문의</a></li><li><a href="/center/center_04.asp">마이페이지</a></li><li><h4><a href="/center/center_05_01.asp">이벤트</a></h4><ul><li><a href="/center/center_05_01.asp">진행중인이벤트</a></li><li><a href="/center/center_05_02.asp">지난이벤트</a></li></ul></li></ul></li><li><h3>회원정보관리</h3><ul><li><a href="/member/login.asp">로그인</a></li><li><a href="/member/join_01.asp">회원가입</a></li><li><a href="/member/member_01.asp">id&amp;비밀번호 찾기</a></li><li><a href="/member/member_02.asp">회원정보 수정</a></li><li><a href="/member/member_03.asp">회원탈퇴 신청</a></li><li><a href="/member/member_04.asp">정회원신청하기</a></li></ul></li><li><h3>이용안내</h3><ul><li><a href="/guid/guid_01.asp">개인정보 취급방침</a></li><li><a href="/guid/guid_02.asp">이메일 무단 복제 수집거부</a></li><li><a href="/guid/sitemap.asp">사이트맵</a></li></ul></li><li><h3>탬플릿 찾아보기</h3><ul><li><a href="/__templete/list_01.asp">목록 타입 1</a></li><li><a href="/__templete/list_02.asp">목록 타입 2</a></li><li><a href="/__templete/list_03.asp">목록 타입 3 (갤러리 타입)</a></li><li><a href="/__templete/list_01_view.asp">상세보기 타입 1</a></li><li><a href="/__templete/list_02_view.asp">상세보기 타입 2</a></li><li><a href="/__templete/list_03_view.asp">상세보기 타입 3 (갤러리 뷰 타입)</a></li><li><a href="/__templete/list_01_write.asp">글쓰기 타입 1</a></li><li><a href="/__templete/list_02_write.asp">글쓰기 타입 2</a></li><li><a href="/__templete/list_03_write.asp">글쓰기 타입 2 (갤러리 쓰기 타입)</a></li></ul></li></ul>')
		.appendTo("body")
		.find("li").css({ padding: "3px 0 3px 10px" })
		.end().find("ul:first > li").css({ border: "1px solid black", width: "200px", float: "left" })
		.end().find("li > h3").css({ backgroundColor: "gray", color: "yellow", marginTop: "10px", padding: "5px" })
		.end().find("li > h3 > a").css({ color: "yellow" })
		.end().find("h1").css({ width: "200px", backgroundColor: "gray", fontSize: "14px", color: "yellow", textAlign: "center", padding: "10px 0", cursor: "pointer" }).bind({
			click: function(){
				$(this).next().toggle();
			}
		})
		.end().find("h1").next().hide();
	};
})(jQuery);
