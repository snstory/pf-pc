<%

dim pathArr(5,1)

If pageNum = 1 Then ' ====================== �������� ��ȣ����ȸ

	pathArr(0,0) = "�������� ��ȣ����ȸ"
	pathArr(0,1) = "/assoc/assoc_01.asp"

	If subNum01 = 1 Then
		pathArr(1,0) = "��ȸ�Ұ�"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 2 Then
		pathArr(1,0) = "�����ϱ�"
		pathArr(1,1) = "targets"

	End if


Elseif pageNum = 2 Then ' ====================== ��ȣ�� �Ұ�

	pathArr(0,0) = "��ȣ�� �Ұ�"
	pathArr(0,1) = "/intro/intro_01.asp"

	If subNum01 = 1 Then
		pathArr(1,0) = "��ȣ��"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 2 Then
		pathArr(1,0) = "��ȣ�� ����"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 3 Then
		pathArr(1,0) = "���̾�Ʈ / ü�߰����� ���� ��ȣ��"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 4 Then
		pathArr(1,0) = "�츮���� �������/��������� ���� ��ȣ��"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 5 Then
		pathArr(1,0) = "���ε��� �ǰ������� ���� ��ȣ��"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 6 Then
		pathArr(1,0) = "�������� ��ȣ��"
		pathArr(1,1) = "targets"

	End if


Elseif pageNum = 3 Then ' ====================== ��ȣ�� �丮

	pathArr(0,0) = "��ȣ�� �丮"
	pathArr(0,1) = "/cook/cook_01_01.asp"

	If subNum01 = 1 Then
		pathArr(1,0) = "��ΰ� �丮��"
		pathArr(1,1) = "/cook/cook_01_01.asp"

		If subNum02 = 1 Then
			pathArr(2,0) = "������ �丮��"
			pathArr(2,1) = "targets"

		Elseif subNum02 = 2 Then
			pathArr(2,0) = "��ٷ����� �丮��"
			pathArr(2,1) = "targets"
		
		End if

	Elseif subNum01 = 2 Then
		pathArr(1,0) = "��õ �⺻�丮��"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 3 Then
		pathArr(1,0) = "��ȣ�� ���� ��"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 4 Then
		pathArr(1,0) = "��ȣ�� ���� ��"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 5 Then
		pathArr(1,0) = "��ȣ�� �⺻ �丮��"
		pathArr(1,1) = "targets"

	End if


Elseif pageNum = 4 Then ' ====================== ��ȣ�� �ŴϾ�

	pathArr(0,0) = "��ȣ�� �ŴϾ�"
	pathArr(0,1) = "/mania/mania_01.asp"

	If subNum01 = 1 Then
		pathArr(1,0) = "������ũ"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 2 Then
		pathArr(1,0) = "��õ! ��ȣ���� ���ִ� ��"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 3 Then
		pathArr(1,0) = "��ȣ�� ��ŷ Ŭ����"
		pathArr(1,1) = "/mania/mania_03_01.asp"

		If subNum02 = 1 Then
			pathArr(2,0) = "��ŷŬ���� ��û�ϱ�"
			pathArr(2,1) = "targets"

		Elseif subNum02 = 2 Then
			pathArr(2,0) = "��ŷŬ���� �ı�"
			pathArr(2,1) = "targets"

		End if

	End if


Elseif pageNum = 5 Then ' ====================== ����/�̺�Ʈ

	pathArr(0,0) = "����/�̺�Ʈ"
	pathArr(0,1) = "/news/news_01.asp"

	If subNum01 = 1 Then
		pathArr(1,0) = "�̺�Ʈ"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 2 Then
		pathArr(1,0) = "��������"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 3 Then
		pathArr(1,0) = "�����ڷ�"
		pathArr(1,1) = "targets"

	End if


Elseif pageNum = 6 Then ' ====================== ����ȸ���ڳ�

	pathArr(0,0) = "����ȸ���ڳ�"
	pathArr(0,1) = "/bnss/bnss_01.asp"

	If subNum01 = 1 Then
		pathArr(1,0) = "��������"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 2 Then
		pathArr(1,0) = "�������� ��ȣ�� ����"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 3 Then
		pathArr(1,0) = "����ڷ�"
		pathArr(1,1) = "targets"

	End if


Elseif pageNum = 7 Then ' ====================== �����

	pathArr(0,0) = "�����"
	pathArr(0,1) = "/member/login.asp"

	If subNum01 = 1 Then
		pathArr(1,0) = "�α���"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 2 Then
		pathArr(1,0) = "���̵�/��й�ȣã��"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 3 Then
		pathArr(1,0) = "ȸ������"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 4 Then
		pathArr(1,0) = "ȸ����������"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 5 Then
		pathArr(1,0) = "ȸ��Ż��"
		pathArr(1,1) = "targets"

	End if


Elseif pageNum = 8 Then ' ====================== ETC

	pathArr(0,0) = "ETC"
	pathArr(0,1) = "/member/login.asp"

	If subNum01 = 1 Then
		pathArr(1,0) = "����Ʈ��"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 2 Then
		pathArr(1,0) = "�̿���"
		pathArr(1,1) = "targets"

	Elseif subNum01 = 3 Then
		pathArr(1,0) = "����������޹�ħ"
		pathArr(1,1) = "targets"

	End if

End if

%>

<div class="path">
	<h2 class="blind">������ ��ġ����</h2>
	<ul>
		<li class="hm"><a href="/"><img src="/images/icons/home.gif" alt="Home" /></a></li>

		<%
			For i=0 to ubound(pathArr)-1

				If pathArr(i,0) <> "" Then

					If pathArr(i,1) = "" Then
						%><li><em><%=pathArr(i,0)%></em></li><%
					Elseif pathArr(i,1) = "targets" Then
						%><li><strong><%=pathArr(i,0)%></strong></li><%
					Else
						%><li><a href="<%=pathArr(i,1)%>"><%=pathArr(i,0)%></a></li><%
					End if

				End if
			Next
		%>
	</ul>
</div><!-- //path -->
