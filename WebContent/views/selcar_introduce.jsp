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

<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gugi&family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css2?family=Archivo:ital,wght@1,600&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&family=Poor+Story&family=Sunflower:wght@300&display=swap"
	rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

<title>selcar | 서비스소개</title>

<style>
* {
	font-family: 'Noto Sans KR', sans-serif;
}

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
	top: 180px;
	margin-right: -800px;
	text-align: center;
	width: 120px;
	padding-top: 15%;
	font-weight: bold;
}

.floating a {
	text-decoration: none;
	color: #3a3838;
}

h2>span {
	font-size: 40px;
}

.bold {
	font-weight: bold;
}
</style>
</head>

<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>

	<main role="main">

	<div class="jumbotron bg-light"
		style="height: 10%; margin: 0 auto; padding-top: 3%;">
		<div class="container">
			<h1 class="display-4" style="text-align: right;">서비스 소개</h1>
		</div>
	</div>

	<div class="floating" style="text-align: left;">
		<img src="/img/sohyeon/right-arrow.png"><span> <a
			href="/views/user/join.jsp">회원가입</a></span> <br> <br> <img
			src="/img/sohyeon/right-arrow.png"><span> <a
			href="/views/user/login.jsp">로그인</a></span><br> <br> <img
			src="/img/sohyeon/right-arrow.png"><span> <a
			href="/views/selcar_manual.jsp">이용안내</a></span>
	</div>
	<br>
	<div class="container">
		<p style="text-align: right;">
			서비스 소개 > <span style="font-weight: bold;">셀카 서비스</span>
		</p>
		<div class="row featurette">
			<div>
				<br>
				<h1 class="featurette-heading">
					<img src="/img/main.png" width=15% height=15%></img> 를 소개합니다!
				</h1>
				<br>
				<h5 class="featurette-heading">
					안녕하세요! 셀카에 오신걸 환영합니다!<br> <span class="bold">selcar</span>는 자기
					자신이라는 뜻의 <span class="bold">SELF</span>와 자동차를 뜻하는 <span
						class="bold">CAR</span>를 합친 단어로 같은 지역에 내에서 <br>나의 개인 차를 빌려주고,
					나도 상대방의 개인 차를 빌려쓸 수 있도록 차량 등록, 검색, 예약 기능을 제공하는 플랫폼입니다.<br> <br>
					<span class="bold">셰어링카</span> 서비스와 <span class="bold">에어비앤비</span>
					서비스를 합친 <span class="bold">신개념 렌트카 서비스 셀카!</span> <br>이제 사지
					말고, 멀리 가지 말고 <span class="bold">우리 <span
						style="color: #fac60e">셀카</span>해요:)
					</span> <br> <br> 이런 분들에게 추천드려요!
				</h5>

			</div>
		</div>
		<br>
		<hr class="featurette-divider">
		<div class="row featurette">
			<div class="col-md-7">
				<br> <br>
				<h2 class="featurette-heading">멀리 가지 않고</h2>
				<h2 class="featurette-heading">
					우리 동네에서, <span class="bold" style="color: #fac60e;">셀카!</span>
				</h2>
				<br>
				<p class="lead">
					렌트카 서비스를 자주 이용하는 나, <br>이용할 때 마다 굉장히 만족스럽지만 딱 하나 불편한게 있다면 <br>
					바로 <span class="bold">차를 빌리러 가는 버스 안</span>에서의 30분 <br>또, 차를
					반납하고 <span class="bold">집으로 돌아오는 버스 안</span>에서의 30분!<br> 차 빌리러
					가는데 택시타기엔 <span class="bold">돈</span>이 아깝고, 버스타기엔 <span
						class="bold">시간</span>이 아깝고<br> 우리 아파트 주차장에 차가 저렇게 많은데...<br>
					이제 주차장에 세워져있는 그 차들 이제 바라만 보지 말고 셀카에서 <br>우리 동네에 렌트 가능한 차량이 있는지
					<span class="bold">검색</span>해보세요! <br>어쩌면 내가 아까 봤던 그 차도 셀카피플을
					기다리고 있을수 있어요!
				</p>
			</div>

			<div class="col-md-5"><br><br><br>
				<img width="500" height="300" src="/img/sohyeon/service3.jpg">
			</div>
		</div>


		<hr class="featurette-divider">
		<br>
		<div class="row featurette">
			<div class="col-md-7 order-md-2">
				<br> <br>
				<h2 class="featurette-heading">안쓰는 차</h2>
				<h2 class="featurette-heading">
					주차장에 세워두지말고, <span class="bold" style="color: #fac60e;">셀카!</span>
				</h2>
				<br>
				<p class="lead">
					여기 저기 운전해 다닐 생각에 설레는 마음으로 차를 뽑은지 몇 년이지만, <br> 평일엔 아침 출근길 교통체증
					피해 <span class="bold">지하철</span>로 통근,<br> 주말엔 하루종일 침대 위에서 <span
						class="bold">뒹굴뒹굴~</span><br> 주인 잘못 만나서 도로 위보다 주차장에 있는 시간이 더
					많은 소중한 내 차!<br> 이제 주차장에 세워 두지만 말고 셀카에 내 차를 <span class="bold">등록</span>해서
					차가 필요한<br> 셀카피플에게 차를 <span class="bold">빌려주세요</span>. 렌트 가능한
					날짜와 시간을 모두 지정할수 <br>있답니다! 많은 셀카피플들이 당신을 기다리고 있어요!<br>

				</p>
			</div>
			<div class="col-md-5 order-md-1">
				<img width="400" height="400" src="/img/sohyeon/service2.png">
			</div>
		</div>

		<br>
		<hr class="featurette-divider">
		<br>
		<div class="row featurette">
			<div class="col-md-7">
				<br>
				<h2 class="featurette-heading">차가 필요하긴 한데</h2>
				<h2 class="featurette-heading">
					사기엔 망설여질땐, <span class="bold" style="color: #fac60e;">셀카!</span>
				</h2>
				<br>
				<p class="lead">
					차가 필요하긴 한데 <span class="bold">없어도</span> 살 수 있지,<br> 그래도 있으면
					좋은데 <span class="bold">경제적</span>으로 여유롭진 않네,<br> 차가 먼저일까 <span
						class="bold">집</span>이 먼저일까,<br> 그렇다고 계속 <span class="bold">부모님
						차</span> 빌려탈순 없고...<br> 하루에도 수십번씩 마음이 왔다갔다 <span class="bold">고민</span>
					중이라면!<br> 일단 셀카에서 렌트 가능한 차량이 있는지 검색해보세요. <br>셀카엔 <span
						class="bold">장기렌트</span>가 가능한 차량도 많이 등록되어 있답니다! <br>셀카 서비스를
					이용해보면서 나에게 차가 꼭 필요한지 아닌지,<br> 천천히 생각해보는 시간을 가져보세요!

				</p>
			</div>
			<div class="col-md-5">
				<img width="400" height="400" src="/img/sohyeon/service1.jpg">
			</div>
		</div>

		<br>
		<hr class="featurette-divider">
		<br>


	</div>
	</main>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>

</html>