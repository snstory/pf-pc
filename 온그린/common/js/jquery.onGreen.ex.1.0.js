// Document Ready List ...
$(function(){

	// ���� - Ŭ��! ������ ��õ����.
	$("#clickTodayCard").sinMove({
		autoPlay: true,
		autoPlayTime: 4000,
		xmlURL: "/xml/mainCard.xml"
	});

	// ��� �÷��� �޴����� ���� ����.
	$("#lnbSwfArea").onGreenSizeControl({
		maxH: 305,
		minH: 48
	});

	// ����-������ ������ ����.
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

	// �ӽø޴�
	$.tempOngreenMenu();

	// �Խ��� ������ ����.
	$("table.bbs03_tb").tbBorderHide();
	$("table.tk03_tb").tbBorderHide();

	// ������ > �̺�Ʈ
	$("li:eq(0)", "div.cnt04").css({ backgroundImage: "none" });

	// �±׸��� �Բ� �ϴ� �����.
	$.loadXMLPfile({
		va: $("#profileViewArea"),
		list: $("#profileList"),
		shield: $("#content"),
		url: "/xml/story_02.xml"
	});

	// ������ > �����ϴ�����
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

		// ���� ���õ� ��� ���غ���.
		var nowSelect=0;

		// ����Ʈ Ŭ���� �̺�Ʈ (xml ������ �ε�).
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

		// ������ �ε� �Լ� ����.
		function xmlDataLoad(dat){
			// ���� ����.
			standbyShield();
			var reno=Math.floor(dat.th.id.replace("no_",""));
			// ���缱�ø�� ��������.
			nowSelect=reno-1;
			//��� ���͸�.
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
					$(this).find("h1.name").text(datas.name+" ����");
					$(this).find(".profile li:eq(0) span").text(datas.birth);
					$(this).find(".profile li:eq(1) span").text(datas.entyear);
					$(this).find(".profile li:eq(2) span").text(datas.height);
					$(this).find(".profile li:eq(3) span").text(datas.parti_num);
					$(this).find(".profile li:eq(4) span").text(datas.vic_num);
					$(this).find(".profile li:eq(5) span").text(datas.rece_num);
					$(this).find(".profile li:eq(6) span").text(datas.prize);

					// �Ϸ��� �������
					standbyShield(1);
				},
				context: obj.va,
				error: function(xhr,status,errorThrown){
					//window.alert("xhr : "+xhr+"\nstatus: "+status+"\nerrorThrown: "+errorThrown+"\nobj.url: "+obj.url);
					window.alert("��Ʈ���� ������ �߻��Ͽ� ���α׷��� ���������� ������� ���Ͽ����ϴ�.\n������ ��� �Ǹ� �����ڿ��� ������ �ֽñ� �ٶ��ϴ�.");
					window.location.href="/";
				}
			});
		}

		// ����.
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

		// ��� ���͸�.
		function listFiltering(matchNo){
			// ����� ���� ���õ� ��� Ȱ��ȭ ���͸�.
			$.each(obj.list.find("li"), function(n){
				if(matchNo==n){
					$(this).addClass("start");
				}else{
					$(this).removeClass("start");
				}
			});
		}

		// �ʱ� ����.
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

		// ��ġ�� ����.
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
				listPosSet: { // ��Ͽ����� ���������� ������ �Ǿ�����,
					count: 0,
					done: false
				},
				viewLoadSet: false // �� ������ �̹����� �ε�Ǿ�����,
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

				// ��ġ������ ����.
				for(var i=0; i<dObj.maxCount; i++){
					dObj.posArr[i]={ left:i*obj.mount.x+obj.space, top:i*obj.mount.y+obj.space };
				}

				// ������ ����
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
						// ������� �� �̺�Ʈ ����.
						sortByArray();
						return false;
					},
					focus: function(){
						this.blur();
					}
				});

				// �ڵ������� �����Ǿ��ٸ�,
				if(obj.autoPlay){
					// �ڵ����� �ǽ�.
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
				//window.alert("��Ʈ���� ������ �߻��Ͽ� ���α׷��� ���������� ������� ���Ͽ����ϴ�.\n������ ��� �Ǹ� �����ڿ��� ������ �ֽñ� �ٶ��ϴ�.");
				//window.location.href="/";
			}
		});

		// ��� �ִϸ��̼�.
		function addAnimateSet(){
			//���� ����
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

					// ���� ���õ� �����̶�� �信 import.
					if(i==0){
						var viewContent=$.map(dObj.xhrArr, function(m,j){
							if(dObj.listIdFirstName+$(m).attr("id")==$(n).attr("id")){
								//alert(m.idNo+"=="+$(n).attr("id"));
								return m;
							}
						});

						$("#cardViewMain > p > img:eq(0)", _level) // ���� �ε�.
							.hide()
							.attr({ src: $("real", viewContent).text() })
							.fadeIn(obj.speed, function(){
								dObj.actDone.viewLoadSet=true;
								shieldDestory();
							})
							.bind({ click: function(){ window.location.href=$("url", viewContent).text(); } });
						$("#cardViewMain > dl > dt", _level).text($("name", viewContent).text());//�̸�
						$("#cardViewMain > dl > dd.career", _level).text("��� "+$("career", viewContent).text()+"��"); //���
						$("#cardViewMain > dl > dd.birth", _level).text($("birth", viewContent).text()+"���"); //����⵵
					}
				});
			});
		}

		// ������ �迭 ����.
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
			if(dObj.actDone.listPosSet.done&&dObj.actDone.viewLoadSet){//���� ����.
				dObj.actDone.listPosSet.count=0; // ī��Ʈ �ʱ�ȭ.
				dObj.actDone.listPosSet.done=false; // ī��Ʈ Ȯ�� �ʱ�ȭ.
				dObj.actDone.viewLoadSet=false; // �̹��� Ȯ�� �ʱ�ȭ.
				$.stageShield({ // ���� ����.
					type: "delete",
					stage: _level,
					shieldId: dObj.shieldRanId
				});

			}
		}

		return this;
	};

	// �����ϴ� ���� �����Լ�.
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

	// ���� ���� ����.
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

		//alert("�����������̵�: "+obj.stage.attr("id")+"\n������̵�:"+obj.shieldId);
		if(!(obj.stage.css("position").toLowerCase()=="absolute"||obj.stage.css("position").toLowerCase()=="relative")){
			obj.stage.css({ position: "relative" });
		}

		if(obj.type=="build"){
			// ���念������.
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
					//alert("�峭ġ�� �����ּ���.!!");
					return false;
				}
			})
			.appendTo(obj.stage)
			.attr({ id: obj.shieldId, alt: "������..." });

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

	// ��� �÷��� �޴� ���� div ���� ����.
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

	// �ӽø޴�.
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
		.html('<h1>�±׸� ����Ʈ �ӽø޴�</h1><ul><li><h3><a href="/main/main.asp">����</a></h3></li><li><h3>Ongreen Story</h3><ul><li><h4><a href="/story/story_01_01.asp">�±׸���</a></h4><ul><li><a href="/story/story_01_01.asp">��ǥ�λ縻</a></li><li><a href="/story/story_01_02.asp">�±׸��Ұ�</a></li></ul></li><li><a href="/story/story_02.asp">�±׸��� �Բ� �ϴ� �����</a></li><li><a href="/story/story_03.asp">CONTACT</a></li></ul></li><li><h3>open hole</h3><ul><li><a href="/open/open_01_list.asp">�αⰭ�� 18Ȧ</a></li></ul></li><li><h3>teacher hole</h3><ul><li><a href="/teacher/teacher_01.asp">���ε��� ��</a></li><li><a href="/teacher/teacher_02.asp">��Ŭ��</a></li><li><a href="/teacher/teacher_03.asp">�Ƹ��߾� �����</a></li><li><a href="/teacher/teacher_04_list.asp">�����Խ���</a></li><li><a href="/teacher/teacher_05.asp">���η�������</a></li></ul></li><li><h3>tealk hole</h3><ul><li><h4><a href="/talk/talk_01_01_list.asp">UCC����</a></h4><ul><li><a href="/talk/talk_01_01_list.asp">UCC����</a></li><li><a href="/talk/talk_01_02_list.asp">����ַ���</a></li></ul></li><li><h4><a href="/talk/talk_02_01.asp">���Ա�ȯ�ϱ�</a></h4><ul><li><a href="/talk/talk_02_01.asp">��ü���Ժ���</a></li><li><a href="/talk/talk_02_02.asp">���Ե��&amp;����</a></li><li><a href="/talk/talk_02_03.asp">���Ա�ȯ�ں���</a></li><li><a href="/talk/talk_02_04.asp">���Ǹ��Ժ���</a></li></ul></li><li><a href="/talk/talk_03_list.asp">�Բ��� ģ�� ã��</a></li><li><a href="http://cafe.naver.com/" target="_blank">�Ø� ������ ����</a></li></ul></li><li><h3>service hole</h3><ul><li><a href="/service/service_01_list.asp">service Ȧ</a></li></ul></li><li><h3>������</h3><ul><li><a href="/center/center_01_list.asp">��������</a></li><li><a href="/center/center_02_list.asp">�����ϴ�����</a></li><li><a href="/center/center_03_list.asp">���ޱ�����</a></li><li><a href="/center/center_04.asp">����������</a></li><li><h4><a href="/center/center_05_01.asp">�̺�Ʈ</a></h4><ul><li><a href="/center/center_05_01.asp">���������̺�Ʈ</a></li><li><a href="/center/center_05_02.asp">�����̺�Ʈ</a></li></ul></li></ul></li><li><h3>ȸ����������</h3><ul><li><a href="/member/login.asp">�α���</a></li><li><a href="/member/join_01.asp">ȸ������</a></li><li><a href="/member/member_01.asp">id&amp;��й�ȣ ã��</a></li><li><a href="/member/member_02.asp">ȸ������ ����</a></li><li><a href="/member/member_03.asp">ȸ��Ż�� ��û</a></li><li><a href="/member/member_04.asp">��ȸ����û�ϱ�</a></li></ul></li><li><h3>�̿�ȳ�</h3><ul><li><a href="/guid/guid_01.asp">�������� ��޹�ħ</a></li><li><a href="/guid/guid_02.asp">�̸��� ���� ���� �����ź�</a></li><li><a href="/guid/sitemap.asp">����Ʈ��</a></li></ul></li><li><h3>���ø� ã�ƺ���</h3><ul><li><a href="/__templete/list_01.asp">��� Ÿ�� 1</a></li><li><a href="/__templete/list_02.asp">��� Ÿ�� 2</a></li><li><a href="/__templete/list_03.asp">��� Ÿ�� 3 (������ Ÿ��)</a></li><li><a href="/__templete/list_01_view.asp">�󼼺��� Ÿ�� 1</a></li><li><a href="/__templete/list_02_view.asp">�󼼺��� Ÿ�� 2</a></li><li><a href="/__templete/list_03_view.asp">�󼼺��� Ÿ�� 3 (������ �� Ÿ��)</a></li><li><a href="/__templete/list_01_write.asp">�۾��� Ÿ�� 1</a></li><li><a href="/__templete/list_02_write.asp">�۾��� Ÿ�� 2</a></li><li><a href="/__templete/list_03_write.asp">�۾��� Ÿ�� 2 (������ ���� Ÿ��)</a></li></ul></li></ul>')
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
