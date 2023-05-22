$( document ).ready( function() {

	// jquery.validate.js 경고 출력방식 변경.
	$.validator.setDefaults( {
		onkeyup:false,
		onclick:false,
		onfocusout:false,
		showErrors:function( errorMap, errorList ){
			if( errorList.length ){
				alert( errorList[0].message );
				return;
			}
		}
	} );

	// 검색 폼
	$( "#searchForm" ).validate( {
		debug: true,
		rules: {
			word: { required: true }
		},
		messages: {
			word: { required: "검색어를 입력해 주세요." }
		},
		submitHandler: function( form ){

			form.submit();
			return false;

		}
	} );

	// 댓글남기기 폼
	$( "#reply_add_form" ).validate( {
		debug: true,
		rules: {
			reply_text: { required: true }
		},
		messages: {
			reply_text: { required: "댓글을 입력해 주세요." }
		},
		submitHandler: function( form ){

			form.submit();
			return false;

		}
	} );

	// 연구실적논문 > 편집위원회 > 논문투고실 ( 글쓰기 양식 )
	$( "#diss_form_id" ).validate( {
		debug: true,
		rules: {
			"name": { required: true },
			"tel_1": { required: true },
			"tel_2": {
				required: true,
				number: true,
				rangelength: [3, 4]
			},
			"tel_3": {
				required: true,
				number: true,
				rangelength: [4, 4]
			},
			"aff": { required: true },
			"diss": { required: true },
			"diss_intro": { required: true }
		},
		messages: {
			"name": { required: "이름을 입력해 주세요" },
			"tel_1": { required: "연락처를 선택해 주세요" },
			"tel_2": {
				required: "연락처를 입력해 주세요",
				number: "숫자만 입력할 수 있습니다",
				rangelength: $.validator.format("{0}자이상 {1}자 이하로 입력해 주세요")
			},
			"tel_3": {
				required: "연락처를 입력해 주세요",
				number: "숫자만 입력할 수 있습니다",
				rangelength: $.validator.format("{1}자리 수로 입력해 주세요")
			},
			"aff": { required: "소속을 입력해 주세요" },
			"diss": { required: "논문제목을 입력해 주세요" },
			"diss_intro": { required: "논문소개를 입력해 주세요" }
		},
		submitHandler: function( form ){

			form.submit();
			return false;

		}
	} );

} );