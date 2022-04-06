<%@page import="notice.model.vo.Notice"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ArrayList<Notice> list = (ArrayList<Notice>) request.getAttribute("list");
	String pageNavi = (String) request.getAttribute("pageNavi");
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

<title>selcar | 공지사항</title>
<style>
* {
	font-family: 'Noto Sans KR', sans-serif;
}

#pageNavi>* {
	margin: 10px;
}

.selectPage {
	font-size: 14px;
	border-radius: 30px;
	padding: 5px;
	padding-right: 10px;
	padding-left: 10px;
	background-color: #fac60e;
}

.floating {
	position: fixed;
	right: 50%;
	top: 100px;
	margin-right: -700px;
	text-align: center;
	width: 120px;
	padding-top: 15%;
	font-weight: bold;
}

.floating a {
	text-decoration: none;
	color: #3a3838;
}

.noticeList a {
	text-decoration: none;
	color: #3a3838;
}

.table-striped>tbody>tr:nth-child(2n+1)>td {
	background-color: #F6F6F6;
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

	<div class="floating"">
		<img src="/img/sohyeon/phone.png"> <br> selcar <br>고객센터
		<br>1588 - 0000<br> <br> <img
			src="/img/sohyeon/right-arrow.png"> <span> <a
			href="/views/faq.jsp">FAQ</a></span>
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


		<div class="container" style="width: 100%;">
			<p style="text-align: right;">
				고객센터 > <span style="font-weight: bold;">공지사항</span>
			</p>

			<div class="table-responsive"
				style="text-align: center; width: 100%; margin: 0 auto; padding-bottom: 5%;">
				<%
					if (u != null && u.getUserGrade() == 0) {
				%>
				<div style="text-align: left;">
					<a href="/noticeWriterFrm" class="btn btn-sm adminBtn">글쓰기</a>

				</div>
				<%
					}
				%>
				<br>
				<table class="table table-striped table-sm noticeList">
					<thead>
						<tr>
							<th style="text-align: center;">글 번호</th>
							<th style="text-align: center;">제목</th>
							<th style="text-align: center;">작성자</th>
							<th style="text-align: center;">작성일</th>
						</tr>
					</thead>
					<tbody>
						<%
							for (Notice n : list) {
						%>
						<tr>
							<td style="text-align: center;"><%=n.getrNum()%></td>
							<td style="text-align: left;"><a
								href="/noticeView?noticeNo=<%=n.getNoticeNo()%>"><%=n.getNoticeTitle()%></a></td>
							<td>관리자</td>
							<td style="text-align: center;"><%=n.getNoticeDate()%></td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
				<div id="pageNavi"><%=pageNavi%></div>

			</div>
		</div>
	</section>
	<br><br><br><br><br><br>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>

</html>