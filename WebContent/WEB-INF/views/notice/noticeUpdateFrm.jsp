<%@page import="notice.model.vo.Notice"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Notice n = (Notice) request.getAttribute("n");
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

<title><%=n.getNoticeTitle()%> | 수정</title>

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
.adminBtn {
	color: #3a3838;
	border: 2px solid #e7ab63;
	border-radius: 30px;
	padding: 7px;
	padding-left: 10px;
	padding-right: 10px;
}
</style>

</head>

<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<section>

	<div class="jumbotron bg-light"
		style="height: 10%; margin: 0 auto; padding-top: 3%;">
		<div class="container">
			<h1 class="display-4" style="text-align: right;">관리자 > 공지사항</h1>
		</div>
	</div>
	<br>
	<div class="container" style="width: 100%;">
		<p style="text-align: right;">
			관리자 > 공지사항</a> > <span style="font-weight: bold;">수정</span>
		</p>


		<div class="table-responsive"
			style="text-align: center; width: 90%; margin: 0 auto; padding-bottom: 5%; padding-top: 3%">
			<form action="/noticeUpdate" method="post">
				<table class="table table-sm">
					<input type="hidden" name="noticeNo" value="<%=n.getNoticeNo()%>">
					<tr>
						<th>제목</th>
						<th><input type="text" name="noticeTitle"
							class="form-control" value="<%=n.getNoticeTitle()%>"></th>
					</tr>

					<tr>
						<th>내용</th>
						<td><textarea name="noticeContent" class="form-control"
								rows="20" cols="40" style="resize: none;"><%=n.getNoticeContent()%></textarea></td>
					</tr>
					<tr style="text-align: center">
						<th colspan="2">
							<button type="submit" class="btn adminBtn">수정완료</button>
							<a href="/noticeList?reqPage=1" class="btn btn-sm yellowBtn"">목록으로</a>
						</th>
					</tr>
				</table>
			</form>
		</div>
	</div>
	</section>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>


</body>

</html>