<%
pageNum = 3
subNum01 = 3
subNum02 = 2

'path Array
dim pathArr(3,1)
pathArr(0,0) = "연구실적"
pathArr(0,1) = "../res/res_01.asp"
pathArr(1,0) = "논문 편집위원회"
pathArr(1,1) = "../res/res_03_01.asp"
pathArr(2,0) = "논문투고실"
pathArr(2,1) = ""

'폴더 타이틀 img, alt
ttl_img = "../images/pgs/res/title_01.gif"
ttl_ment = pathArr(0,0)

'페이지 타이틀 img, alt
s_ttl_img = "../images/pgs/res/s_title_0"& subNum01 &"_0"& subNum02 &".gif"
s_ttl_ment = pathArr(2,0)

'페이지 타이틀 하단 부가설명 img, alt
s_ttl_img_2 = "../images/pgs/res/s_title_0"& subNum01 &"_0"& subNum02 &"_ment.gif"
s_ttl_ment_2 = "일반회원들의 논문 투고를 위한 공간입니다."
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

<form method="post" action="res_03_02_view.asp" enctype="multipart/form-data" accept-charset="euc-kr" name="diss_form_id" id="diss_form_id">
	<fieldset>

		<legend>글쓰기 양식</legend>

		<div class="bs_01">
			<span class="blt"></span><span class="bgt"></span>

			<table class="tb_def">
				<colgroup>
					<col width="12%" />
					<col width="28%" />
					<col width="12%" />
					<col width="48%" />
				</colgroup>
			
				<tbody class="ths_02">
					<tr class="tp">
						<th><img src="../images/txt/name.gif" alt="이름" /></th>
						<td><input type="text" name="name" id="name" class="inp_def_2 inp_04" /></td>
						<th><img src="../images/txt/tel.gif" alt="연락처" /></th>
						<td>
							<select name="tel_1" id="tel_1" class="se_02">
								<option value="">선택하세요</option>
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select>
							-
							<input type="text" name="tel_2" id="tel_2" class="inp_def_2 inp_05" />
							-
							<input type="text" name="tel_3" id="tel_3" class="inp_def_2 inp_05" />
						</td>
					</tr>
					<tr class="bdr">
						<th><img src="../images/txt/aff.gif" alt="소속" /></th>
						<td colspan="3"><input type="text" name="aff" id="aff" class="inp_def_2 inp_03" /></td>
					</tr>
					<tr class="bdr">
						<th><img src="../images/txt/diss.gif" alt="논문제목" /></th>
						<td colspan="3"><input type="text" name="diss" id="diss" class="inp_def_2 inp_03" /></td>
					</tr>
					<tr class="bdr">
						<th class="nobg"><img src="../images/txt/diss_intro.gif" alt="논문소개" /></th>
						<td colspan="3" class="cont"><textarea name="diss_intro" id="diss_intro" rows="3" cols="50" class="txe_01"></textarea></td>
					</tr>
					<tr class="files">
						<th><img src="../images/txt/file.gif" alt="첨부파일" /></th>
						<td colspan="3">
							<input type="file" name="file_add" id="file_add" size="80" />
							<p class="tb_ment">파일크기는 10MB 미만 입니다.</p>
						</td>
					</tr>
				</tbody>
			</table>
		</div>

		<!-- 버튼영역 -->
		<div class="cmn_01">
			<a href="#"><img src="../images/btns/cancle.gif" alt="취소" /></a>
			<input type="image" src="../images/btns/done.gif" alt="완료" />
		</div>
		<!-- //버튼영역 -->

	</fieldset>
</form>

<!-- #include file = "../include/bottom.asp" -->
