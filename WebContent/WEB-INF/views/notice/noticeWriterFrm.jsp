<%@page import="notice.model.vo.Notice"%>
<%@page import="java.util.ArrayList"%>
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



<title>selcar | 관리자 페이지</title>
<style>
* {
	font-family: 'Noto Sans KR', sans-serif;
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

	<div class="jumbotron bg-light"
		style="height: 10%; margin: 0 auto; padding-top: 3%;">
		<div class="container">
			<h1 class="display-4" style="text-align: right;">관리자 > <span style="font-weight: bold;">공지사항</span></h1>
		</div>
	</div>
	<br>
	<div class="container" style="width: 100%;">
		<p style="text-align: right;">
			관리자 > <a href="javascript:history.go(-1)"
				style="text-decoration: none">공지사항</a> > 글쓰기</span>
		</p>


		<div class="table-responsive"
			style="text-align: center; width: 90%; margin: 0 auto; padding-bottom: 5%; padding-top: 3%">
			<form action="/insertNotice" method="post">
				<table class="table table-sm">

					<tr>
						<th>제목</th>
						<td style="text-align:left;"><input type="text" style="width:100%; border:0.1px solid lightgray; padding-left:10px;" placeholder="제목을 입력하세요" class="form-contol" name="noticeTitle"></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td style="text-align:left;">관리자</td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea name="noticeContent" class="form-control"
								rows="20" cols="40" style="resize: none;" placeholder="내용을 입력하세요"></textarea></td>
					</tr>

					<tr style="text-align: center;">
						<th colspan="2"><button type="submit" class="btn"
								style="color: #3a3838; border: 2px solid #e7ab63; border-radius: 30px; padding: 7px; padding-left: 10px; padding-right: 10px;">등록하기</button>
							<a href="/noticeList?reqPage=1" class="btn btn-sm"
							style="background-color: #fac60e; border-radius: 30px; padding: 9px; padding-left: 11px; padding-right: 11px;">목록으로</a>
						</th>
					</tr>
					<tr>
						<th>작성일</th>
						<td style="text-align:left;"><span id="date"></span></td>
					</tr>

				</table>
			</form>
		</div>
	</div>
	</section>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>


</body>

</html>