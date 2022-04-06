<%@page import="rsv.model.vo.Rsv"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ArrayList<Rsv> list = (ArrayList<Rsv>) request.getAttribute("list");
	String pageNavi = (String) request.getAttribute("pageNavi");
	String userId = (String) request.getAttribute("userId");
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

<title>selcar | 나의 예약</title>

<style>
* {
	font-family: 'Noto Sans KR', sans-serif;
}

.redBtn {
	background-color: #CC3D3D;
	color: white;
	border-radius: 30px;
	padding: 5px;
	padding-left: 11px;
	padding-right: 11px;
	text-align: center;
}

.yellowBtn {
	background-color: #fac60e;
	border-radius: 30px;
	padding: 5px;
	padding-left: 11px;
	padding-right: 11px;
	text-align: center;
}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<section>

	<div>

		<div class="jumbotron bg-light"
			style="height: 10%; margin: 0 auto; padding-top: 3%;">
			<div class="container">
				<h1 class="display-4" style="text-align: right;">나의 예약리스트</h1>

			</div>
		</div>


		<div class="container" style="width: 100%; padding-bottom: 30%;">
			<p style="text-align: right;">
				마이페이지 > <span style="font-weight: bold;"> 나의 예약 리스트</span>
			</p>

			<div class="table-responsive"
				style="text-align: center; width: 100%; margin: 0 auto; padding-bottom: 5%;">

				<br>
				<table class="table table-striped table-lg noticeList">
					<thead>
						<tr>
							<th>차량 등록 번호</th>
							<th>예약일</th>
							<th>렌트 시작일</th>
							<th>렌트 종료일</th>
							<th>가격</th>
							<th>진행상태</th>
							<th>처리</th>
						</tr>
					</thead>
					<tbody>

						<%
							for (Rsv r : list) {
						%>

						<tr>

							<td><%=r.getCarNo()%></td>
							<td><%=r.getRsvDate()%></td>
							<td><%=r.getRsvStart()%></td>
							<td><%=r.getRsvEnd()%></td>
							<td><%=r.getRsvPrice()%></td>
							<td>
								<%
									if (r.getRsvStatus() == 1) {
								%> <span>예약요청</span> <%
 	} else if (r.getRsvStatus() == 20) {
 %> <span>렌트수락</span> <%
 	} else if (r.getRsvStatus() == 21) {
 %> <span>렌트거절</span> <%
 	} else if (r.getRsvStatus() == 22) {
 %> <span>결제완료</span> <%
 	} else if (r.getRsvStatus() == 3) {
 %> <span>렌트중</span> <%
 	} else if (r.getRsvStatus() == 4) {
 %> <span>반납확인요청</span> <%
 	} else if (r.getRsvStatus() == 5) {
 %> <span>반납완료</span> <%
 	} else if (r.getRsvStatus() == 6) {
 %> <span><a href="/carDetailView?carNo=<%=r.getCarNo()%>">후기작성완료</a></span>
								<%
									} else if (r.getRsvStatus() == 70) {
								%> <span>신고완료</span> <%
 	} else if (r.getRsvStatus() == 71) {
 %> <span>신고당함</span> <%
 	} else if (r.getRsvStatus() == 0 || r.getRsvStatus() == -1) {
 %> <span>예약취소</span> <%
 	}
 %>
							</td>
							<td>
								<%
									if (r.getRsvStatus() == 1) {
								%><a href="/changeRsvStatus?status=0&rsvNo=<%=r.getRsvNo()%>"
								class="btn btn-sm redBtn">예약취소</a> <%
 	} else if (r.getRsvStatus() == 20) {
 %> <a href="/payFrm?rsvNo=<%=r.getRsvNo()%>&userId=<%=userId%>"
								class="btn btn-sm yellowBtn">결제하기</a><a
								href="/changeRsvStatus?status=0&rsvNo=<%=r.getRsvNo()%>"
								class="btn btn-sm redBtn">예약취소</a> <%
 	} else if (r.getRsvStatus() == 22) {
 %> <a href="/changeRsvStatus?status=3&rsvNo=<%=r.getRsvNo()%>"
								class="btn btn-sm yellowBtn">렌트시작</a> <%
 	} else if (r.getRsvStatus() == 3) {
 %> <a href="/changeRsvStatus?status=4&rsvNo=<%=r.getRsvNo()%>"
								class="btn btn-sm yellowBtn">반납하기</a> <%
 	} else if (r.getRsvStatus() == 5) {
 %><a href="/reportFrm?rsvNo=<%=r.getRsvNo()%>&reporter=<%=userId%>"
								class="btn btn-sm redBtn">신고</a> <a
								href="/reviewWriterFrm?rsvNo=<%=r.getRsvNo()%>&userId=<%=userId%>"
								class="btn btn-sm yellowBtn">후기작성</a> <%
 	} else if (r.getRsvStatus() == 71) {
 %><a href="/reportFrm?rsvNo=<%=r.getRsvNo()%>&reporter=<%=userId%>"
								class="btn btn-sm redBtn">신고</a> <%
 	}
 %>


							</td>
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
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>

</html>