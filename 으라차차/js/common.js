/* ========================= 시작 : Jquery document.ready List ========================= */
$(function() {
	// 좌측메뉴 이벤트.
	$("div.sb_menulist li").jcfmAddRollOverEvt({
		gno: $("div.sb_menulist").attr("sbno"),
		len: $("div.sb_menulist li").not(".btm").size()
	});

	// 메인 탭메뉴 [ 선생님 커뮤니티, 농어촌지식 Q&A ]
	$("div.ct_03_wrap").jcfmAddTabMenuControl({
		slideSpeed: 100
	});

	// 게시판 첫 td 배경지우기.
	$(".bbsStyle").jcfmBbsEraseLine();

	// 어린이 놀이방 플래시 컨텐츠 영역 제어.
	$(".bb01_swf_in").jcfmLayoutControl();

	// 나의음식일기, 마이페이지 인쇄버튼 제어.
	$("a.pageZonePrint").jcfmPageZonePrint({
		url: "../pagePrintZone/printPage.html"
	});

	// 식생활학습자료 > 식습관체크하기 이벤트 제어.
	$("#eatingHabitsCheck").jcfmEHabitsControl({
		quLayer: $("#eatingHabitsQLayer"), // 문제용 레이어.
		reLayer: $("#eatingHabitsReaultLayer"), // 결과보기 레이어.
		nextBtn: $("#nextQuestion"), // 다음질문으로 넘어가기 버튼.
		resetBtn: $("#resetQuestion"),
		resultBtnSrc: "../images/common/btns/result.gif"
	});
});
/* ========================= 종료 : Jquery document.ready List ========================= */

function onLoadAdd(func) {
	var old_onload = window.onload;
	if (typeof window.onload != "function") {
		window.onload = func;
	} else {
		window.onload = function() {
			old_onload();
			func();
		}
	}
}

onLoadAdd(moveQuick);

// 퀵메뉴 로드용
function moveQuick(){
	initMoving("quickmenuElement", 130, 0, 150);
}

// 퀵메뉴 관련 함수
function initMoving(target, position, topLimit, btmLimit) {
	if (! document.getElementById(target)) return false;

	var obj = document.getElementById(target);
	obj.initTop = position;
	obj.topLimit = topLimit;
	obj.bottomLimit = document.documentElement.scrollHeight - btmLimit;

	obj.style.position = "absolute";
	obj.top = obj.initTop;
	obj.left = obj.initLeft;

	if (typeof(window.pageYOffset) == "number") {
		obj.getTop = function() {
			return window.pageYOffset;
		}
	} else if (typeof(document.documentElement.scrollTop) == "number") {
		obj.getTop = function() {
			return document.documentElement.scrollTop;
		}
	} else {
		obj.getTop = function() {
			return 0;
		}
	}

	if (self.innerHeight) {
		obj.getHeight = function() {
			return self.innerHeight;
		}
	} else if(document.documentElement.clientHeight) {
		obj.getHeight = function() {
			return document.documentElement.clientHeight;
		}
	} else {
		obj.getHeight = function() {
			return 500;
		}
	}

	obj.move = setInterval(function() {
		if (obj.initTop > 0) {
			pos = obj.getTop() + obj.initTop;
		} else {
			pos = obj.getTop() + obj.getHeight() + obj.initTop;
		}

		if (pos > obj.bottomLimit)
			pos = obj.bottomLimit;
		if (pos < obj.topLimit)
			pos = obj.topLimit;

		interval = obj.top - pos;
		obj.top = obj.top - interval / 3;
		obj.style.top = obj.top + "px";
	}, 30)
}

// 이북열기
function ebook(url) {
	var w = window.open(url, 'CRIC', 'width=1280,height=900,top=0,left=0,scrollbars=no');
	w.focus();
}

function openPopup(url) {
	var w = window.open(url, '_blank', 'scrollbars=yes,width=1000,height=700');
	w.focus();
}

function openAndPrintPage(obj) {
	var w = window.open(obj.url, 'newWindow', 'scrollbars=yes,width='+obj.width+',height='+obj.height);
	w.print();
}

function openContentOut(obj) {
	var w = window.open(obj.url, '_blank', 'scrollbars=yes,width='+obj.width+',height='+obj.height);
}

function cartoon(url) {
	var w = window.open(url, '_blank', 'width=430, height=330');
	w.focus();
}

function cartoon2(url) {
	var w = window.open(url, '_blank', 'width=1024, height=768, fullscreen=yes');
	w.focus();
}

function popupAbsMiddle(o){
	var _screenW = window.screen.width;
	var _screenH = window.screen.height;
	var setLeft = (_screenW / 2) - (o.width / 2);
	var setTop = (_screenH / 2) - (o.height / 2);
	window.open(o.url, "new", "scrollbars=no, toolbar=no, menubar=no, resizable=no, status=no, location=no, left=" + setLeft + ", top=" + setTop + ", width=" + o.width + ", height=" + o.height);
}
