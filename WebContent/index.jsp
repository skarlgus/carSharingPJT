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
<title>selcar | 셀카에 오신걸 환영합니다!</title>
<script type="text/javascript"
   src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script src="/js/video.js"></script>
<script src="/js/bigvideo.js"></script>
<script src="/js/imagesloaded.pkgd.min.js"></script>
<script src="/js/modernizr-custom.js"></script>
<script src="https://kit.fontawesome.com/2d323a629b.js" crossorigin="anonymous"></script>
<style>
.wrapper {
   width : 100vw;
   height: 100vh;
}

body {
   margin: 0;
   padding: 0;
}

video {
   position: fixed;
   top: 0;
   left: 0;
   min-width: 100%;
   min-height: 100%;
   width: auto;
   height: 100%;
   z-index: -1;
}
</style>
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
<style>
@font-face {
   font-family: NanumSquare;
   src: url("/font/NanumSquareRoundR.ttf");
}

.header {
   background: transparent;
   width: 100%;
   height: 10%;
}

.header>div {
   float: left;
}

.logo {
   text-align: center;
   width: 20%;
}

.loginbox {
   text-align: center;
   width: 20%;
}

.loginmenu>li {
   line-height: 50px;
   display: inline-block;
   list-style: none;
}

.loginmenu>li>a {
   font-family: NanumSquare;
   font-weight: bold;
   color: rgba(255, 255, 255, 0.85);
   text-decoration: none;
}

a {
   text-decoration: none;
   color: black;
}

li {
   list-style: none;
}

#navi {
   height: 100%;
   width: 60%;
}

#navi ul {
   margin: 0 auto;
}

#navi .main>li {
   float: left;
   width: 33.3%;
   height: 100%;
   line-height: 80px;
   text-align: center;
   background: transparent;
   position: relative;
}

#navi .main>li:hover .sub {
   border-top: 4px solid #FAC60E;
   display: block;
}

#navi .main>li>a {
   font-size: 17px;
}

#navi .main>li a {
   font-weight: bold;
   font-family: NanumSquare;
   color: rgba(255, 255, 255, 0.85);
   display: block;
}

#navi .main .sub {
   position: absolute;
   top: 80px;
   width: 100%;
   background: transparent;
   display: none;
}

.sub {
   magin: 0;
   padding: 0;
}

.directR {
   width: 400px;
   height: 150px;
   margin-top: 650px;
   margin-left: 1450px;
}

.directR a {
   color: #fff;
   font-size: 4em;
}
.loginbox2{
   /* position : absolute;
   top : 25%;
   left : 40%;
   transform : trnaslate(-50%,-50%);
   width : 500px;
   height : 500px; */
   width : 520px;
   margin: 0 auto;
   margin-top : 10px;

}
#loginbox-1{
   text-align : center;
}
#logintbl{
   width : 80%;
   text-align : center;
   margin : 50px;
}
input{
   font-size : 20px;
   color : white;
   border-top : none;
   border-left : none;
   border-right : none;
   background : transparent;
   width : 100%;
   height : 50px;
}
button{
   border:1px solid #3a3838;
   color : white;
   /* background : linear-gradient(to right,#EB70C8,#F3F781); */
   background-color:rgba(250,198,14,0.4);
   border-radius : 30px;
   font-family: NanumSquare; 
   font-size : 23px;
   text-align : center;
   width : 80%;
   height : 50px;
}
input::placeholder {
   font-size : 15px;
   color: white;
}
.menu>li{
      width : 100px;
      display : inline-block;
      list-style : none;
   }
   .menu>li>a{
      color : white;
      text-align : center;
      text-decoration : none;
   }
   .menu{
      padding : 0px;
   }
   .list{
      margin : 0 auto;
      text-align : center;
   }
   #btn1{
      font-size : 15px;
      height : 30px;
      width : 60%;
   }
   h2{
      color : white;
   }
   #btn1>a{
      color : white;
   }
   .snswrap{
        width : 300px;
        height: 100px;
        margin:0 auto;
        margin-top : 30px;
        /* margin-left:1800px; */
        text-align:center;       
   }
   .sns{
        width:calc(100%/3);
        height:100%;
        float:left;
        box-sizing : border-box;     
   }
   .navbar_toggleBtn{
         padding-top : 30px;
            display: none;
            position: absolute;
            right : 32px;
            font-size: 30px;
            color : #FAC60E;
    }
    @media screen and (max-width : 768px){
      .navbar_toggleBtn{
           display: block;
        }
        .header{
           display : flex;
           flex-direction : column;
        }
        .header>div{
           display : flex;
           width : 100%;
        }
        #navi{
           width : 100%;
           display : flex;
        }
        .main{
           display : flex;
           display : none;
            align-items : center;
            width : 100%;
        }
        .loginbox{
           display : flex;
            justify-content: center;
            width: 100%;
        }
        .loginmenu{
           display : flex;
           display : none;
            justify-content: center;
            width: 100%;
        }
        .on{
           display : block;
        }
        #loginbox-1{
           width : 80%;
        }
        .menu{
           width : 80%;
        }
        .loginbox2{
           left : 20%;
        }
   }
    
        

</style>
</head>
<body>
   <div class="wrapper">
      <div class="header">
         <div class="logo">
            <img src="/img/main3.png" onclick="location.href='/'"
               style="cursor: pointer; width: 200px;">
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
         <a href="#" class="navbar_toggleBtn">
        <i class="fas fa-bars"></i>
        </a>
      </div>
      <video autoplay loop muted poster="/imgs/logo.png" preload="metadata">
      <source src="/video/main2.mp4" type="video/mp4"></video>
      <div class="loginbox2">        
         <form action="/login" id="loginbox-1">
         <h2 style="color:#fff; text-align:center; margin-top:300px;">쉬는날, 놀지말고  share하세요.<br>selcar</h2>
      <%
         if (u == null) {
      %>  
            <table id="logintbl">
               
               <tr>
                  <td><input type="text" placeholder="아이디" name="userId" id="userId"></td>
               </tr>
               <tr>
                  <td><input type="password" placeholder="비밀번호" name="userPw" id="userPw"></td>
               </tr>
            </table>
            <button type="submit" style="cursor: pointer;">로그인</button>
         </form>
         <div class="list">
            <ul class="menu">
               <li><a href="#" onclick="window.open('/views/user/searchId.jsp','아이디찾기','width=500px,height=500px');return false">아이디 찾기</a></li>
               <li><a href="#" onclick="window.open('/views/user/searchPw.jsp','비밀번호찾기','width=500px,height=500px');return false">비밀번호찾기</a></li>
               <li><a href="/views/user/join.jsp">회원가입</a></li>
               <div class="snswrap">
            <div class="sns"><a href="#"><img src=/img/kh/f.png></a></div>
            <div class="sns"><a href="#"><img src=/img/kh/i.png></a></div>   
            <div class="sns"><a href="#"><img src=/img/kh/y.png></a></div>      
            </div>
            </ul>
         </div>
      </div>
      <%
         } else {
      %>
      <div class="loginbox2">
    <div id="loginbox-1">
            <table id="logintbl">
               <tr>
                  <h2><%=u.getUserId() %>님 안녕하세요 ! </h2><br><br>
               </tr>
               <tr>
                  <button type="button" id="btn1" onclick="location.href='/mypage?userId=<%=u.getUserId()%>'"  style="cursor: pointer;">마이페이지</button><br><br>
                  <button type="button" id="btn1" style="cursor: pointer;" onclick="location.href='/logout';">로그아웃</button>
               </tr>
            </table>
         </div>
         <div class="snswrap">
         <div class="sns"><a href="#"><img src=/img/kh/f.png></a></div>
         <div class="sns"><a href="#"><img src=/img/kh/i.png></a></div>   
         <div class="sns"><a href="#"><img src=/img/kh/y.png></a></div>      
         </div>
      </div>
      <%
         }
      %>
   </div>
   
   <script>
   
         
            function warn(){
               alert('로그인해주세요');
            }
         
      $(".logo").click(function() {
         location.href("/");
      })
      $(".navbar_toggleBtn").click(function(){
         $(".main").toggleClass("on");
   });
   </script>
</body>
</html>