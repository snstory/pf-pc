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

	// ����: lnb �޴� �̺�Ʈ
	$( ".lnb_list" ).fRes_snbEvent( {
		animated: true, // ��ư�� �ִϸ��̼��� ������ ���. true: ����, false: ������
		dura: 800, // �ִϸ��̼� �ӵ�
		easi: "easeInOutSine", // �ִϸ��̼� ��Ÿ��
		onClass: "on", // �޴� li �� ����� ��Ÿ��
		sttClass: "now_on", // ���� Ȱ��ȭ �� �޴��� �߰��� class ��
		hover_node: "li",
		regexp: /\/\w+\//gi,
		absNoBdr: "absNoBdr"
	} );

	// ����: snb �޴� �̺�Ʈ
	$( ".snb_list" ).fRes_snbEvent( {
		animated: true, // ��ư�� �ִϸ��̼��� ������ ���. true: ����, false: ������
		dura: 400, // �ִϸ��̼� �ӵ�
		easi: "easeInOutSine", // �ִϸ��̼� ��Ÿ��
		onClass: "on", // �޴� li �� ����� ��Ÿ��
		sttClass: "now_on", // ���� Ȱ��ȭ �� �޴��� �߰��� class ��
		hover_node: "li"
	} );

	// ���� - ��������, ����Ȱ�� ��
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
	// jquery.validate.js ��� ��¹�� ����.
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

	// �˻� ��
	$( "#searchForm" ).validate( {
		rules: {
			word: { required: true }
		},
		messages: {
			word: { required: "�˻�� �Է��� �ּ���." }
		},
		submitHandler: function( form ){

			form.submit();
			return;

		}
	} );

	// ��۳���� ��
	$( "#reply_add_form" ).validate( {
		rules: {
			reply_text: { required: true }
		},
		messages: {
			reply_text: { required: "����� �Է��� �ּ���." }
		},
		submitHandler: function( form ){

			form.submit();
			return;

		}
	} );

	// ���������� > ��������ȸ > ������� ( �۾��� ��� )
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
			"name": { required: "�̸��� �Է��� �ּ���" },
			"tel_1": { required: "����ó�� ������ �ּ���" },
			"tel_2": {
				required: "����ó�� �Է��� �ּ���",
				number: "���ڸ� �Է��� �� �ֽ��ϴ�",
				rangelength: $.validator.format("{0}���̻� {1}�� ���Ϸ� �Է��� �ּ���")
			},
			"tel_3": {
				required: "����ó�� �Է��� �ּ���",
				number: "���ڸ� �Է��� �� �ֽ��ϴ�",
				rangelength: $.validator.format("{1}�ڸ� ���� �Է��� �ּ���")
			},
			"aff": { required: "�Ҽ��� �Է��� �ּ���" },
			"diss": { required: "�������� �Է��� �ּ���" },
			"diss_intro": { required: "���Ұ��� �Է��� �ּ���" }
		},
		submitHandler: function( form ){

			form.submit();
			return;

		}
	} );

	// ȸ���������� > �α���
	$( "#FRLogin_form" ).validate( {
		rules: {
			id: { required: true },
			pw: { required: true }			
		},
		messages: {
			id: { required: "���̵� �Է��� �ּ���." },
			pw: { required: "��й�ȣ�� �Է��� �ּ���." }
		},
		submitHandler: function( form ){

			//form.submit();
			//return;

			// �ε��̹���
			var loadingBtn = $( "<img />" ).addClass( "lgn01_4" ).attr( "src", "/images/icons/loading_1.gif" );
			var logInBtn = $( "input[type='image'].lgn01_4:eq(0)" );
			var input_id = $( "input#id", form );
			var pa = logInBtn.parent();
			$( pa ).append( loadingBtn );

			// ��ư ����
			logInBtn.hide();

			$.fRes_useChecker.call( form, {
				nodeName: "form",
				dataType: "xml",
				success: function( xhr ) {
					var res = parseInt( $( xhr ).find( "xbody" ).attr( "res" ), 10 );

					if( ! res ) { // ����
						alert( "���̵� Ȥ�� �н����尡 ��ġ���� �ʽ��ϴ�" );
						logInBtn.show();
						input_id.focus();
						loadingBtn.remove();
						delete loadingBtn;
						return false;
					} else { // ����
						alert( "ȯ���մϴ�" );
						window.location.href = "/";
					}

				}
			} );

		}
	} );

	// ȸ���������� > ȸ������ ( 1�ܰ�: �Ǹ�Ȯ�� )
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
			name: { required: "������ �Է��� �ּ���." },
			secnum_1: {
				required: "�ֹι�ȣ 6�ڸ��� �Է��� �ּ���.",
				number: "���ڸ� �Է��� �� �ֽ��ϴ�",
				rangelength: $.validator.format("{1}�ڸ��� �Է��� �ּ���")
			},
			secnum_2: {
				required: "�ֹι�ȣ 7�ڸ��� �Է��� �ּ���.",
				number: "���ڸ� �Է��� �� �ֽ��ϴ�",
				rangelength: $.validator.format("{1}�ڸ��� �Է��� �ּ���")
			}
		},
		submitHandler: function( form ){

			//form.submit();
			//return;

			// �ε��̹���
			var loadingBtn = $( "<img />" ).addClass( "put_04" ).attr( "src", "/images/icons/loading_1.gif" );
			$( "div.lgn03:eq(0)", form ).append( loadingBtn );

			// ��ư ����
			$( "input[type='image']:eq(0)", form ).hide();
			$( "a#cancle_2_id", form ).hide();

			$.fRes_useChecker.call( form, {
				nodeName: "form",
				dataType: "xml",
				success: function( xhr ) {
					var res = parseInt( $( xhr ).find( "xbody" ).attr( "res" ), 10 );

					if( ! res ) { // ����
						alert( "�Ǹ�Ȯ�ο� �����Ͽ����ϴ�." );
						$( "input[type='image']:eq(0)", form ).show();
						$( "a#cancle_2_id", form ).show();
						loadingBtn.remove();
						delete loadingBtn;
						return;
					} else { // ����
						alert( "�Ǹ�Ȯ�� �Ǿ����ϴ�." );
						window.location.href = "/member/join_01_2.asp";
					}

				}
			} );

		}
	} );

	// ȸ���������� > ȸ������ ( 2�ܰ�: ������� )
	$.fRes_checkedList.call( $( "#agree_check_btn" ), "#content input:checkbox" );

	// ȸ���������� > ȸ������ ( 3�ܰ�: ���̵� �ߺ��˻� )
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

			if( ! res ){ // ����
				alert( "'" + valu + "' �� �̹� ������� ���̵� �Դϴ�" );
				$( "#FRForm_insert_data input#id" ).val( "" );
				$( "#FRForm_insert_data input#id" ).focus();
				$( "input#id_chk_chk" ).val( "" );
				return false;
			} else { // ����
				alert( "'" + valu + "' �� ����Ͻ� �� �ִ� ���̵� �Դϴ�" );
				$( "input#id_chk_chk" ).val( "1" );
				return false;
			}
		}
	} );

	// ȸ���������� > ȸ������ ( 3�ܰ�: �̸��� �����ϱ� )
	$( "select#email_3" ).fRes_selected_Act( {
		target: $( "input#email_2" )
	} );

	// ȸ���������� > ȸ������ ( 3�ܰ�: �̸��� �ߺ�Ȯ�� )
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

			if( res ){ // ����
				alert( "'" + valu + "' �� ����Ͻ� �� �ֽ��ϴ�" );
				$( "input#email_chk_chk" ).val( "1" );
				return false;
			} else { // ����
				alert( "'" + valu + "' �� �̹� ����� �Դϴ�" );
				$( "#FRForm_insert_data input#email_1" ).val( "" );
				$( "#FRForm_insert_data input#email_1" ).focus();
				$( "input#email_chk_chk" ).val( "" );
				return false;
			}
		}
	} );

	// ȸ���������� > ȸ������ ( 3�ܰ�: �ʼ������Է� )
	$( "#FRForm_insert_data" ).validate( {
		rules: {
			id: {
				required: true, // �ʼ��ΰ�?
				rangelength: [4, 12] // 4���̻� 12������
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
				equalTo: "#pw" // ���� �׸� id ��
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
				required: "���̵� �Է��� �ּ���",
				rangelength: $.validator.format( "{0}�̻� {1}�� ���Ϸ� �Է��� �ּ���" )
			},
			name: {
				required: "�̸��� �Է��� �ּ���"
			},
			pw: {
				required: "��й�ȣ�� �Է��� �ּ���",
				rangelength: $.validator.format( "{0}�̻� {1}�� ���Ϸ� �Է��� �ּ���" )
			},
			pw_re: {
				required: "��й�ȣ�� �ٽ� �Է��� �ּ���",
				equalTo: "��ȣ�� ��ġ���� �ʽ��ϴ�" // ���� �׸� id ��
			},
			addr_1: { required: "�����ȣ ã�� ��ư�� Ŭ���Ͽ� �ּҸ� ������ �ּ���" },
			addr_2: { required: "�����ȣ ã�� ��ư�� Ŭ���Ͽ� �ּҸ� ������ �ּ���" },
			addr_3: { required: "�����ȣ ã�� ��ư�� Ŭ���Ͽ� �ּҸ� ������ �ּ���" },
			addr_4: { required: "������ �ּҸ� �Է��� �ּ���" },
			tel_1: {
				required: "����ó(��ȭ)�� ������ �ּ���."
			},
			tel_2: {
				required: "����ó(��ȭ)�� �Է��� �ּ���",
				rangelength: "{0}�̻� {1}�ڸ� ���Ϸ� �Է��� �ּ���",
				number: "���ڸ� �Է��� �� �ֽ��ϴ�"
			},
			tel_3: {
				required: "����ó(��ȭ)�� �Է��� �ּ���",
				rangelength: "{1}�ڸ��� �Է��� �ּ���",
				number: "���ڸ� �Է��� �� �ֽ��ϴ�"
			},
			pcs_1: {
				required: "����ó(�ڵ���)�� ������ �ּ���."
			},
			pcs_2: {
				required: "����ó(�ڵ���)�� �Է��� �ּ���",
				rangelength: "{0}�̻� {1}�ڸ� ���Ϸ� �Է��� �ּ���",
				number: "���ڸ� �Է��� �� �ֽ��ϴ�"
			},
			pcs_3: {
				required: "����ó(�ڵ���)�� �Է��� �ּ���",
				rangelength: "{1}�ڸ��� �Է��� �ּ���",
				number: "���ڸ� �Է��� �� �ֽ��ϴ�"
			},
			email_1: {
				required: "�̸����� �Է��� �ּ���"
			},
			email_2: {
				required: "�����Է��Ͻðų� ������ �̸��� ��Ͽ��� ������ �ּ���"
			}
		},

		submitHandler: function( form ){

			//form.submit();
			//return;

			// ���̵� �ߺ��˻縦 ���� ���� ���.
			if( $( "input#id_chk_chk", form ).val() == "" ){
				alert( "���̵� �ߺ��˻縦 ���ּ���" );
				$( "input#id", form ).focus();
				return false;
			}

			// �̸��� ��ȿ�� �˻縦 ���� ���� ���.
			if( $( "input#email_chk_chk", form ).val() == "" ){
				alert( "�̸��� �ߺ�Ȯ���� ���ּ���" );
				$( "input#email_1", form ).focus();
				return false;
			}

			// �ε��̹���
			var loadingBtn = $( "<img />" ).addClass( "put_04" ).attr( "src", "/images/icons/loading_1.gif" );
			$( "p.jn04:eq(0)", form ).append( loadingBtn );

			// ��ư ����
			$( "input[type='image']:eq(0)", form ).hide();
			$( "a#cancle_2_id", form ).hide();

			$.fRes_useChecker.call( form, {
				nodeName: "form",
				success: function( xhr ) {
					var res = parseInt( $( xhr ).find( "xbody" ).attr( "res" ), 10 );

					if( res ) { // ����

						var ques = confirm( "�̷���ȸ�����ҿ� ������ �ּż� ����帳�ϴ�.\n�����Ͻ� ���̵�� �α��� �Ͻø� �پ��� �������� �̿��Ͻ� �� �ֽ��ϴ�. �α��� �������� �̵��Ͻðڽ��ϱ�?" );

						if( ques ){
							window.location.href = "/member/login.asp";
						} else {
							window.location.href = "/";
						}

					} else { // ����

						alert( "�˼��մϴ�. �۾��� ������ �߻��Ͽ����ϴ�. �ٽ� �õ��Ͽ� �ֽʽÿ�.\n������ ��ӵȴٸ� �����ڿ��� ������ �ֽñ� �ٶ��ϴ�." );

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
