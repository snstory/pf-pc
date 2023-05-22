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

