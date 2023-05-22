$( document ).ready( function() {

	// jquery.validate.js ��� ��¹�� ����.
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

	// �˻� ��
	$( "#searchForm" ).validate( {
		debug: true,
		rules: {
			word: { required: true }
		},
		messages: {
			word: { required: "�˻�� �Է��� �ּ���." }
		},
		submitHandler: function( form ){

			form.submit();
			return false;

		}
	} );

	// ��۳���� ��
	$( "#reply_add_form" ).validate( {
		debug: true,
		rules: {
			reply_text: { required: true }
		},
		messages: {
			reply_text: { required: "����� �Է��� �ּ���." }
		},
		submitHandler: function( form ){

			form.submit();
			return false;

		}
	} );

	// ���������� > ��������ȸ > ������� ( �۾��� ��� )
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
			return false;

		}
	} );

} );