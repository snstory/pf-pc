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

// 시작: window.onload 시 실행될 함수 목록
//onLoadAdd(moveQuick); // 퀵메뉴 실행.
// 종료: window.onload 시 실행될 함수 목록

// 시작: 퀵메뉴
function moveQuick(){ initMoving("quickmenu", 113, 0, 150);}
function initMoving(b,c,d,e){if(!document.getElementById(b))return false;var a=document.getElementById(b);a.initTop=c;a.topLimit=d;a.bottomLimit=document.documentElement.scrollHeight-e;a.style.position="absolute";a.top=a.initTop;a.left=a.initLeft;if(typeof(window.pageYOffset)=="number"){a.getTop=function(){return window.pageYOffset}}else if(typeof(document.documentElement.scrollTop)=="number"){a.getTop=function(){return document.documentElement.scrollTop}}else{a.getTop=function(){return 0}}if(self.innerHeight){a.getHeight=function(){return self.innerHeight}}else if(document.documentElement.clientHeight){a.getHeight=function(){return document.documentElement.clientHeight}}else{a.getHeight=function(){return 500}}a.move=setInterval(function(){if(a.initTop>0){pos=a.getTop()+a.initTop}else{pos=a.getTop()+a.getHeight()+a.initTop}if(pos>a.bottomLimit)pos=a.bottomLimit;if(pos<a.topLimit)pos=a.topLimit;interval=a.top-pos;a.top=a.top-interval/3;a.style.top=a.top+"px"},30)}
// 종료: 퀵메뉴

// 임시 팝업함수
function popupAbsMiddle(o){
	var _screenW = window.screen.width;
	var _screenH = window.screen.height;
	var setLeft = (_screenW / 2) - (o.width / 2);
	var setTop = (_screenH / 2) - (o.height / 2);
	window.open(o.url, "new", "scrollbars=no, toolbar=no, menubar=no, resizable=no, status=no, location=no, left=" + setLeft + ", top=" + setTop + ", width=" + o.width + ", height=" + o.height);
}
