<%@page import="member.model.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   User u = (User) session.getAttribute("user");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
   src="http://code.jquery.com/jquery-3.3.1.js"></script>
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
<script src="https://kit.fontawesome.com/2d323a629b.js"
   crossorigin="anonymous"></script>
<style>
@font-face {
   font-family: NanumSquare;
   src: url("/font/NanumSquareRoundR.ttf");
}

.sub li>a {
   font-size: 15px;
}

.header {
   background: #3A3838;
   width: 100%;
   height: 85px;
}

.header>div {
   float: left;
}

.logo {
   text-align: center;
   width: 20%;
}

.loginbox {
   line-height: 50px;
   background: #3A3838;
   text-align: center;
   width: 20%;
}

.loginmenu>li {
   line-height: 30px;
   display: inline-block;
   list-style: none;
}

.loginmenu>li>a {
   font-size: 15px;
   font-family: NanumSquare;
   font-weight: bold;
   color: white;
   text-decoration: none;
}

.header a {
   text-decoration: none;
   color: #fff;
}

.header li {
   list-style: none;
}

#navi {
   margin: 0px;
   paddig: 0px;
   height: 100%;
   width: 60%;
}

#navi ul {
   margin: 0px;
   paddig: 0px;
   margin: 0 auto;
}

#navi .main>li {
   float: left;
   width: 33.3%;
   height: 100%;
   line-height: 80px;
   text-align: center;
   background: white;
   position: relative;
   background: #3A3838;
   color: #fff;
}

#navi .main>li:hover .sub {
   border-top: 4px solid #FAC60E;
   display: block;
}

#navi .main>li>a {
   font-size: 18px;
   color: #fff;
}

#navi .main>li a {
   font-weight: bold;
   font-family: NanumSquare;
   color: #fff;
   display: block;
}

#navi .main .sub {
   position: absolute;
   top: 80px;
   width: 100%;
   background: #3A3838; /* 서브메뉴 백그라운드 */
   display: none;
}

.main, .sub {
   magin: 0;
   padding: 0;
}

.navbar_toggleBtn {
   padding-top: 30px;
   display: none;
   position: absolute;
   right: 32px;
   font-size: 30px;
   color: #FAC60E;
}

@media screen and (max-width : 768px) {
   .navbar_toggleBtn {
      display: block;
   }
   .header {
      display: flex;
      flex-direction: column;
   }
   .header>div {
      display: flex;
      width: 100%;
   }
   #navi {
      width: 100%;
      display: flex;
   }
   .main {
      display: flex;
      display: none;
      align-items: center;
      width: 100%;
   }
   .loginbox {
      display: flex;
      justify-content: center;
      width: 100%;
   }
   .loginmenu {
      display: flex;
      display: none;
      justify-content: center;
      width: 100%;
   }
   .on {
      display: block;
   }
   #loginbox-1 {
      width: 80%;
   }
   .menu {
      width: 80%;
   }
   .loginbox2 {
      left: 20%;
   }
}
</style>
</head>
<body>
   <div class="header">
      <div class="logo">
         <img src="/img/main3.png" onclick="location.href='/'"
            style="cursor: pointer; width: 170px;">
      </div>
      <div id="navi">
         <ul class="main">
            <li><a href="#">서비스 소개</a>
               <ul class="sub">
                  <li><a href="/views/selcar_introduce.jsp">서비스 소개</a></li>
                  <li><a href="/views/selcar_manual.jsp">이용안내</a></li>
               </ul></li>
            <li><a href="#">차량 예약/등록</a>
               <ul class="sub">
              <%if(u==null){ %>
                              <li><a href="#" onclick="warn();">차량등록</a></li>
                              
           <%}else{ %>
           <li><a href="/mypage?userId=<%=u.getUserId()%>">차량등록</a></li>
           <%} %>
                  <li><a href="/carList">차량 예약</a></li>
               </ul></li>
            <li><a href="#">고객센터</a>
               <ul class="sub">
                  <li><a href="/noticeList?reqPage=1">공지사항</a></li>
                  <li><a href="#">1:1 문의</a></li>
                  <li><a href="/views/faq.jsp">자주찾는 질문</a></li>
               </ul></li>
         </ul>
      </div>
      <div class="loginbox">
         <ul class="loginmenu">
            <%
               if (u == null) {
            %>
            <li><a href="/views/user/login.jsp">로그인</a></li>
            <li><a href="/views/user/join.jsp">회원가입</a></li>
            <%
               } else {
            %>
            <li><a href="/mypage?userId=<%=u.getUserId()%>"><%=u.getUserId()%></a></li>
            <li><a href="/logout">로그아웃</a></li>
            <%
               }
            %>
         </ul>
      </div>
      <a href="#" class="navbar_toggleBtn"> <i class="fas fa-bars"></i>
      </a>
   </div>
   <script>
    
    function warn(){
       alert('로그인해주세요');
    }
      $(".logo").click(function() {
         location.href("/");
      })
      $(".navbar_toggleBtn").click(function() {
         $(".main").toggleClass("on");
      });
   </script>
</body>
</html>