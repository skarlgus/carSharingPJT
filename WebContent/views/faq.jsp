<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v4.1.1">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

<title>selcar | 자주 찾는 질문</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.3.1.js"></script>
<!-- 폰트 -->

<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&family=Poor+Story&family=Sunflower:wght@300&display=swap"
	rel="stylesheet">


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.floating {
	position: fixed;
	right: 50%;
	top: 130px;
	margin-right: -800px;
	text-align: center;
	width: 120px;
	padding-top: 10%;
	font-weight: bold;
}

.floating a {
	text-decoration: none;
	color: #3a3838;
}

.question {
	list-decoration: none;
	color: #3a3838;
	font-weight: bold;
	padding: 10px;
	border-bottom: 0.2px solid lightgray;
}

.answer {
	background-color: #fff4cb;
	padding: 5%;
}

ul {
	list-style: none;
}

* {
	font-family: 'Noto Sans KR', sans-serif;
	margin: 0;
	padding: 0;
}
</style>
</head>

<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<main role="main">

	<div class="jumbotron bg-light"
		style="height: 10%; margin: 0 auto; padding-top: 3%;">
		<div class="container">

			<h1 class="display-4" style="text-align: right;">FAQ</h1>
			<p><h5 class="featurette-heading" style="text-align: right;">자주 찾는 질문</h5></p>
		</div>
	</div>


	<div class="floating" style="text-align: left;">
		<img src="/img/sohyeon/phone.png"> <br> selcar <br>고객센터
		<br>1588 - 0000 <br> <br> <img
			src="/img/sohyeon/right-arrow.png"> <span> <a
			href="/noticeList?reqPage=1">공지사항</a></span>
	</div>


	<div class="container" style="width: 100%;">
		<p style="text-align: right;">
			고객센터 > <span style="font-weight: bold;">FAQ</span>
		</p>
		<br>

		<div
			style="width: 60%; padding-bottom: 10%; width: 100%; margin: 0 auto; padding-bottom: 5%;"">
			<br>

			<!-- [s] question-wrap -->
			<ul class="question-wrap">
				<li class="question"><img src="/img/sohyeon/q.png" width=30px;>
					휴대폰 기기인증이 실패됩니다. 어떻게 해야하나요?

					<ul class="answer" style="display: none;">
						<li>
							<p>
								<img src="/img/sohyeon/a.png" width=30px;> <strong>휴대폰
									기기 인증이 실패 되신 경우 아래 내용을 확인 해주세요.</strong>
							</p>

							<p>
								<br /> <strong>[ 공통 ]</strong><br /> <span
									style="color: rgb(231, 76, 60);">1. L.POINT 통합 회원 중 현재
									사용하시는 휴대 번호와 회원 정보 내 기재되어 있는 휴대 번호가 동일한지 확인 해주세요!</span><br />
								(L.POINT 통합 회원의 경우 회원 정보 내 등록하신 휴대 번호가 상이 할 수 있습니다.)
							</p>

							<p>
								<span style="color: rgb(231, 76, 60);">2. APP 로그인 여부를
									확인해주세요!</span><br /> &rarr; APP 로그인 또는 로그아웃 후 재 로그인을 통해 휴대폰 기기 인증을 재
								시도 해주세요!
							</p>

							<p>
								<span style="color: rgb(231, 76, 60);">3. WI-FI 상태가 아닌
									데이터 통신 상태로 기기인증을 시도해주세요!</span><br /> &rarr; SMS 미사용 요금제의 경우 데이터를 통해
								문자가 발송됨에 따라 기기인증이 불가 할 수 있습니다.
							</p>

							<p>
								<span style="color: rgb(231, 76, 60);">4. 기기인증 메시지는 즉시 발송
									해주세요! 아래 문구 노출 시, 기기인증 재 시도가 필요합니다.</span><br /> &rarr; 오류 문구 :
								&quot;기기인증 정책에 따라 인증 실패되었습니다. 다시 시도해주세요.&quot;<br /> * 개인정보 동의
								체크 &rarr;&nbsp;하단의 &quot;메시지 보내기&quot; 버튼을 클릭 &rarr;&nbsp;메시지 팝업
								전송버튼 선택
							</p>

							<p>
								<span style="color: #c0392b;"><strong>※ 메시지 팝업
										화면 내, 전송버튼 미 선택 상태에서 일정시간 경과 시 인증 불가</strong></span>
							</p>

							<p>
								<strong>[ AOS&nbsp;]</strong>
							</p>

							<p>
								<span style="color: rgb(231, 76, 60);">1. 메시지 설정이 기본
									APP으로 되어 있는지 확인! 해주세요</span>.<br /> &rarr; 휴대폰 설정 &gt; 애플리케이션(APP)
								&gt; 위쪽 상단 &quot; &ordm;&ordm;&ordm; &quot; 클릭 &gt; 기본 앱 &gt;
								메시지 앱<br /> * 카카오톡, 페이스북 등 SNS 계정에 문자 모아보기 기능을 사용 중인 경우 기기 인증이
								불가 합니다.
							</p>

							<p>
								<span style="color: rgb(231, 76, 60);">2. 메시지 화면에서 뒤로 가기
									버튼을 눌러 셀카 APP을 접속 해주세요.</span><br /> &rarr; 메시지 화면에서 셀카 APP으로 자동 전환되지
								않는 경우, 꼭! 화면을 이탈하지 마시고 뒤로 가기 버튼을 통해 셀카 APP으로 이동해주세요.
							</p>

							<p>&nbsp;</p>

							<p>
								위 내용 확인 후 휴대폰 기기 인증 실패가 발생되시는 경우<br /> 번거로우시겠지만, 기기 인증 SMS 발송
								화면을 캡처하여 고객센터로 문의 주시면<br /> 휴대폰 기기 인증에 도움 드릴 수 있도록 하겠습니다.
							</p>
						</li>
					</ul></li>

				<li class="question"><img src="/img/sohyeon/q.png" width=30px;>
					면허 등록 방법과 기준을 알려주세요

					<ul class="answer" style="display: none;">
						<li>
							<p>
								<img src="/img/sohyeon/a.png" width=30px;> <strong><span
									style="color: rgb(22, 160, 133);">만 21세 이상 + 면허 취득 1년 경과
										시 운전면허증 등록이 가능합니다.</span></strong>
							</p>

							<p>
								APP을 통해 간편하게 사진 촬영만으로 면허등록이 가능하며<br /> 면허 인식이 불가능한 경우 면허 등록화면에서<br />
								면허지역 or 숫자를 클릭하시면<br /> 지역과, 숫자 두가지 중 선택하여 등록이 가능하고<br /> 면허번호
								기입 란에는 그 외에 10자리만 기재해주시면 됩니다.&nbsp;
							</p>

							<p>
								<u>※ 단, 면허증 재발급으로 발급일이 1년 미만인 경우 고객센터로 구비서류를 전달주시면 승인 처리가
									가능합니다.</u>
							</p>

							<p>&nbsp;</p>
						</li>
					</ul></li>

				<li class="question"><img src="/img/sohyeon/q.png" width=30px;>
					분실물이 발생했을 때에는 어떻게 해야하나요

					<ul class="answer" style="display: none;">
						<li>
							<p>
								<img src="/img/sohyeon/a.png" width=30px;> <strong>차량
									반납이 완료된 이후 10분 간 &quot;분실물 찾기&quot; 스마트키를 통해 분실물 회수가 가능합니다.</strong>
							</p>

							<p>
								<br /> <strong>- 경로 :</strong><br /> <u>APP &gt; 차량 반납
									&gt; 반납 화면 내 &quot;분실물 찾기&quot; 스마트키<br /> APP &gt; 메뉴 &gt; 예약
									확인 &gt; 과거 내역 &gt; 상세 내역 &gt; &quot;분실물 찾기&quot; 스마트키
								</u>
							</p>

							<p>
								*&nbsp; 회원 상태가 미납/사고/부정 사용등으로 정지인 경우 분실물 찾기 스마트키 이용이 불가 합니다.
								(고객센터 연락 후 진행 필요)<br /> *&nbsp; 10분이 경과되어 분실물 찾기 스마트키 비활성화 된 경우
								직접 차량 예약 후 분실물을 회수 해주세요(예약 취소/환불 불가)<br /> *&nbsp; 셀카존 방문하여 분실물
								회수가 어려우신 경우 고객센터로 연락주시면 물품회수에 도움 드리겠습니다. (단, 발생 실비 청구)
							</p>

							<p>
								<br /> 이전 사용자의 분실물 습득 및 회수 시<br /> 분실물 크기의 따라 [보조석 서랍] or
								[트렁크] 에 보관 후<br /> 고객센터 or 1:1문의 게시판에 전달 주시길 바랍니다.
							</p>

							<p>
								<br /> <span style="color: rgb(255, 0, 0);">[주의]<br />
									셀카에서는 발생되는 분실 물품의 배상 책임이 없습니다.
								</span>
							</p>
						</li>
					</ul></li>

				<li class="question"><img src="/img/sohyeon/q.png" width=30px;>
					차량에 주유는 어떻게 해야 하나요

					<ul class="answer" style="display: none;">
						<li>
							<p>
								<img src="/img/sohyeon/a.png" width=30px;> <span
									style="color: rgb(255, 0, 0);"><strong>셀카는 차량 내
										배치된 주유카드로 주유를 진행하고 있습니다.</strong></span><br /> <u><span
									style="background-color: rgb(255, 255, 0);">주유카드는 운전석
										대쉬보드 왼쪽에 위치</span></u>하고 있습니다.
							</p>

							<p>
								주유카드 사용 후에는 반드시<br /> 원래 위치로 삽입하여 주시기 바라며 분실/파손 시 별도의<br />
								페널티+발생 실비가 부과될 수 있는 점 참고 부탁 드립니다.
							</p>

							<p>
								반드시 회사에서 지정한 차량에<br /> 배치된 주유카드를 통해 결제되어야 하며<br /> 다른 차량의 주유,
								기타 비용을 결제 할 수 없습니다.
							</p>

							<p>
								부득이한 사정으로 셀카에 배치된 주유카드를 이용하지 못할 경우,<br /> 주유 전 반드시 고객센터로 연락하여
								회사측에 허가를 받아야 합니다.
							</p>

							<p>
								<span style="color: rgb(0, 128, 0);">회원 개인 카드/현금으로 결제된
									주유비는 영수증 없는 경우 또는 결제 후 3개월이 초과한 경우 환불이 불가능 합니다.</span>
							</p>
						</li>


					</ul></li>
				<li class="question"><img src="/img/sohyeon/q.png" width=30px;>
					셀카 요금 적용, 결제 기준을 알려주세요
					<ul class="answer" style="display: none;">
						<li>
							<p>
								<img src="/img/sohyeon/a.png" width=30px;> <strong>[셀카
									요금 기준]</strong>
							</p>

							<p>
								* 주중 - 일요일 19:00 ~ 금요일 18:50<br /> * 주말 - 금요일 19:00 ~ 일요일 18:50<br />
								* 공휴일 - 00:00 ~ 23:50 (주말 요금 적용)<br /> * 심야 할인 적용 시간 - 00:00 ~
								06:50 (월~금 기준, 주말/공휴일제외)
							</p>

							<p>
								대여 시작 시간을 기준으로 심야 시간대가<br /> 포함된 만큼 50% 할인이 적용(보험료제외)됩니다.<br />
								(예 : 주말/공휴일 대여시작 &gt; 평일 심야 시간은 주말 요금으로 적용)
							</p>

							<p>
								<br /> [결제 항목]
							</p>

							<p>
								1. 대여/선택형 면책 보험요금 : 예약 즉시 결제<br /> 2. 연장요금 :&nbsp; 운행 중 연장신청 시
								즉시 결제 (결제 실패 시 연장불가)<br /> 3. 주행요금 :&nbsp; 반납 후 3시간 이내 주행요금 결제<br />
								4. 하이패스 :&nbsp; 사용일로 부터 2~3일_영업시간 기준 (영업일 기준으로 하이패스 부과 일시의 따라 2주
								이상 소요 될 수 있음)<br /> 5. 주차요금 :&nbsp; 하이패스_PAY로 결제한 주차비, 사용일로 부터
								2~3일((영업일 기준으로 하이패스_PAY 부과 일시의 따라 2주 이상 소요 될 수 있음)
							</p>

							<p>
								<br /> 한도 부족, 사용불가 카드 등으로<br /> 결제 실패 시 예약하신 대여 건은 자동으로 취소되오니<br />
								사전에 카드상태 확인 부탁 드립니다.
							</p>

							<p>&nbsp;</p>

							<p>&nbsp;</p>
						</li>


					</ul></li>
				<li class="question"><img src="/img/sohyeon/q.png" width=30px;>
					사고 접수 과정을 알려 주세요
					<ul class="answer" style="display: none;">
						<li>
							<p>
								<img src="/img/sohyeon/a.png" width=30px;> <strong><span
									style="color: rgb(192, 57, 43);">사고 발생 즉시
										고객센터(080-2000-3000)로 사고 접수를 진행 해주세요.</span><br /> <span
									style="color: rgb(41, 128, 185);">&nbsp;▶&nbsp;<u>2020년
											7월 3일(금) 이 후, 사고상담센터(080-2000-1000)로 접수 요청</u></span></strong>
							</p>

							<p>
								<br /> 차량 및 기타 파손된 시설물이 있는 경우<br /> 소유자 연락처와 차량 번호를 확인 해주시고<br />
								차량,기물 파손 사진은 꼭 촬영 후 아래 경로를 통해 등록 부탁 드립니다.
							</p>

							<p>
								<br /> * APP &gt; 고객센터&nbsp; &gt; 사고접수 센터 &gt; 사고차량 선택, 하기 내용기입<br />
								&nbsp;* 사고일시<br /> &nbsp;* 사고경위<br /> &nbsp;* 사고사진<br />
								&nbsp;<br /> 사고 발생 후 차량 운행은 안전을 위해 불가하며,<br /> 견인 처리 또는 셀카존으로
								반납 해주셔야 합니다.<br /> 사고 발생 시점부터 종료까지 회원 상태는 일시정지로<br /> 변경되며 차량
								예약 및 이용이 불가능합니다. (사전예약 자동취소)
							</p>

							<p>
								만약 사고 발생 후 고객센터 사고 신고 없이<br /> 상대방과 합의하시거나 현장을 떠나신 경우&nbsp;<br />
								사고 면책 적용 및 상대방에 대한<br /> 보험 접수는 어려울 수 있으니 유의해 주시기 바랍니다.
							</p>
						</li>


					</ul></li>
				<li class="question"><img src="/img/sohyeon/q.png" width=30px;>
					조기 반납 포인트에 대해 알려주세요
					<ul class="answer" style="display: none;">
						<li>
							<p>
								<img src="/img/sohyeon/a.png" width=30px;> 1. 혜택 적용 기간<br />
								&nbsp;*&nbsp; 2015년 10월 16일 ~ 별도 종료 공지 전까지
							</p>

							<p>
								<strong><span style="color: rgb(231, 76, 60);">2.
										조기반납 환급 조건</span></strong><br /> <span style="color: rgb(231, 76, 60);">&nbsp;*&nbsp;
									쿠폰 사용 &amp; 특가 상품 제외<br /> &nbsp;*&nbsp; 대여예정 시각 기준 10분 이상 실
									운행<br /> &nbsp;*&nbsp; 반납예정 시간과 실제 반납시간의 차이가 1시간 초과인 대여 건<br />
									&nbsp;*&nbsp; 결제 대여요금의 대해 차액 만큼 포인트 지급
								</span>
							</p>

							<p>
								※ 유의사항 ※<br /> <u>&nbsp;*&nbsp;&nbsp;반납연장 시간도 포인트 지급 대상에
									포함(쿠폰사용/특가상품제외)<br /> &nbsp;*&nbsp; 대여시작 후 10분 ~ 30분 이내에 반납하시는
									경우 실제 이용시간은 30분으로 기록됩니다. (최소 예약시간 반영)<br /> &nbsp;*&nbsp; 10시간
									이상 이용 후 최대 24시간까지&nbsp;남은 대여시간은 환급대상에 포함되지 않습니다.
								</u>
							</p>

							<p>*&nbsp; 계약 법인은 대상에 포함되지 않습니다.</p>

							<p>
								3. 포인트 적립 방식<br /> &nbsp;*&nbsp; 실이용 대여요금 기준 (하기 예시 참고)<br />
								&nbsp;- 조기반납한 시간만큼의 대여요금을 포인트로 적립<br /> &nbsp;- 포인트 적립금액 = 대여요금
								- 실이용 대여요금(최소 대여기간 30분)
							</p>

							<p>4. 포인트 유효기간 : 1개월</p>

							<p>5. 포인트 적립시점 : 반납 후 30분 이내 적립</p>

							<p>
								조기반납과 관련한 내용은<br /> 홈페이지(<a href="https://goo.gl/oNxlgT">https://goo.gl/oNxlgT</a>)에서도
								확인하실 수 있습니다.
							</p>
						</li>


					</ul></li>



				<li class="question"><img src="/img/sohyeon/q.png" width=30px;>
					셀카 등급 산정 조건은 무엇인가요?
					<ul class="answer" style="display: none;">
						<li>
							<p>
								<img src="/img/sohyeon/a.png" width=30px;>등급 산정 기준은 아래와
								같습니다.
							</p>

							<p>
								- 산정 기간 : 19년 10월,11월,12월 3개월<br /> - 산정 금액 : 셀카
								이용금액(대여,보험,주행,하이패스.편도요금)<br /> - 등급 산정 기준<br /> &nbsp;Friend :
								5만원 미만<br /> &nbsp;Family : 5만원 이상<br /> &nbsp;Hero : 15만원 이상<br />
								&nbsp;Master : 25만원 이상
							</p>

							<p>
								* 등급 산정 금액은 쿠폰/포인트 제외 입니다.<br /> * 기간은 대여 반납일 기준으로 기간에 10월이 포함된
								경우 다음 분기에 반영 됩니다.<br /> * 법인 계정은 등급 및 혜택 대상에서 제외 됩니다.
							</p>
						</li>
					</ul></li>


				<li class="question"><img src="/img/sohyeon/q.png" width=30px;>
					셀카 등급 혜택은 무엇 인가요?
					<ul class="answer" style="display: none;">
						<li>
							<p>
								<img src="/img/sohyeon/a.png" width=30px;>등급별 이벤트 혜택은 아래와
								같습니다.
							</p>

							<p>
								1. 스탬프 적립 + 랜덤박스 오픈 (셀카포인트 지급)<br /> 2. Hero/Master 전용 쿠폰 지급<br />
								3. 100KM 이상 주행 시 리워드 셀카포인트 지급
							</p>

							<p>
								<strong>[등급별 혜택]</strong><br /> - Friend : 1회 대여 시 스탬프 1개<br />
								- Family : 1회 대여 시 스탬프 2개 / 주행거리 20배 포인트 지급<br /> - Hero : 1회
								대여 시 스탬프 3개 + 랜덤박스 오픈 / 주행거리 30배 포인트 지급 / 주중 4시간 50% 할인 쿠폰 1매 지급<br />
								- Master : 1회 대여 시 스탬프 3개 + 랜덤박스 오픈 + 랜덤박스 포인트 50% 추가 지급 / 주행거리
								40배 포인트 지급 / 주중 4시간 50% 할인 쿠폰 1매 지급 / 주중 24시간 50% 할인 쿠폰 1매 지급
							</p>

							<p>
								* 무료편도 건은 스탬프 적립이 불가 합니다.<br /> * 스탬프 적립은 이벤트 페이지 &quot;내 등급 및
								혜택 확인하러가기&quot; 버튼을 클릭하여 진행 가능합니다.<br /> * 스탬프 적립은 대여 후 반납까지
								완료된 경우 가능합니다.<br /> * 이벤트 종료시까지 스탬프 적립이 가능합니다.<br /> * 스탬프 적립
								포인트의 유효기간은 지급 시점부터 3개월 입니다.
							</p>
						</li>


					</ul></li>


			</ul>
			<!-- [e] question-wrap -->
		</div>
	</div>

	</main>
	<br><br><br><br><br><br><br><br><br>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
<script>
	$(function() {

		$(".question").click(function() {
			$(this).children('.answer').slideToggle(1000);
		});

	});
</script>
</html>