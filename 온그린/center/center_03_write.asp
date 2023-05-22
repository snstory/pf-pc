<%
pageNum = 6
subNum01 = 3
subNum02 = ""

dim pathArr(2,1)
pathArr(0,0) = "고객센터"
pathArr(0,1) = "/center/center_01_list.asp"
pathArr(1,0) = "제휴광고문의"
pathArr(1,1) = ""

titleImgSrc = "/images/center/s_title_03.gif"
titleImgMent = "제휴광고문의"
%>

<!-- #include virtual = "/include/top_head.asp" -->
<!-- #include virtual = "/include/top.asp" -->

<form method="post" action="">
	<fieldset>
		<legend>온그린 글쓰기 양식</legend>

		<div class="bbs02_w">
			<table class="bbs02_w_tb">
				<colgroup>
					<col width="18%" />
					<col width="82%" />
				</colgroup>
			
				<tbody>
					<tr>
						<th><img src="/images/common/txt/m_public.gif" alt="공개여부" /></th>
						<td>
							<input type="radio" name="m_public" id="m_public" value="" /><span class="r2">공개</span>
							<input type="radio" name="m_public" id="m_public" value="" /><span class="r2">비공개</span>
							<strong class="alrt">비공개를 선택하시면 회원과 관리자 외 다른 회원이 게시물을 볼 수 없습니다.</strong>
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/writer.gif" alt="작성자 명" /></th>
						<td><input type="text" name="name" id="name" class="i_df fi_01" /></td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/ct_gory.gif" alt="게시물유형" /></th>
						<td>
							<select name="ct_gory" id="ct_gory" class="fs_05">
								<option value="">선택하세요.</option>
								<option value="">제안</option>
								<option value="">상담</option>
							</select>
						</td>
					</tr>
					<tr>
						<th><img src="/images/common/txt/title.gif" alt="제목" /></th>
						<td><input type="text" name="title" id="title" class="i_df fi_02" /></td>
					</tr>
					<tr class="cont">
						<th><img src="/images/common/txt/content.gif" alt="내용" /></th>
						<td class="editor"><img src="/images/common/test_img/editor.gif" width="457" height="327" alt="에디터영역" /></td>
					</tr>
				</tbody>
			</table>
		</div>

		<!-- 버튼영역 (기본타입) -->
		<div class="bbsBtns_01">
			<input type="image" src="/images/common/btns/confirm.gif" alt="확인" />
			<input type="image" src="/images/common/btns/edit.gif" alt="수정" />
			<a href="#" onclick="history.back(); return false;"><img src="/images/common/btns/cancle.gif" alt="취소" /></a>
		</div>
		<!-- //버튼영역 (기본타입) -->
	</fieldset>
</form>

<!-- #include virtual = "/include/bottom.asp" -->
