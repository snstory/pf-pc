<%
pageNum = 5
subNum01 = 3
subNum02 = 1

'path Array
dim pathArr(2,1)
pathArr(0,0) = "커뮤니티"
pathArr(0,1) = "../cmu/cmu_01.asp"
pathArr(1,0) = "Q&amp;A"
pathArr(1,1) = ""

'폴더 타이틀 img, alt
ttl_img = "../images/pgs/cmu/title_01.gif"
ttl_ment = pathArr(0,0)

'페이지 타이틀 img, alt
s_ttl_img = "../images/pgs/cmu/s_title_0"& subNum01 &".gif"
s_ttl_ment = pathArr(1,0)

'페이지 타이틀 하단 부가설명 img, alt
s_ttl_img_2 = "../images/pgs/cmu/s_title_0"& subNum01 &"_ment.gif"
s_ttl_ment_2 = "궁금한 점을 남겨주세요. 성심껏 답변해드리겠습니다."
%>

<!-- #include file = "../include/header.asp" -->
<!-- #include file = "../include/top.asp" -->

<!-- 답글일 경우 원본내용을 보여줄 경우 -->
<div class="original_ment">
	원본글의 내용입니다.
</div>
<!-- //답글일 경우 원본내용을 보여줄 경우 -->

<form method="post" action="">
	<fieldset>

		<legend>글쓰기 양식</legend>

		<div class="bs_01">
			<span class="blt"></span><span class="bgt"></span>

			<table class="tb_def">
				<colgroup>
					<col width="12%" />
					<col width="88%" />
				</colgroup>
			
				<tbody class="ths_02">
					<tr class="tp">
						<th><img src="../images/txt/ttl.gif" alt="제목" /></th>
						<td><input type="text" name="title" id="title" class="inp_def_2 inp_03" /></td>
					</tr>
					<tr class="bdr">
						<th class="nobg"><img src="../images/txt/cont.gif" alt="내용" /></th>
						<td class="cont">
							<!-- 에디터 영역 width="573" height="235" -->
							<div class="edt"><img src="../images/_temp/editor.gif" width="573" height="235" alt="" /></div>
						</td>
					</tr>
					<tr class="files">
						<th><img src="../images/txt/file.gif" alt="첨부파일" /></th>
						<td>
							<input type="file" name="add_file" id="add_file" size="80" />
							<p class="tb_ment">파일크기는 5MB 미만 입니다.</p>
						</td>
					</tr>
				</tbody>
			</table>
		</div>

		<!-- 버튼영역 -->
		<div class="cmn_01">
			<a href="cmu_03.asp"><img src="../images/btns/cancle.gif" alt="취소" /></a>
			<input type="image" src="../images/btns/done.gif" alt="완료" />
		</div>
		<!-- //버튼영역 -->

	</fieldset>
</form>

<!-- #include file = "../include/bottom.asp" -->
