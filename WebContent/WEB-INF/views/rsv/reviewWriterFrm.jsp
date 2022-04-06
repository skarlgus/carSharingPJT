<%@page import="car.model.vo.Car"%>
<%@page import="rsv.model.vo.Rsv"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Rsv rsv = (Rsv) request.getAttribute("rsv");
	String userId = (String) request.getAttribute("userId");
	Car car = (Car) request.getAttribute("car");
%>
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


<title>selcar | 후기 작성</title>
<style>
* {
	font-family: 'Noto Sans KR', sans-serif;
}

th {
	width: 10%;
	background-color: #e7ab63;
}

td {
	width: 40%;
}

.redBtn {
	background-color: #CC3D3D;
	color: white;
	border-radius: 30px;
	padding: 9px;
	padding-left: 11px;
	padding-right: 11px;
	text-align: center;
}

.yellowBtn {
	background-color: #fac60e;
	border-radius: 30px;
	padding: 9px;
	padding-left: 11px;
	padding-right: 11px;
	text-align: center;
}

.bold {
	font-weight: bold;
}
</style>
<script>
	function todayIs() {
		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth() + 1; // Jan is 0
		var yyyy = today.getFullYear();

		if (dd < 10) {
			dd = '0' + dd
		}
		if (mm < 10) {
			mm = '0' + mm
		}

		today = yyyy + '-' + mm + '-' + dd;
		//alert(today);
		document.getElementById("date").innerHTML = today;
		//$('#date').text(today);
	}
	window.onload = function() {
		todayIs();
	}
</script>
</head>

<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<section>
	<div style="width: 100%; height: 100%;">
		<div class="bg-light" style="height: 100%; width: 100%;">
			<div class="container">
				<br>
				<h1 class="display-4" style="padding-top: 30px;">
					<img src="/img/sohyeon/review.png" height=64px> 후기 작성 <img
						src="/img/sohyeon/review.png" height=64px>
				</h1>
				<br>
				<p>
					즐거운 렌트카 서비스 이용 되셨나요?<br> <br> 후기를 남기려는 예약의 정보가 맞는지 한번 더
					확인해 주신 후에 사용하신 차량 또는 차량 소유 회원에 대한 <span class="bold">솔직한 후기</span>를
					남겨주세요!<br> 차량 소유 회원이 <span class="bold"> 약속시간</span>을 잘 지켰는지,
					실제 차량이 등록된 정보와 사진과 <span class="bold"> 일치</span>했는지, 차량의 <span
						class="bold">상태</span>는 어땠는지 등등 <br> 차량에 매겨진 별점의 평균으로 해당 차량의
					렌트서비스가 중단될수도 있으니 신중하게 결정해주시길 바랍니다.<br> 회원님의 후기 하나하나가 모여 셀카를 더
					크게 만들어갑니다. 셀카 렌트카 서비스를 이용해주셔서 감사합니다! <br> <br> 사지말고 셀카하자!
					<span class="bold">selcar</span>

				</p>
				<br>
			</div>
		</div>

		<div class="container" style="width: 100%;">
			<div class="table-responsive"
				style="text-align: center; width: 90%; margin: 0 auto; padding-bottom: 5%; padding-top: 3%">
				<form action="/insertReview" method="post">
					<table class="table table-sm">

						<tr>
							<input type="hidden" name="rsvNo" value="<%=rsv.getRsvNo()%>">
							<input type="hidden" name="userId" value="<%=userId%>">
							<input type="hidden" name="carNo" value="<%=rsv.getCarNo()%>">
						<tr>
							<th>예약번호</th>
							<td style="text-align: left;"><%=rsv.getRsvNo()%></td>
							<th>렌트 기간</th>
							<td colspan="3" style="text-align: left;"><%=rsv.getRsvStart()%>
								~ <%=rsv.getRsvEnd()%></td>
						</tr>

						<tr>
							<th>렌트 차량</th>
							<td style="text-align: left;"><%=car.getCarNopan()%></td>
							<th>평균 평점</th>
							<td style="text-align: left;"><%=car.getCarRate()%></td>
						</tr>

						<tr>
							<th>평가</th>
							<td colspan="3" style="text-align: left;"><select
								style="width: 50px;" name="rate">
									<option value="5" selected>5</option>
									<option value="4">4</option>
									<option value="3">3</option>
									<option value="2">2</option>
									<option value="1">1</option>
									<option value="0">0</option>
							</select> 점 ( <img src="/img/sohyeon/star.png"><img
								src="/img/sohyeon/star.png"><img
								src="/img/sohyeon/star.png"><img
								src="/img/sohyeon/star.png"><img
								src="/img/sohyeon/star.png"> : 최고! <span> / </span><img
								src="/img/sohyeon/star.png"><img
								src="/img/sohyeon/star.png"><img
								src="/img/sohyeon/star.png"> : 보통! <span> / </span><img
								src="/img/sohyeon/star0.png"> : 최악! )</td>
						</tr>
						<tr>
							<th style="line-height: 130px;">사용 후기</th>
							<td colspan="3"><textarea name="reviewContent"
									class="form-control" rows="5" cols="40" style="resize: none;"
									placeholder="내용을 입력하세요" required></textarea></td>
						</tr>


					</table>
					<button type="submit" class="btn btn-sm yellowBtn">등록하기</button>
					<a href="/myRsvList?userId=<%=userId%>&reqPage=1"
						class="btn btn-sm yellowBtn">뒤로가기</a>
				</form>
			</div>
		</div>
	</section>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>


</body>

</html>