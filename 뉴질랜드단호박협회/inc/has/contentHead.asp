<%

If ( pageNum = 3 And subNum01 = 1 ) or ( pageNum = 4 And subNum01 = 3 ) Then
	stImg = "st_0"& subNum01 &"_0"& subNum02 &".gif"
	stImgMt = "st_0"& subNum01 &"_0"& subNum02 &"_mt.gif"
Else
	stImg = "st_0"& subNum01 &".gif"
	stImgMt = "st_0"& subNum01 &"_mt.gif"
End if

If pageNum = 1 Then ' ====================== �������� ��ȣ����ȸ

	pageDir = "assoc"

	If subNum01 = 1 Then '��ȸ�Ұ�
		stImgAlt = "��ȸ �Ұ�"
		stImgMtAlt = "�ż��ϰ� ���ִ� �������� ��ȣ���� ������ �Ұ��ص帮�� ���� ������ �ִ� �������� ��ȣ�� ��ȸ�� �Ұ��մϴ�."

	Elseif subNum01 = 2 Then '�����ϱ�
		stImgAlt = "�����ϱ�"
		stImgMtAlt = "�ñ��Ͻ� ������ ��������? �����̵� �����ϼ���. ģ���ϰ� ������ �亯 �帮���� �ϰڽ��ϴ�."

	End if


Elseif pageNum = 2 Then ' ====================== ��ȣ�� �Ұ�

	pageDir = "intro"

	If subNum01 = 1 Then '��ȣ��
		stImgAlt = "��ȣ��"
		stImgMtAlt = "���� ���� ���絵 ǳ���� ��ȣ�ڿ� ���ؼ� �˾ƺ�����!"

	Elseif subNum01 = 2 Then '��ȣ�� ����
		stImgAlt = "��ȣ�� ����"
		stImgMtAlt = "�츮 ���� �ǰ��ϰ� ���ִ� ��ȣ���� ���翡 ���ؼ� �˾ƺ�����!"

	Elseif subNum01 = 3 Then '���̾�Ʈ/ü�߰��������Ѵ�ȣ��
		stImgAlt = "���̾�Ʈ/ü�߰����� ���� ��ȣ��"
		stImgMtAlt = "���̾�Ʈ, ü�߰����� ���� ��ȣ���� �Ұ��մϴ�!"

	Elseif subNum01 = 4 Then '�츮���̿������/������� ��
		stImgAlt = "�츮���� �������/��������� ���� ��ȣ��"
		stImgMtAlt = "�츮������ �������, ��������� ����ϽŴٸ� ��ȣ���� �غ��ϼ���!"

	Elseif subNum01 = 5 Then '���ε��ǰǰ����������Ѵ�ȣ��
		stImgAlt = "���ε��� �ǰ������� ���� ��ȣ��"
		stImgMtAlt = "���ε��� �ǰ������� ������ �� ���� ��ǰ ��ȣ���� ����������!"

	Elseif subNum01 = 6 Then '�������� ��ȣ��
		stImgAlt = "�������� ��ȣ��"
		stImgMtAlt = "���� ���� ȯ�濡�� �ڶ� �� ���� �ż��� Fresh �������� ��ȣ���� �Ұ��մϴ�!"

	End if


Elseif pageNum = 3 Then ' ====================== ��ȣ�� �丮

	pageDir = "cook"

	If subNum01 = 1 Then '��ΰ� �丮��

		If subNum02 = 1 Then '������ �丮��
			stImgAlt = "������ �丮��"
			stImgMtAlt = "�Ŀ� ��ΰ� ������ ü�߰����� ���� ��ȣ�� �丮���� ����������!"
			evtImg = "event_02.gif"
			evtImgAlt = "������ �丮���� �� �� ������ �����ֽ� �� �� �� �� 2���� ��÷�� ��ȭ���ű� 2�Ÿ� �帳�ϴ�."

		Elseif subNum02 = 2 Then '��ٷ����� �丮��
			stImgAlt = "��ٷ����� �丮��"
			stImgMtAlt = "�Ŀ� ��ΰ� ��ٷ����� �츮���� �ǰ��� ���� ��ȣ�� �丮���� ����������!"
			evtImg = "event_03.gif"
			evtImgAlt = "��ٷ����� �丮���� �� �� ������ �����ֽ� �� �� �� �� 2���� ��÷�� ��ȭ���ű� 2�Ÿ� �帳�ϴ�."
		
		End if

	Elseif subNum01 = 2 Then '��õ �⺻�丮��
		stImgAlt = "��õ �⺻ �丮��"
		stImgMtAlt = "��ȣ�� �⺻ �丮�� �˰� ��Ű���? �⺻ �丮���� ��õ�� �帳�ϴ�!"

	Elseif subNum01 = 3 Then '��ȣ�� ���� ��
		stImgAlt = "��ȣ�� ���� ��"
		stImgMtAlt = "�ż��ϰ� ���ִ� ��ȣ���� ���� ���� �Ұ��� �帳�ϴ�!"

	Elseif subNum01 = 4 Then '��ȣ�� ���� ��
		stImgAlt = "��ȣ�� ���� ��"
		stImgMtAlt = "���ִ� ��ȣ���� �ż��ϰ� �����Ϸ��� ��� �ؾ� �ұ��? ���� �˾ƺ�����!"

	Elseif subNum01 = 5 Then '��ȣ�� �⺻ �丮��
		stImgAlt = "��ȣ�� �⺻ �丮��"
		stImgMtAlt = "��ȣ�� �⺻ ������ �� �⺻ �丮���� �˷��帳�ϴ�!"

	End if


Elseif pageNum = 4 Then ' ====================== ��ȣ�� �ŴϾ�

	pageDir = "mania"

	If subNum01 = 1 Then '������ũ
		stImgAlt = "�� �� ��ũ"
		stImgMtAlt = "��ȣ�� �ŴϾƶ�� � � ���̼���! ���� ���� ��ũ�� ������ �Դϴ�!"
		evtImg = "event_01.gif"
		evtImgAlt = "�� �� ��ũ ���� �ø��� �� �� �� �� 5���� ��÷�� ��ȭ���ű� 2�Ÿ� �帳�ϴ�."

	Elseif subNum01 = 2 Then '��õ! ��ȣ���� ���ִ� ��
		stImgAlt = "��õ! ��ȣ���� ���ִ� ��"
		stImgMtAlt = "��ȣ�� �ŴϾƶ�� �� �湮�غ��� �� �Ŀ� ��ΰ� �谡�� ��õ�ϴ� ��ȣ�� ����!"
		evtImg = "event_04.gif"
		evtImgAlt = "�� �� �Ұ� �ۿ� �� �� ������ �����ֽ� �� �� �� �� 2���� ��÷�� ��ȭ���ű� 2�Ÿ� �帳�ϴ�."

	Elseif subNum01 = 3 Then '��ȣ�� ��ŷ Ŭ����

		If subNum02 = 1 Then '��ŷŬ���� ��û�ϱ�
			stImgAlt = "��ŷ Ŭ���� ��û�ϱ�"
			stImgMtAlt = "��ȣ�� �ŴϾƸ� ���� Ư���� �ʴ�! ��ȣ�� ��ŷ Ŭ���� ���� ��û�ϼ���!"

		Elseif subNum02 = 2 Then '��ŷŬ���� �ı�
			stImgAlt = "��ŷ Ŭ���� �ı�"
			stImgMtAlt = "��ȣ�� ��ŷ Ŭ���� ��ſ�̳���? �� ������ ������ �ı�� ����������!"
			evtImg = "event_05.gif"
			evtImgAlt = "�� ��ŷ Ŭ�������� ������ �ı⸦ �ø��� �� �� 2���� ��÷�� ��ȭ���ű� 2�Ÿ� �帳�ϴ�."

		End if

	End if


Elseif pageNum = 5 Then ' ====================== ����/�̺�Ʈ

	pageDir = "news"

	If subNum01 = 1 Then '�̺�Ʈ
		stImgAlt = "�̺�Ʈ"
		stImgMtAlt = "ȸ�� �������� ���� �پ��� �̺�Ʈ�� �� ����ǰ� �ֽ��ϴ�. �̺�Ʈ�� �����Ͻð� ������ ��������!"

	Elseif subNum01 = 2 Then '��������
		stImgAlt = "��������"
		stImgMtAlt = "�ȳ��ϼ���! ȸ�� �����в� ���ο� �ҽ��� �ȳ��� �帳�ϴ�."

	Elseif subNum01 = 3 Then '�����ڷ�
		stImgAlt = "�����ڷ�"
		stImgMtAlt = "���� ��ü�� ������ ��ȣ�� ���� ����� �������� ��ȣ�� ��ȸ���� �غ��� �����ڷḦ �Ұ��� �帳�ϴ�."

	End if


Elseif pageNum = 6 Then ' ====================== ����ȸ���ڳ�

	pageDir = "bnss"

	If subNum01 = 1 Then '��������
		stImgAlt = "��������"
		stImgMtAlt = "�ȳ��ϼ���. �������� ��ȣ���� ����, �Ǹ� �ϴ� ����ȸ�� �����е��� ���� �������� �Դϴ�."

	Elseif subNum01 = 2 Then '�������� ��ȣ�� ����
		stImgAlt = "�������� ��ȣ�� ����"
		stImgMtAlt = "����ȸ�� �е��� ���� �������� ��ȣ�� ���忡 ���� ������ ���� �帳�ϴ�."

	Elseif subNum01 = 3 Then '����ڷ�
		stImgAlt = "����ڷ�"
		stImgMtAlt = "����ȸ�� �е��� ���� �������� ��ȣ�� ���� �پ��� ����ڷḦ �����մϴ�."

	End if


Elseif pageNum = 7 Then ' ====================== �����

	pageDir = "member"

	If subNum01 = 1 Then '�α���
		stImgAlt = "�α���"
		stImgMtAlt = "�ȳ��ϼ���. �������� ��ȣ�� ��ȸ ������Ʈ �湮�� ȯ���մϴ�!"

	Elseif subNum01 = 2 Then '���̵�/��й�ȣã��
		stImgAlt = "���̵�/��й�ȣ ã��"
		stImgMtAlt = "�ȳ��ϼ���. ȸ����. ���̵�/��й�ȣ�� �����̳���? �Ʒ� ������ �Է����ּ���."

	Elseif subNum01 = 3 Then 'ȸ������
		stImgAlt = "ȸ������"
		stImgMtAlt = "�ȳ��ϼ���. ȸ���� �ǽø� �پ��� ������ �������� �� �ֽ��ϴ�."

	Elseif subNum01 = 4 Then 'ȸ����������
		stImgAlt = "ȸ������ ����"
		stImgMtAlt = "�پ��� ������ ��ġ�� �ʵ��� �ֽ� ������ �������ּ���."

	Elseif subNum01 = 5 Then 'ȸ��Ż��
		stImgAlt = "ȸ��Ż��"
		stImgMtAlt = "�������� ��ȣ�ڿ� ���ɰ� ������ ���� �̴ּ� ȸ���Բ� ������ ������ �帳�ϴ�."

	End if


Elseif pageNum = 8 Then ' ====================== ��Ÿ

	pageDir = "etc"

	If subNum01 = 1 Then '����Ʈ��
		stImgAlt = "����Ʈ��"
		stImgMtAlt = "�������� ��ȣ�� ��ȸ ������Ʈ�� �� ���� ���� �� �ִ� ����Ʈ���Դϴ�."

	Elseif subNum01 = 2 Then '�̿���
		stImgAlt = "�̿���"
		stImgMtAlt = "�������� ��ȣ�� ��ȸ ȸ�� �̿��� �Դϴ�."

	Elseif subNum01 = 3 Then '����������޹�ħ
		stImgAlt = "����������޹�ħ"
		stImgMtAlt = "�������� ��ȣ�� ��ȸ ����������޹�ħ �Դϴ�."

	End if

End if

%>

<div class="head">
	<h1><img src="/images/pgs/<%= pageDir %>/<%= stImg %>" alt="<%= stImgAlt %>" /></h1>
	<p class="ment"><img src="/images/pgs/<%= pageDir %>/<%= stImgMt %>" alt="<%= stImgMtAlt %>" /></p>
	<% If evtImg <> "" Then %>
	<p class="evt"><img src="/images/txt/<%= evtImg %>" alt="<%= evtImgAlt %>" /></p>
	<% End if %>
</div><!-- //head -->
