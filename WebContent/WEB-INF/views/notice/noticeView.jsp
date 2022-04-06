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



<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

<title>공지사항 | <%=n.getNoticeTitle()%></title>
<style>
* {
	font-family: 'Noto Sans KR', sans-serif;
}

.floating {
	position: fixed;
	right: 50%;
	top: 100px;
	margin-right: -700px;
	text-align: center;
	width: 120px;
	padding-top: 15%;
	font-weight:bold;
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
	<section> <%
 	if (!(u != null && u.getUserGrade() == 0)) {
 %>

	<div class="floating">
		<img src="/img/sohyeon/phone.png"> <br> selcar <br>고객센터<br> 1588 -
		0000
	</div>
	<%
		}
	%>
	<div>


		<div class="jumbotron bg-light"
			style="height: 10%; margin: 0 auto; padding-top: 3%;">
			<div class="container">
				<h1 class="display-4" style="text-align: right;">공지사항</h1>
			</div>
		</div>
		<br>
		<div class="container" style="width: 100%;">
			<p style="text-align: right;">
				고객센터 > <a href="javascript:history.go(-1)"
					style="text-decoration: none">공지사항</a> >
				<span style="font-weight: bold;"><%=n.getNoticeTitle()%></span>
			</p>


			<div class="table-responsive"
				style="text-align: center; width: 90%; margin: 0 auto; padding-bottom: 5%; padding-top: 3%">

				<table class="table table-sm">

					<tr>
						<td colspan="2"
							style="text-align: left; padding-left: 10px; font-size: 25px; font-weight: 400;"><%=n.getNoticeTitle()%>
						</th>
					</tr>

					<tr>
						<th width=100px>작성일</th>
						<td style="text-align: left; padding-left: 10px;"><%=n.getNoticeDate()%>
						</th>
					</tr>


					<tr>
						<td class="content" colspan="2"
							style="text-align: left; padding: 30px; font-size: 15px;"><%=n.getNoticeContentBr()%></td>
					</tr>
					<tr style="text-align: center">
						<th colspan="2"><br>
							<div>
								<%
									if (u != null && u.getUserGrade() == 0) {
								%>

								<a href="/noticeUpdateFrm?noticeNo=<%=n.getNoticeNo()%>"
									class="btn btn-sm adminBtn">수정하기</a>
								<a href="/noticeDelete?noticeNo=<%=n.getNoticeNo()%>"
									class="btn btn-sm adminBtn">삭제하기</a>
								<%
									}
								%><a href="/noticeList?reqPage=1" class="btn btn-sm yellowBtn">목록으로</a>

							</div></th>
					</tr>
				</table>

			</div>
		</div>
	</section>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>

</html>