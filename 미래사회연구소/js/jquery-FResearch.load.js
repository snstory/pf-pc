/***************************************************************************************************
*** easing style list
*
* swing, [ easeInQuad, easeOutQuad, easeInOutQuad ] [ easeInCubic, easeOutCubic, easeInOutCubic ]  
* [ easeInQuart, easeOutQuart, easeInOutQuart ] [ easeInQuint, easeOutQuint, easeInOutQuint ]      
* [ easeInSine, easeOutSine, easeInOutSine ] [ easeInExpo, easeOutExpo, easeInOutExpo ]            
* [ easeInCirc, easeOutCirc, easeInOutCirc ] [ easeInElastic, easeOutElastic, easeInOutElastic ]   
* [ easeInBack, easeOutBack, easeInOutBack ] [ easeInBounce, easeOutBounce, easeInOutBounce]       
****************************************************************************************************/

$( document ).ready( function() {

	// 공통: lnb 메뉴 이벤트
	$( ".lnb_list" ).fRes_snbEvent( {
		animated: true, // 버튼에 애니메이션을 적용할 경우. true: 적용, false: 비적용
		dura: 800, // 애니메이션 속도
		easi: "easeInOutSine", // 애니메이션 스타일
		onClass: "on", // 메뉴 li 에 적용될 스타일
		sttClass: "now_on", // 현재 활성화 된 메뉴에 추가할 class 명
		hover_node: "li",
		regexp: /\/\w+\//gi,
		absNoBdr: "absNoBdr"
	} );

	// 공통: snb 메뉴 이벤트
	$( ".snb_list" ).fRes_snbEvent( {
		animated: true, // 버튼에 애니메이션을 적용할 경우. true: 적용, false: 비적용
		dura: 400, // 애니메이션 속도
		easi: "easeInOutSine", // 애니메이션 스타일
		onClass: "on", // 메뉴 li 에 적용될 스타일
		sttClass: "now_on", // 현재 활성화 된 메뉴에 추가할 class 명
		hover_node: "li"
	} );

	// 메인 - 공지사항, 연구활동 탭
	$( "#mn_sect_01_id" ).fRes_mainTabMenu( {
		useId: true,
		eventType: "fadeIn",
		group: {
			box: "div",
			tab: "h1 > a",
			listGrp: "ul",
			list: "li",
			more: "a.more",
			eas: {
				list: "easeInSine",
				tab: "easeInSine"
			},
			dura: {
				list: 400,
				tab: 500
			}
		}
	} );

// ==================================================== Form Action ====================================================
	// jquery.validate.js 경고 출력방식 변경.
	$.validator.setDefaults( {
		onkeyup:false,
		onclick:false,
		onfocusout:false,
		showErrors:function( errorMap, errorList ){
			if( errorList.length ){
				alert( errorList[0].message );
			}
		}
	} );

	// 검색 폼
	$( "#searchForm" ).validate( {
		rules: {
			word: { required: true }
		},
		messages: {
			word: { required: "검색어를 입력해 주세요." }
		},
		submitHandler: function( form ){

			form.submit();
			return;

		}
	} );

	// 댓글남기기 폼
	$( "#reply_add_form" ).validate( {
		rules: {
			reply_text: { required: true }
		},
		messages: {
			reply_text: { required: "댓글을 입력해 주세요." }
		},
		submitHandler: function( form ){

			form.submit();
			return;

		}
	} );

	// 연구실적논문 > 편집위원회 > 논문투고실 ( 글쓰기 양식 )
	$( "#diss_form_id" ).validate( {
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
			return;

		}
	} );

	// 회원정보관리 > 로그인
	$( "#FRLogin_form" ).validate( {
		rules: {
			id: { required: true },
			pw: { required: true }			
		},
		messages: {
			id: { required: "아이디를 입력해 주세요." },
			pw: { required: "비밀번호를 입력해 주세요." }
		},
		submitHandler: function( form ){

			//form.submit();
			//return;

			// 로딩이미지
			var loadingBtn = $( "<img />" ).addClass( "lgn01_4" ).attr( "src", "/images/icons/loading_1.gif" );
			var logInBtn = $( "input[type='image'].lgn01_4:eq(0)" );
			var input_id = $( "input#id", form );
			var pa = logInBtn.parent();
			$( pa ).append( loadingBtn );

			// 버튼 숨김
			logInBtn.hide();

			$.fRes_useChecker.call( form, {
				nodeName: "form",
				dataType: "xml",
				success: function( xhr ) {
					var res = parseInt( $( xhr ).find( "xbody" ).attr( "res" ), 10 );

					if( ! res ) { // 실패
						alert( "아이디 혹은 패스워드가 일치하지 않습니다" );
						logInBtn.show();
						input_id.focus();
						loadingBtn.remove();
						delete loadingBtn;
						return false;
					} else { // 성공
						alert( "환영합니다" );
						window.location.href = "/";
					}

				}
			} );

		}
	} );

	// 회원정보관리 > 회원가입 ( 1단계: 실명확인 )
	$( "#FRNameChk_form" ).validate( {
		rules: {
			name: { required: true },
			secnum_1: {
				required: true,
				number: true,
				rangelength: [6, 6]
			},
			secnum_2: {
				required: true,
				number: true,
				rangelength: [7, 7]
			}
		},
		messages: {
			name: { required: "성명을 입력해 주세요." },
			secnum_1: {
				required: "주민번호 6자리를 입력해 주세요.",
				number: "숫자만 입력할 수 있습니다",
				rangelength: $.validator.format("{1}자리로 입력해 주세요")
			},
			secnum_2: {
				required: "주민번호 7자리를 입력해 주세요.",
				number: "숫자만 입력할 수 있습니다",
				rangelength: $.validator.format("{1}자리로 입력해 주세요")
			}
		},
		submitHandler: function( form ){

			//form.submit();
			//return;

			// 로딩이미지
			var loadingBtn = $( "<img />" ).addClass( "put_04" ).attr( "src", "/images/icons/loading_1.gif" );
			$( "div.lgn03:eq(0)", form ).append( loadingBtn );

			// 버튼 숨김
			$( "input[type='image']:eq(0)", form ).hide();
			$( "a#cancle_2_id", form ).hide();

			$.fRes_useChecker.call( form, {
				nodeName: "form",
				dataType: "xml",
				success: function( xhr ) {
					var res = parseInt( $( xhr ).find( "xbody" ).attr( "res" ), 10 );

					if( ! res ) { // 실패
						alert( "실명확인에 실패하였습니다." );
						$( "input[type='image']:eq(0)", form ).show();
						$( "a#cancle_2_id", form ).show();
						loadingBtn.remove();
						delete loadingBtn;
						return;
					} else { // 성공
						alert( "실명확인 되었습니다." );
						window.location.href = "/member/join_01_2.asp";
					}

				}
			} );

		}
	} );

	// 회원정보관리 > 회원가입 ( 2단계: 약관동의 )
	$.fRes_checkedList.call( $( "#agree_check_btn" ), "#content input:checkbox" );

	// 회원정보관리 > 회원가입 ( 3단계: 아이디 중복검사 )
	$( "#id_dbl_chk" ).fRes_data_dbl_checked( {
		nodeName: "A",
		url: "/example/use_check_exam.asp",
		type: "POST",
		data: "id=",
		dataType: "xml",
		context: $( "#FRForm_insert_data input#id" ),
		success: function( xhr ) {
			var res = parseInt( $( xhr ).find( "xbody" ).attr( "res" ), 10 );
			var valu = $( "#FRForm_insert_data input#id" ).val();

			if( ! res ){ // 실패
				alert( "'" + valu + "' 는 이미 사용중인 아이디 입니다" );
				$( "#FRForm_insert_data input#id" ).val( "" );
				$( "#FRForm_insert_data input#id" ).focus();
				$( "input#id_chk_chk" ).val( "" );
				return false;
			} else { // 성공
				alert( "'" + valu + "' 는 사용하실 수 있는 아이디 입니다" );
				$( "input#id_chk_chk" ).val( "1" );
				return false;
			}
		}
	} );

	// 회원정보관리 > 회원가입 ( 3단계: 이메일 선택하기 )
	$( "select#email_3" ).fRes_selected_Act( {
		target: $( "input#email_2" )
	} );

	// 회원정보관리 > 회원가입 ( 3단계: 이메일 중복확인 )
	$( "#emailChker" ).fRes_data_dbl_checked( {
		nodeName: "A",
		email: true,
		email_inp: {
			a: $( "#FRForm_insert_data input#email_1" ),
			b: $( "#FRForm_insert_data input#email_2" )
		},
		url: "/example/use_check_exam.asp",
		type: "POST",
		data: "email=",
		dataType: "xml",
		context: $( "#FRForm_insert_data input#email_1" ),
		success: function( xhr ) {
			var res = parseInt( $( xhr ).find( "xbody" ).attr( "res" ), 10 );
			var valu = $( "#FRForm_insert_data input#email_1" ).val() + "@" + $( "#FRForm_insert_data input#email_2" ).val();

			if( res ){ // 성공
				alert( "'" + valu + "' 는 사용하실 수 있습니다" );
				$( "input#email_chk_chk" ).val( "1" );
				return false;
			} else { // 실패
				alert( "'" + valu + "' 는 이미 사용중 입니다" );
				$( "#FRForm_insert_data input#email_1" ).val( "" );
				$( "#FRForm_insert_data input#email_1" ).focus();
				$( "input#email_chk_chk" ).val( "" );
				return false;
			}
		}
	} );

	// 회원정보관리 > 회원가입 ( 3단계: 필수정보입력 )
	$( "#FRForm_insert_data" ).validate( {
		rules: {
			id: {
				required: true, // 필수인가?
				rangelength: [4, 12] // 4자이상 12자이하
			},
			name: {
				required: true
			},
			pw: {
				required: true,
				rangelength: [4, 12]
			},
			pw_re: {
				required: true,
				equalTo: "#pw" // 비교할 항목 id 명
			},
			addr_1: { required: true },
			addr_2: { required: true },
			addr_3: { required: true },
			addr_4: { required: true },
			tel_1: {
				required: true
			},
			tel_2: {
				required: true,
				rangelength: [3, 4],
				number: true
			},
			tel_3: {
				required: true,
				rangelength: [4, 4],
				number: true
			},
			pcs_1: {
				required: true
			},
			pcs_2: {
				required: true,
				rangelength: [3, 4],
				number: true
			},
			pcs_3: {
				required: true,
				rangelength: [4, 4],
				number: true
			},
			email_1: {
				required: true
			},
			email_2: {
				required: true
			}
		},

		messages: {
			id: {
				required: "아이디를 입력해 주세요",
				rangelength: $.validator.format( "{0}이상 {1}자 이하로 입력해 주세요" )
			},
			name: {
				required: "이름을 입력해 주세요"
			},
			pw: {
				required: "비밀번호를 입력해 주세요",
				rangelength: $.validator.format( "{0}이상 {1}자 이하로 입력해 주세요" )
			},
			pw_re: {
				required: "비밀번호를 다시 입력해 주세요",
				equalTo: "암호가 일치하지 않습니다" // 비교할 항목 id 명
			},
			addr_1: { required: "우편번호 찾기 버튼을 클릭하여 주소를 선택해 주세요" },
			addr_2: { required: "우편번호 찾기 버튼을 클릭하여 주소를 선택해 주세요" },
			addr_3: { required: "우편번호 찾기 버튼을 클릭하여 주소를 선택해 주세요" },
			addr_4: { required: "나머지 주소를 입력해 주세요" },
			tel_1: {
				required: "연락처(전화)를 선택해 주세요."
			},
			tel_2: {
				required: "연락처(전화)를 입력해 주세요",
				rangelength: "{0}이상 {1}자리 이하로 입력해 주세요",
				number: "숫자만 입력할 수 있습니다"
			},
			tel_3: {
				required: "연락처(전화)를 입력해 주세요",
				rangelength: "{1}자리로 입력해 주세요",
				number: "숫자만 입력할 수 있습니다"
			},
			pcs_1: {
				required: "연락처(핸드폰)를 선택해 주세요."
			},
			pcs_2: {
				required: "연락처(핸드폰)를 입력해 주세요",
				rangelength: "{0}이상 {1}자리 이하로 입력해 주세요",
				number: "숫자만 입력할 수 있습니다"
			},
			pcs_3: {
				required: "연락처(핸드폰)를 입력해 주세요",
				rangelength: "{1}자리로 입력해 주세요",
				number: "숫자만 입력할 수 있습니다"
			},
			email_1: {
				required: "이메일을 입력해 주세요"
			},
			email_2: {
				required: "직접입력하시거나 우측의 이메일 목록에서 선택해 주세요"
			}
		},

		submitHandler: function( form ){

			//form.submit();
			//return;

			// 아이디 중복검사를 하지 않은 경우.
			if( $( "input#id_chk_chk", form ).val() == "" ){
				alert( "아이디 중복검사를 해주세요" );
				$( "input#id", form ).focus();
				return false;
			}

			// 이메일 유효성 검사를 하지 않은 경우.
			if( $( "input#email_chk_chk", form ).val() == "" ){
				alert( "이메일 중복확인을 해주세요" );
				$( "input#email_1", form ).focus();
				return false;
			}

			// 로딩이미지
			var loadingBtn = $( "<img />" ).addClass( "put_04" ).attr( "src", "/images/icons/loading_1.gif" );
			$( "p.jn04:eq(0)", form ).append( loadingBtn );

			// 버튼 숨김
			$( "input[type='image']:eq(0)", form ).hide();
			$( "a#cancle_2_id", form ).hide();

			$.fRes_useChecker.call( form, {
				nodeName: "form",
				success: function( xhr ) {
					var res = parseInt( $( xhr ).find( "xbody" ).attr( "res" ), 10 );

					if( res ) { // 성공

						var ques = confirm( "미래사회연구소에 가입해 주셔서 감사드립니다.\n가입하신 아이디로 로그인 하시면 다양한 컨텐츠를 이용하실 수 있습니다. 로그인 페이지로 이동하시겠습니까?" );

						if( ques ){
							window.location.href = "/member/login.asp";
						} else {
							window.location.href = "/";
						}

					} else { // 실패

						alert( "죄송합니다. 작업중 문제가 발생하였습니다. 다시 시도하여 주십시오.\n문제가 계속된다면 관리자에게 문의해 주시기 바랍니다." );

						$( "input[type='image']:eq(0)", form ).show();
						$( "a#cancle_2_id", form ).show();
						loadingBtn.remove();
						delete loadingBtn;

						return false;

					}
				}
			} );

		}
	} );

// ==================================================== //Form Action ====================================================

} );
