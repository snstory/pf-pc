<%
pageNum = 4
subNum01 = 2
subNum02 = 4

dim pathArr(3,1)
pathArr(0,0) = "Talk Hole"
pathArr(0,1) = "/talk/talk_01_01_list.asp"
pathArr(1,0) = "���Ա�ȯ�ϱ�"
pathArr(1,1) = "/talk/talk_02_01.asp"
pathArr(2,0) = "���Ǹ��Ժ���"
pathArr(2,1) = ""

titleImgSrc = "/images/talk/s_title_02_04.gif"
titleImgMent = "���Ǹ��Ժ���"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<!-- ���� �˻��ϱ� ���� -->
<form method="post" action="">
	<fieldset>
		<legend>���� �˻��ϱ� ���</legend>

		<div class="bbsCardSch">
			<dl class="bbsCardSch_list">
				<dd>
					<div>
						<label for="sex" class="ttle">����</label>
						<select name="sex" id="sex" class="fs_01">
							<option value="">��ü</option>
							<option value="">��</option>
							<option value="">��</option>
						</select>
					</div>
				</dd>
				<dd>
					<div>
						<label for="name" class="ttle">�̸�</label>
						<input type="text" name="name" id="name" class="fi_04 fi_df_b" />
					</div>
				</dd>
				<dd>
					<div>
						<label for="branch" class="ttle">�о�</label>
						<select name="branch" id="branch" class="fs_01">
							<option value="">�����ϼ���</option>
						</select>
					</div>
				</dd>
				<dd>
					<div>
						<label for="attach" class="ttle">�Ҽ�</label>
						<input type="text" name="attach" id="attach" class="fi_05 fi_df_b" />
					</div>
				</dd>
				<dd>
					<div>
						<label for="zone" class="ttle">����</label>
						<select name="zone" id="zone" class="fs_01">
							<option value="">��ü</option>
						</select>
					</div>
				</dd>
				<dd>
					<div>
						<label for="age_01" class="ttle">����</label>
						<select name="age_01" id="age_01" class="fs_02">
							<option value="">20</option>
						</select>
						~
						<select name="age_02" id="age_02" class="fs_02">
							<option value="">80</option>
						</select>
					</div>
				</dd>
				<dd>
					<div>
						<label for="career" class="ttle">����</label>
						<select name="career" id="career" class="fs_02">
							<option value="">20</option>
						</select>
					</div>
				</dd>
			</dl>

			<!-- �˻��ϱ� ��ư -->
			<a href="#" class="acBtn"><em class="lt"></em><em class="gt"></em><em class="wd">���� �˻��ϱ�</em></a>
			<!-- //�˻��ϱ� ��ư -->
		</div>
	</fieldset>
</form>
<!-- //���� �˻��ϱ� ���� -->

<!-- ī�װ� ��� ���� -->
<div class="tk02">
	<a href="talk_02_01.asp">��ü��ϸ��Ժ���</a> |
	<a href="talk_02_02.asp">���Ե�� �� ����</a> |
	<a href="talk_02_03.asp">���Ա�ȯ�� ���</a> |
	<a href="talk_02_04.asp" class="on">���� ���Ժ���</a>
</div>
<!-- //ī�װ� ��� ���� -->

<!-- #include virtual = "/include/bottom.asp" -->
