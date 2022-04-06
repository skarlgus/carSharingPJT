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


<title>selcar | 신고</title>
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


	<div class="bg-light"
		style="height: 100%; width: 100%;">
		<div class="container">
			<br>
			<h1 class="display-4" style="padding-top: 30px;">
				<img src="/img/sohyeon/siren.png" height=64px> 차량 신고 <img
					src="/img/sohyeon/siren.png" height=64px>
			</h1>
			<br>
			<p>
				이용에 불편을 드려서 죄송합니다!<br> <br> 신고하려는 차량 소유 회원의 <span
					class="bold">아이디</span>와 <span class="bold">예약 정보</span>를 다시 한번
				확인해주시고, 정확하고 타당한 이유를 작성해주세요!<br> 신고내용은 관리자에게 전달되어 검토 후 신고된 차량의
				<span class="bold">렌트 서비스 이용 유지 / 금지</span> 와 해당 차량 소유 회원의 <span
					class="bold">회원 등급 조정 / 유지</span>가 결정됩니다.<br> 저희 <span
					class="bold">셀카</span>는 회원님들에게 항상 안전하고, 편안한 렌트 서비스를 제공하기위해
				더욱 더 노력하겠습니다! 감사합니다. <br> <br> 사지말고 셀카하자! <span
					class="bold">selcar</span>
			</p>
			<br>
		</div>
	</div>
	<div class="container" style="width: 100%;">
		<div class="table-responsive"
			style="text-align: center; width: 90%; margin: 0 auto; padding-bottom: 5%; padding-top: 3%">
			<form action="/insertReport" method="post">
				<table class="table table-sm">

					<tr>
						<input type="hidden" name="whom" value="car">
						<input type="hidden" name="rsvNo" value="<%=rsv.getRsvNo()%>">
						<input type="hidden" name="reporter" value="<%=userId%>">
						<input type="hidden" name="reportee" value="<%=car.getUserId()%>">

					</tr>

					<tr>
						<th>예약번호</th>
						<td style="text-align: left;"><%=rsv.getRsvNo()%></td>
						<th>렌트 기간</th>
						<td style="text-align: left;" colspan="3"><%=rsv.getRsvStart()%> ~ <%=rsv.getRsvEnd()%></td>
					</tr>


					<tr>
						<th>신고할 차량</th>
						<td style="text-align: left;"><%=car.getCarNopan()%></td>
						<th>평균 평점</th>
						<td style="text-align: left;"><%=car.getCarRate()%></td>
					</tr>

					<tr>
						<th>차주</th>
						<td style="text-align: left;" colspan="3"><%=car.getUserId()%></td>
					</tr>


					<tr>
						<th style="line-height: 130px;">신고 이유</th>
						<td colspan="3"><textarea name="reportContent"
								class="form-control" rows="5" cols="40" style="resize: none;"
								placeholder="내용을 입력하세요" required></textarea></td>
					</tr>
					<tr>
						<th>신고 날짜</th>
						<td style="text-align: left;"><span id="date"></span></td>
					</tr>

				</table>
			

			<button type="submit" class="btn btn-sm redBtn">신고하기</button>
			<a href="/myRsvList?userId=<%=userId%>&reqPage=1"
				class="btn btn-sm yellowBtn">뒤로가기</a>
</form>
		</div>
	</section>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>


</body>

</html>