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

<title>selcar | 이용안내</title>
<!-- 폰트 -->

<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&family=Poor+Story&family=Sunflower:wght@300&display=swap"
	rel="stylesheet">


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

.bold {
	font-weight: bold;
}

.darkBtn {
	background-color: #757070;
	border-radius: 30px;
	padding: 9px;
	padding-left: 11px;
	padding-right: 11px;
	text-align: center;
	color: white;
}
</style>
</head>

<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<main role="main">

	<div class="jumbotron bg-light"
		style="height: 10%; margin: 0 auto; padding-top: 3%;">
		<div class="container">
			<h1 class="display-4" style="text-align: right;">이용안내</h1>
		</div>
	</div>


	<div class="floating" style="text-align: left;">
		<img src="/img/sohyeon/right-arrow.png"><span> <a
			href="/views/selcar_introduce.jsp">selcar란?</a></span>
	</div>

	<br>
	<div class="container">
		<p style="text-align: right;">
			서비스 소개 > <span style="font-weight: bold;">이용방법 안내</span>
		</p>
		<br> <br>
		<div class="row">
			<div class="col-lg-4">
				<img width="140" height="140" src="/img/sohyeon/join.png">
				<h2>
					<span class="bold">회원가입/로그인</span>
				</h2>
				<br>
				<p>
					셀카에 가입해서 <span class="bold">셀카피플</span>이 되어보세요!<br>로그인 후 사용할 수
					있는 기능<br> <span class="bold">내 차량을 등록하여 셀카피플에게 렌트</span><br>
					<span class="bold">렌트 가능한 차량의 상세정보 조회</span>
				</p>
				<br>
				<p>
					<a class="btn darkBtn" href="/views/user/login.jsp" role="button">회원가입
						/ 로그인 &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img width="140" height="140" src="/img/sohyeon/sh_car.png">
				<h2>
					<span class="bold">차량 등록 / 검색</span>
				</h2>
				<br>
				<p>
					<span class="bold">내 차량을 빌려주고싶다면!</span><br> 원하는 날짜에 렌트해줄 수 있게
					<span class="bold">등록</span><br> <span class="bold">차량을
						빌리고싶다면!</span><br> 내가 원하는 날짜에 렌트 가능한 차량이 있나 <span class="bold">검색</span>
					<br>
				</p>
				<br>
				<p>
					<a class="btn darkBtn" href="/carList" role="button">차량 검색
						&raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img width="140" height="140" src="/img/sohyeon/sh_rsv.png">
				<h2>
					<span class="bold">렌트하기</span>
				</h2>
				<br>
				<p>
					<span class="bold">셀카피플</span>이 되면 <br>렌트하고 싶은 차량의 <span
						class="bold">상세 정보</span>를 조회 가능 <br>렌트 <span class="bold">예약</span>
					요청 가능 <br>서비스 이용 완료 후 <span class="bold">후기</span>작성 / <span
						class="bold">신고 가능</span>
				</p>
				<br>
				<p>
					<a class="btn darkBtn" href="/carList" role="button">렌트 이용
						&raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->

		<hr class="featurette-divider">


	</div>
	<!-- /.container --> </main>
	<br><br><br><br><br><br><br><br><br>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>

</html>