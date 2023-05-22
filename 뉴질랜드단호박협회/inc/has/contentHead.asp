<%

If ( pageNum = 3 And subNum01 = 1 ) or ( pageNum = 4 And subNum01 = 3 ) Then
	stImg = "st_0"& subNum01 &"_0"& subNum02 &".gif"
	stImgMt = "st_0"& subNum01 &"_0"& subNum02 &"_mt.gif"
Else
	stImg = "st_0"& subNum01 &".gif"
	stImgMt = "st_0"& subNum01 &"_mt.gif"
End if

If pageNum = 1 Then ' ====================== 뉴질랜드 단호박협회

	pageDir = "assoc"

	If subNum01 = 1 Then '협회소개
		stImgAlt = "협회 소개"
		stImgMtAlt = "신선하고 맛있는 뉴질랜드 단호박을 국내에 소개해드리기 위해 힘쓰고 있는 뉴질랜드 단호박 협회를 소개합니다."

	Elseif subNum01 = 2 Then '문의하기
		stImgAlt = "문의하기"
		stImgMtAlt = "궁금하신 사항이 있으세요? 무엇이든 문의하세요. 친절하고 빠르게 답변 드리도록 하겠습니다."

	End if


Elseif pageNum = 2 Then ' ====================== 단호박 소개

	pageDir = "intro"

	If subNum01 = 1 Then '단호박
		stImgAlt = "단호박"
		stImgMtAlt = "맛도 좋고 영양도 풍부한 단호박에 대해서 알아보세요!"

	Elseif subNum01 = 2 Then '단호박 영양
		stImgAlt = "단호박 영양"
		stImgMtAlt = "우리 몸을 건강하게 해주는 단호박의 영양에 대해서 알아보세요!"

	Elseif subNum01 = 3 Then '다이어트/체중관리를위한단호박
		stImgAlt = "다이어트/체중관리를 위한 단호박"
		stImgMtAlt = "다이어트, 체중관리에 좋은 단호박을 소개합니다!"

	Elseif subNum01 = 4 Then '우리아이영양관리/성장관리 …
		stImgAlt = "우리아이 영양관리/성장관리를 위한 단호박"
		stImgMtAlt = "우리아이의 영양관리, 성장관리를 고민하신다면 단호박을 준비하세요!"

	Elseif subNum01 = 5 Then '성인들의건강관리를위한단호박
		stImgAlt = "성인들의 건강관리를 위한 단호박"
		stImgMtAlt = "성인들의 건강관리에 빼놓을 수 없는 식품 단호박을 만나보세요!"

	Elseif subNum01 = 6 Then '뉴질랜드 단호박
		stImgAlt = "뉴질랜드 단호박"
		stImgMtAlt = "가장 좋은 환경에서 자란 맛 좋고 신선한 Fresh 뉴질랜드 단호박을 소개합니다!"

	End if


Elseif pageNum = 3 Then ' ====================== 단호박 요리

	pageDir = "cook"

	If subNum01 = 1 Then '블로거 요리법

		If subNum02 = 1 Then '갱씨의 요리법
			stImgAlt = "갱씨의 요리법"
			stImgMtAlt = "파워 블로거 갱씨의 체중관리를 위한 단호박 요리법을 만나보세요!"
			evtImg = "event_02.gif"
			evtImgAlt = "갱씨의 요리법에 한 줄 덧글을 남겨주신 분 중 매 월 2분을 추첨해 영화예매권 2매를 드립니다."

		Elseif subNum02 = 2 Then '잠꾸러기의 요리법
			stImgAlt = "잠꾸러기의 요리법"
			stImgMtAlt = "파워 블로거 잠꾸러기의 우리가족 건강을 위한 단호박 요리법을 만나보세요!"
			evtImg = "event_03.gif"
			evtImgAlt = "잠꾸러기의 요리법에 한 줄 덧글을 남겨주신 분 중 매 월 2분을 추첨해 영화예매권 2매를 드립니다."
		
		End if

	Elseif subNum01 = 2 Then '추천 기본요리법
		stImgAlt = "추천 기본 요리법"
		stImgMtAlt = "단호박 기본 요리법 알고 계신가요? 기본 요리법을 추천해 드립니다!"

	Elseif subNum01 = 3 Then '단호박 고르는 법
		stImgAlt = "단호박 고르는 법"
		stImgMtAlt = "신선하고 맛있는 단호박을 고르는 법을 소개해 드립니다!"

	Elseif subNum01 = 4 Then '단호박 보관 법
		stImgAlt = "단호박 보관 법"
		stImgMtAlt = "맛있는 단호박을 신선하게 보관하려면 어떻게 해야 할까요? 지금 알아보세요!"

	Elseif subNum01 = 5 Then '단호박 기본 요리팁
		stImgAlt = "단호박 기본 요리팁"
		stImgMtAlt = "단호박 기본 손질법 및 기본 요리팁을 알려드립니다!"

	End if


Elseif pageNum = 4 Then ' ====================== 단호박 매니아

	pageDir = "mania"

	If subNum01 = 1 Then '한줄토크
		stImgAlt = "한 줄 토크"
		stImgMtAlt = "단호박 매니아라면 어서 어서 모이세요! 지금 한줄 토크가 진행중 입니다!"
		evtImg = "event_01.gif"
		evtImgAlt = "한 줄 토크 글을 올리신 분 중 매 월 5분을 추첨해 영화예매권 2매를 드립니다."

	Elseif subNum01 = 2 Then '추천! 단호박이 맛있는 집
		stImgAlt = "추천! 단호박이 맛있는 집"
		stImgMtAlt = "단호박 매니아라면 꼭 방문해봐야 할 파워 블로거 김가가 추천하는 단호박 맛집!"
		evtImg = "event_04.gif"
		evtImgAlt = "맛 집 소개 글에 한 줄 덧글을 남겨주신 분 중 매 월 2분을 추첨해 영화예매권 2매를 드립니다."

	Elseif subNum01 = 3 Then '단호박 쿠킹 클래스

		If subNum02 = 1 Then '쿠킹클래스 신청하기
			stImgAlt = "쿠킹 클래스 신청하기"
			stImgMtAlt = "단호박 매니아를 위한 특별한 초대! 단호박 쿠킹 클래스 지금 신청하세요!"

		Elseif subNum02 = 2 Then '쿠킹클래스 후기
			stImgAlt = "쿠킹 클래스 후기"
			stImgMtAlt = "단호박 쿠킹 클래스 즐거우셨나요? 그 생생한 현장을 후기로 만나보세요!"
			evtImg = "event_05.gif"
			evtImgAlt = "각 쿠킹 클래스마다 생생한 후기를 올리신 분 중 2분을 추첨해 영화예매권 2매를 드립니다."

		End if

	End if


Elseif pageNum = 5 Then ' ====================== 뉴스/이벤트

	pageDir = "news"

	If subNum01 = 1 Then '이벤트
		stImgAlt = "이벤트"
		stImgMtAlt = "회원 여러분을 위한 다양한 이벤트가 늘 진행되고 있습니다. 이벤트에 참여하시고 선물도 받으세요!"

	Elseif subNum01 = 2 Then '공지사항
		stImgAlt = "공지사항"
		stImgMtAlt = "안녕하세요! 회원 여러분께 새로운 소식을 안내해 드립니다."

	Elseif subNum01 = 3 Then '보도자료
		stImgAlt = "보도자료"
		stImgMtAlt = "각종 매체에 보도된 단호박 관련 기사들과 뉴질랜드 단호박 협회에서 준비한 보도자료를 소개해 드립니다."

	End if


Elseif pageNum = 6 Then ' ====================== 업계회원코너

	pageDir = "bnss"

	If subNum01 = 1 Then '공지사항
		stImgAlt = "공지사항"
		stImgMtAlt = "안녕하세요. 뉴질랜드 단호박을 수입, 판매 하는 업계회원 여러분들을 위한 공지사항 입니다."

	Elseif subNum01 = 2 Then '뉴질랜드 단호박 뉴스
		stImgAlt = "뉴질랜드 단호박 뉴스"
		stImgMtAlt = "업계회원 분들을 위해 뉴질랜드 단호박 시장에 대한 뉴스를 전해 드립니다."

	Elseif subNum01 = 3 Then '통계자료
		stImgAlt = "통계자료"
		stImgMtAlt = "업계회원 분들을 위해 뉴질랜드 단호박 관련 다양한 통계자료를 제공합니다."

	End if


Elseif pageNum = 7 Then ' ====================== 멤버쉽

	pageDir = "member"

	If subNum01 = 1 Then '로그인
		stImgAlt = "로그인"
		stImgMtAlt = "안녕하세요. 뉴질랜드 단호박 협회 웹사이트 방문을 환영합니다!"

	Elseif subNum01 = 2 Then '아이디/비밀번호찾기
		stImgAlt = "아이디/비밀번호 찾기"
		stImgMtAlt = "안녕하세요. 회원님. 아이디/비밀번호를 잊으셨나요? 아래 사항을 입력해주세요."

	Elseif subNum01 = 3 Then '회원가입
		stImgAlt = "회원가입"
		stImgMtAlt = "안녕하세요. 회원이 되시면 다양한 혜택을 만나보실 수 있습니다."

	Elseif subNum01 = 4 Then '회원정보수정
		stImgAlt = "회원정보 변경"
		stImgMtAlt = "다양한 혜택을 놓치지 않도록 최신 정보를 유지해주세요."

	Elseif subNum01 = 5 Then '회원탈퇴
		stImgAlt = "회원탈퇴"
		stImgMtAlt = "뉴질랜드 단호박에 관심과 애정을 가져 주셨던 회원님께 감사의 말씀을 드립니다."

	End if


Elseif pageNum = 8 Then ' ====================== 기타

	pageDir = "etc"

	If subNum01 = 1 Then '사이트맵
		stImgAlt = "사이트맵"
		stImgMtAlt = "뉴질랜드 단호박 협회 웹사이트를 한 눈에 보실 수 있는 사이트맵입니다."

	Elseif subNum01 = 2 Then '이용약관
		stImgAlt = "이용약관"
		stImgMtAlt = "뉴질랜드 단호박 협회 회원 이용약관 입니다."

	Elseif subNum01 = 3 Then '개인정보취급방침
		stImgAlt = "개인정보취급방침"
		stImgMtAlt = "뉴질랜드 단호박 협회 개인정보취급방침 입니다."

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
