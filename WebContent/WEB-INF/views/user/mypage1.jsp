<%@page import="car.model.vo.Car"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@page import="member.model.vo.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
   //member가 아니라 변수명을 m으로 하면 에러가뜬다. why? header에서 m이라는 변수를 사용하고 있으므로!!
   User member = (User) request.getAttribute("member");
   //소현 추가 : 내차 예약 목록 불러오려면 필요
   Car mycar = (Car) request.getAttribute("car");
   System.out.println(mycar);

%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>selcar | 마이페이지</title>
<!-- --------------------------------------------------
                  스크립트 추가
   --------------------------------------------------- -->
<script type="text/javascript"
   src="http://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script
   src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
/* --------------------------------------------------
                  헤더,푸터   
   -------------------------------------------------- */
.header {
   width: 100%;
   height: 150px;
}

.fotter {
   width: 100%;
   height: 100px;
}
/* --------------------------------------------------
                  마이페이지 화면
   -------------------------------------------------- */
.middleWrap {
   border: 1px solid white;
   width: 100vw;
}

.middleContent {
   /* border:1px solid blue; */
   width: 1450px;
   height: 100%;
   margin: 0 auto;
}
/* --------------------------------------------------
              마이페이지 화면 상단에 로고 넣고 보여주기 화면   
   -------------------------------------------------- */
.top {
   width: 100%;
   height: 200px;
   /* background-color: #d2d2d2; */
   background: linear-gradient(135deg,#d2d2d2,#d2d2d2 70%, #d2d2d2 10%,#3a3838);
}

.topLR {
   width: 50%;
   height: 200px;
   float: left;
   box-sizing: border-box;
}

.topLR p {
   color: #fff;
   margin-left: 130px;
   font-weight: bolder;
   font-size: 20px;
}

.topImg1 {
   width: 200px;
   height: 100px;
   margin-top: 35px;
   margin-left: 70px;
}

.topImg2 {
   width: 150px;
   height: 150px;
   float: right;
   margin-top: 22px;
   margin-right: 80px;
}

.bottom {
   width: 100%;
   height: 650px;
}
/* --------------------------------------------------
              마이페이지 화면 탭
   -------------------------------------------------- */
.menu {
   width: 150px;
   border: 1px solid #787878;
   margin-top: 20px;
   float: left;
}

.menu a {
   font-size: 14px;
   height: 30px;
   line-height: 30px;
   display: block;
   text-decoration: none;
   color: #000000;
   padding-left: 20px;
   font-weight: bold;
}

.menu ul {
   position: relative;
   list-style: none;
   padding: 0;
   margin: 0;
}

.choice {
   background-color: #dcdcdc;
   border-bottom: 1px solid #787878;
}

.main-menu>li>a:hover {
   color: #fac60e;
}

.sub-menu>li>a:hover {
   color: #fac60e;
}

.more {
   font-size: 20px;
   position: absolute;
   right: 20px;
   transition-duration: 0.5s;
}

.active {
   transform: rotate(180deg);
}
/* --------------------------------------------------
              마이페이지 탭으로 인한 메뉴   
   -------------------------------------------------- */
/* .content div{
      border:1px solid black;
   } */
.content {
   /* border:1px solid black; */
   width: 80%;
   height: 92%;
   float: right;
}

.contentTop {
   width: 100%;
   height: 50px;
   border-bottom: 1px solid black;
}

.contentTRL {
   width: 50%;
   height: 100%;
   box-sizing: border-box;
   float: left;
   vertical-align: bottom;
}

.contentBottom {
   /* border:1px solid black;  */
   width: 100%;
   height: 100%;
   display: none;
}

.show {
   display: block;
}

.homeTbl {
   border-top: 2px solid #bcbcbc;
   float: left;
   margin-top: 20px;
}

table th {
   width: 150px;
   text-align: left;
   height: 50px;
   border-bottom: 1px solid #bcbcbc;
}

table td {
   width: 300px;
   text-align: left;
   height: 50px;
   border-bottom: 1px solid #bcbcbc;
}

.carloc {
   list-style: none;
   padding: 0;
}

#carDate11 {
   display: inline-block;
}

#carDate1 {
   display: none;
}

#carDate22 {
   display: inline-block;
}

#carDate2 {
   display: none;
}

.carView {
   width: 55%;
   height: 100%;
   float: right;
   box-sizing: border-box;
}

.carViewIn {
   border: 2px dashed #bcbcbc;
   width: 48%;
   height: 48%;
   float: left;
   margin: 5px;
}
/*     #carDate2{
       display:in-block;
    } */
    
/* --------------------------------------------------
             급한 추가사항   
-------------------------------------------------- */
   .mt{
      margin-top : 30px;
      margin-left : 70px;
      float: left;
   }
   .mc{
      width:57%;
      height:100%;
      margin:0 auto;
   }
   .mcin{
      border:1px solid black;
      width:calc(100%/3);
      height:100%;
      float:left;
   }
/* --------------------------------------------------
             반응형 조건주기   
   -------------------------------------------------- */
@media all and (max-width:800px) { /* 일정크기 줄어들면 막아주는 코드 만들기 */
}
</style>
</head>

<body>
   <section>
   <div class="header">
      <%@include file="/WEB-INF/views/common/header.jsp"%>
   </div>

   <!-- 미들 -->
   <div class="middleWrap">
      <div class="middleContent">
         <div class="top" >
            <div class="topLR">
               <!-- <img src="/img/SelCar.png" class="topImg1"> -->
               <p style="color:#fac60e; font-size:4em;">www.SelCar.com</p>
               <p style="color:#3A3838; margin-left:130px; font-size:1em;">쉬는날, 놀지말고 쉐어하세요.<p>
               <p style="color:#3A3838; margin-left:130px; font-size:2em;">회원안내<p>
               <!-- &nbsp;&nbsp;&nbsp;&nbsp;내가 필요한 시간에<br>
                                                                  내가 원하는 장소에서 <br>   
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;내가 원하는 차를</p> -->
                                                         
            </div>
            <div class="topLR">
               <img src="/img/kh/myinfo.png" class="topImg2">
            </div>
         </div>
         <div class="bottom">
            <div class="menu">
               <ul class="main-menu">
                  <li><a href="/myRsvList?userId=<%=member.getUserId()%>&reqPage=1" class="choice choiceMenu">예약 내역</a></li>
                  <li><a href="#" class="choice choiceMenu">My Car</a>
                     <ul class="sub-menu">
                        <li><a href="#" class="choiceMenu">차량 등록</a></li>
                        <%if (mycar != null) {%>
                           <li><a href="/myCarRsvList?userId=<%=member.getUserId()%>&reqPage=1" class="choiceMenu">내 차 예약 정보</a></li>
                        <%} else {%>
                           <li><a href="#" class="choiceMenu">내 차 예약 정보</a></li>
                        <%} %>                     
                     </ul></li>
                  <li><a href="#" class="choice choiceMenu"
                     style="border: none;">My Info</a>
                     <ul class="sub-menu">
                        <li><a href="#" class="choiceMenu">회원 정보 수정</a></li>
                     </ul></li>
               </ul>
            </div>
            <div class="content">
               <div class="contentTop">
                  <div class="contentTRL">
                     <h4>
                        <span id="contentSpan">차량 관리</span>
                     </h4>

                  </div>
                  <div class="contentTRL">
                     <h6 style="text-align: right;">
                        홈>회원안내><span id="contentSpan2">차량 관리</span>
                     </h6>
                  </div>
               </div>

<!--/////////////////////////////////////////////////////////////////////////////////////////  -->
            <%-- <h2>소현 : 어디로들어갈지몰라서 일단 여기에 추가</h2>
               <a href="/myRsvList?userId=<%=member.getUserId()%>&reqPage=1">나의 예약</a> <br>
               
               <%if (mycar != null) {%>
               <a href="/myCarRsvList?userId=<%=member.getUserId()%>&reqPage=1"> 내 차의 예약 내역 보기</a>
               <%} else {%>
               <h6>등록된 차 정보 없음</h6>
               <%} %> --%>
               

<!--/////////////////////////////////////////////////////////////////////////////////////////  -->

   
               <div class="contentBottom">
                  <p>예약 정보이동</p>
               </div>
               <div class="contentBottom">
                  
                     <div class="mc" style="margin-top:30px;">
                        <!-- <div class="mcin"><img src="/img/kh/carinfo.png" style="width:80%; height:60%; margin:45px;"></div>
                        <div class="mcin"><img src="/img/kh/rsvinfo.png" style="width:80%; height:60%; margin:45px;"></div>
                        <div class="mcin"><img src="/img/kh/myinfo.png" style="width:80%; height:60%; margin:45px;"></div> -->
                        <p>내가 등록한 차량 정보</p>
                        <table class="table">
                     <tr>
                        <th>회원ID</th>                                                                        
                        <td id="carinfo0"><%=member.getUserId()%></td>
                     </tr>
                     <tr>
                        <th>차량번호</th>
                        <%if(mycar == null){ %>
                           <td id="carinfo1">정보없음</td>
                        <%}else{ %>
                           <td id="carinfo1"><%=mycar.getCarNopan() %></td>
                        <%} %>                                                
                     </tr>
                     <tr>
                        <th>연식</th>                        
                        <%if(mycar == null){ %>
                           <td id="carinfo2">정보없음</td>
                        <%}else{ %>
                           <td id="carinfo2"><%=mycar.getCarYear() %></td>
                        <%} %>   
                     </tr>
                     <tr>
                        <th>크기</th>
                        <%if(mycar == null){ %>
                           <td id="carinfo3">정보없음</td>
                        <%}else{ %>
                           <td id="carinfo3"><%=mycar.getCarType() %></td>
                        <%} %>   
                        
                     </tr>
                     <tr>
                        <th>차종</th>
                        <%if(mycar == null){ %>
                           <td id="carinfo4">정보없음</td>
                        <%}else{ %>
                           <td id="carinfo4"><%=mycar.getCarName() %></td>
                        <%} %>
                        
                     </tr>
                     <tr>
                        <th rowspan="4">렌트 옵션</th>
                        <%if(mycar == null){ %>
                           <td id="carinfo5">정보없음</td>
                        <%}else{ %>
                           <td id="carinfo5"><%=mycar.getCarSdate() %> ~ <%=mycar.getCarEdate() %></td>
                        <%} %>
                        
                     </tr>
                     <tr>
                        <%if(mycar == null){ %>
                           <td id="carinfo6">정보없음</td>
                        <%}else{ %>
                           <td id="carinfo6"><%=mycar.getCarPrice() %>원</td>
                        <%} %>
                        
                     </tr>
                     <tr>
                        <%if(mycar == null){ %>
                           <td id="carinfo7">정보없음</td>
                        <%}else{ %>
                           <td id="carinfo7"><%=mycar.getCarLocation() %></td>
                        <%} %>
                        
                     </tr>
                     <tr>
                        <td>비고</td>
                     </tr>
                  </table>
                     </div>
                     
               </div>
               <div class="contentBottom">
                  <table class="homeTbl">
                     <tr>
                        <th>회원ID</th>                                                                        
                        <td id="carinfo0"><%=member.getUserId()%></td>
                     </tr>
                     <tr>
                        <th>차량번호</th>
                        <%if(mycar == null){ %>
                           <td id="carinfo1">정보없음</td>
                        <%}else{ %>
                           <td id="carinfo1"><%=mycar.getCarNopan() %></td>
                        <%} %>                                                
                     </tr>
                     <tr>
                        <th>연식</th>                        
                        <%if(mycar == null){ %>
                           <td id="carinfo2">정보없음</td>
                        <%}else{ %>
                           <td id="carinfo2"><%=mycar.getCarYear() %></td>
                        <%} %>   
                     </tr>
                     <tr>
                        <th>크기</th>
                        <%if(mycar == null){ %>
                           <td id="carinfo3">정보없음</td>
                        <%}else{ %>
                           <td id="carinfo3"><%=mycar.getCarType() %></td>
                        <%} %>   
                        
                     </tr>
                     <tr>
                        <th>차종</th>
                        <%if(mycar == null){ %>
                           <td id="carinfo4">정보없음</td>
                        <%}else{ %>
                           <td id="carinfo4"><%=mycar.getCarName() %></td>
                        <%} %>
                        
                     </tr>
                     <tr>
                        <th rowspan="4">렌트 옵션</th>
                        <%if(mycar == null){ %>
                           <td id="carinfo5">정보없음</td>
                        <%}else{ %>
                           <td id="carinfo5"><%=mycar.getCarSdate() %> ~ <%=mycar.getCarEdate() %></td>
                        <%} %>
                        
                     </tr>
                     <tr>
                        <%if(mycar == null){ %>
                           <td id="carinfo6">정보없음</td>
                        <%}else{ %>
                           <td id="carinfo6"><%=mycar.getCarPrice() %>원</td>
                        <%} %>
                        
                     </tr>
                     <tr>
                        <%if(mycar == null){ %>
                           <td id="carinfo7">정보없음</td>
                        <%}else{ %>
                           <td id="carinfo7"><%=mycar.getCarLocation() %></td>
                        <%} %>
                        
                     </tr>
                     <tr>
                        <td>비고</td>
                     </tr>
                  </table>
                  <div class="carView">
                     <div class="carViewIn">
                        <%if(mycar == null){ %>
                           <img id="img-view1" width="100%" height="100%">
                        <%}else{ %>
                           <img id="img-view1" width="100%" height="100%" src="/upload/carphoto/<%=mycar.getCarImage() %>">
                        <%} %>                     
                     </div>
                     <div class="carViewIn">                     
                        <%if(mycar == null){ %>
                           <img id="img-view2" width="100%" height="100%">
                        <%}else{ %>
                           <img id="img-view2" width="100%" height="100%" src="/upload/carphoto/<%=mycar.getCarImage2() %>">
                        <%} %>   
                     </div>
                     <div class="carViewIn">
                        <%if(mycar == null){ %>
                           <img id="img-view3" width="100%" height="100%">
                        <%}else{ %>
                           <img id="img-view3" width="100%" height="100%" src="/upload/carphoto/<%=mycar.getCarImage3() %>">
                        <%} %>   
                     </div>
                     <div class="carViewIn">
                        <%if(mycar == null){ %>
                           <img id="img-view4" width="100%" height="100%">
                        <%}else{ %>
                           <img id="img-view4" width="100%" height="100%" src="/upload/carphoto/<%=mycar.getCarImage4() %>">
                        <%} %>   
                     </div>
                  </div>
                  
                  <!-- Modal -->                  
                  <%if(mycar != null){ %>
                     <button type="button" class="btn btn-info btn-lg mt"data-toggle="modal" data-target="#myModal" style="border:1px solid #fac60e; background-color:#fac60e; color:#3a3838">차량 정보 수정</button>
                     <form action="/deleteCar" method="post">                  
                        <button type="submit" class="btn btn-info btn-lg mt" style="border:1px solid #fac60e; background-color:#fac60e; color:#3a3838" >차량 삭제</button>
                        <input type="hidden" name="userId" value="<%=member.getUserId()%>">
                        <input type="hidden" name="carimage" value="<%=mycar.getCarImage()%>">
                        <input type="hidden" name="carimage2" value="<%=mycar.getCarImage2()%>">
                        <input type="hidden" name="carimage3" value="<%=mycar.getCarImage3()%>">
                        <input type="hidden" name="carimage4" value="<%=mycar.getCarImage4()%>">
                     </form>                     
                  <%}else{ %>
                     <button type="button" class="btn btn-info btn-lg mt"data-toggle="modal" data-target="#myModal" style="border:1px solid #fac60e; background-color:#fac60e; color:#3a3838">차량 정보 등록</button>
                  <%} %>
                  <div class="modal fade" id="myModal" role="dialog">
                     <div class="modal-dialog">

                        <form action="/car" method="post" enctype="multipart/form-data">
                           <!-- Modal content--> 
                           <div class="modal-content">
                             <div class="modal-header">
                                 <button type="button" class="close" data-dismiss="modal">&times;</button>
                                  <h4 class="modal-title">차량 등록</h4>
                                </div>
                             <div class="modal-body">
                             
                                  <table>
                                     <tr>
                                        <th>회원ID</th>
                                        <td><%=member.getUserId()%>
                                           <input type="hidden" name="userId" value="<%=member.getUserId()%>">
                                        </td>
                                     </tr>
                                     <tr>
                                        <th>차량 번호</th>
                                        <%if(mycar == null){ %>
                                           <td><input type="text" name="carNoPan" id="carNoPan" placeholder="ex)12가1234" required></td>
                                        <%}else{ %>
                                           <td><input type="text" name="carNoPan" id="carNoPan" value="<%=mycar.getCarNopan() %>"></td>
                                        <%} %>
                                        
                                     </tr>
                                     <tr>
                                        <th>연식</th>
                                        <%if(mycar == null){ %>
                                           <td><input type="text" name="carYear" id="carYear" placeholder="ex)2020" required></td>
                                        <%}else{ %>
                                           <td><input type="text" name="carYear" id="carYear" value="<%=mycar.getCarYear() %>"></td>
                                        <%} %>
                                     </tr>
                                     <tr>
                                        <th>크기</th>
                                        <%if(mycar == null){ %>
                                           <td><input type="text" name="carType" id="carType" placeholder="ex)중형" required></td>
                                        <%}else{ %>
                                           <td><input type="text" name="carType" id="carType" value="<%=mycar.getCarType() %>"></td>
                                        <%} %>   
                                     </tr>
                                     <tr>
                                        <th>차종</th>
                                        <%if(mycar == null){ %>
                                           <td><input type="text" name="carName" id="carName" placeholder="ex)아반떼AD" required></td>
                                        <%}else{ %>
                                           <td><input type="text" name="carName" id="carName" value="<%=mycar.getCarName() %>"></td>
                                        <%} %>   
                                     </tr>
                                     <tr>
                                        <th rowspan="2">대여 가능 기간</th>                                        
                                        <td>
                                           <input type="date" name="carSdate" id="carSdate" min="" required>
                                        </td>
                                     </tr>
                                     <tr>
                                        <td>
                                           <input type="date" name="carEdate" id="carEdate" min="" required>
                                        </td>
                                     </tr>
                                     <tr>
                                        <th>가격<p></p></th>
                                        <td><input type="text" name="carPrice" id="carPrice" placeholder="1시간기준" required></td>
                                     </tr>
                                     <tr>
                                        <th>등록할 위치</th>
                                        <td>
                                           <ul class="carloc">
                                       <li>
                                          <input id="postCode" style="width:200px; display:inline-block" type="text" placeholder="우편번호" class="form-control" readonly>
                                          <button id="addrSearchBtn" type="button" onclick="addrSearch();" class="btn btn-primary">주소검색</button>
                                       </li>
                                       <li>
                                          <input type="text" name="roadAddr" id="roadAddr" style="width:400px; display:inline-block;" placeholder="도로명주소"class="form-control" readonly>
                                          <input type="text" name="jibunAddr" id="jibunAddr" style="width:400px; display:inline-block;" placeholder="지번주소"class="form-control" readonly>
                                        </li>
                                        <li>
                                           <input type="text" name="detailAddr" id="detailAddr" style="width:400px; display:inline-block;" placeholder="상세주소"class="form-control">
                                        </li>
                                       </ul>                                       
                                        </td>
                                     </tr>
                                     <tr>
                                        <th>차량 사진</th>
                                        <td>
                                           <table>
                                              <tr>
                                                 <th>정면</th>
                                                 <td><input type="file" name="filename1" onchange="loadImg1(this)" required></td>
                                              </tr>
                                              <tr>
                                                 <th>측면</th>
                                                 <td><input type="file" name="filename2" onchange="loadImg2(this)" required></td>
                                              </tr>
                                              <tr>
                                                 <th>후면</th>
                                                 <td><input type="file" name="filename3" onchange="loadImg3(this)" required></td>
                                              </tr>
                                              <tr>
                                                 <th>내부</th>
                                                 <td><input type="file" name="filename4" onchange="loadImg4(this)" required></td>
                                              </tr>
                                           </table>                                         
                                        </td>
                                     </tr>
                                     
                                  </table>
                             </div>
                             <div class="modal-footer">
                                 <button type="submit" class="btn btn-default"  id="carButton">등록하기</button>
                             </div>
                           </div>
                        </form>
                     </div>
                  </div>
                  <!-- End Modal -->


               </div>
               <div class="contentBottom">
                  <%-- <p>예약 내역 보기내용 만들기</p>
                     <h2>소현 : 어디로들어갈지몰라서 일단 여기에 추가</h2>
                     <a href="/myRsvList?userId=<%=member.getUserId()%>&reqPage=1">나의 예약</a><br>
                     <%if (mycar != null) {%>
                              <a href="/myCarRsvList?userId=<%=member.getUserId()%>&reqPage=1"> 내 차의 예약 내역 보기</a>
                           <%} else {%>
                              <h6>등록된 차 정보 없음</h6>
                         <%} %> --%>
                         <br>
                         <h4>차를 등록하지 않아 내차에 예약된 내역을 볼 수 없습니다.<br><br>차를 등록해주세요.</h4>
               </div>
               <div class="contentBottom">
                  <div class="mc" style="margin-top:0px">
                     <table class="table">                        
                        <tr>
                           <th>아이디</th>
                           <td><%=member.getUserId()%></td>
                        </tr>
                        <tr>
                           <th>비밀번호</th>
                           <td><%=member.getUserPw()%></td>
                        </tr>
                        <tr>
                           <th>이름</th>
                           <td><%=member.getUserName()%></td>
                        </tr>
                        <tr>
                           <th>전화번호</th>
                           <td><%=member.getUserPhone()%></td>
                        </tr>
                        <tr>
                           <th>주소</th>
                           <td><%=member.getUserAddr()%></td>
                        </tr>
                        <tr>
                           <th>이메일</th>
                           <td><%=member.getUserEmail()%></td>
                        </tr>
                        <tr>
                           <th>운전면허</th>
                           <td><%=member.getUserLicense()%></td>
                        </tr>
                        <tr>
                           <th>신고 횟수</th>
                           <td><%=member.getUserReport()%></td>
                        </tr>
                        <tr>
                           <th>회원등급</th>
                           <td>
                              <%
                                 if (member.getUserGrade() == 0) {
                              %> <span>관리자</span> <%
    } else if (member.getUserGrade() == 1) {
 %> <span>정회원</span> <%
    }
 %>
                           </td>
                        </tr>
                        <tr>
                           <th>가입일</th>
                           <td><%=member.getUserDate()%></td>
                        </tr>

                        
                     </table>
                  </div>
                  

               </div>

               <div class="contentBottom">
               <div class="mc">
                  <form action="/updateMember" method="post"
                     style="width: 800px; margin: 0 auto; color: black;">


                     <table class="table">
                        
                        <tr>
                           <th>아이디</th>
                           <td><%=member.getUserId()%>
                              <input type="hidden" name="memberId"
                              class="form-control" value="<%=member.getUserId()%>" readonly></td>
                        </tr>
                        <tr>
                           <th>비밀번호</th>
                           <td><input type="text" name="memberPw"
                              class="form-control" value="<%=member.getUserPw()%>"></td>
                        </tr>
                        <tr>
                           <th>이름</th>
                           <td><%=member.getUserName()%>
                              <input type="hidden" name="memberName"
                              class="form-control" value="<%=member.getUserName()%>"
                              readonly></td>
                        </tr>
                        <tr>
                           <th>전화번호</th>
                           <td><input type="text" name="phone" class="form-control"
                              value="<%=member.getUserPhone()%>"></td>
                        </tr>
                        <tr>
                           <th>주소</th>
                           <td><input type="text" name="address" class="form-control"
                              value="<%=member.getUserAddr()%>"></td>
                        </tr>
                        <tr>
                           <th>이메일</th>
                           <td><input type="text" name="email" class="form-control"
                              value="<%=member.getUserEmail()%>"></td>
                        </tr>
                        <tr>
                           <th>운전면허</th>
                           <td><input type="text" name="license" class="form-control"
                              value="<%=member.getUserLicense()%>"></td>
                        </tr>
                        <tr>
                           <th>신고 횟수</th>
                           <td><%=member.getUserReport()%>
                              <input type="hidden" name="report" class="form-control"
                              value="<%=member.getUserReport()%>" readonly></td>
                        </tr>
                        <tr>
                           <th>회원등급</th>
                           <td>
                              <%
                                 if (member.getUserGrade() == 0) {
                              %> <span>관리자</span> <%
    } else if (member.getUserGrade() == 1) {
 %> <span>정회원</span> <%
    }
 %>
                           </td>
                        </tr>
                        <tr>
                           <th>가입일</th>
                           <td><%=member.getUserDate()%>
                              <input type="hidden" name="enroll" class="form-control"
                              value="<%=member.getUserDate()%>" readonly></td>
                        </tr>

                        <tr>
                           <th colspan="2" style="text-align: center">
                              <button class="btn btn-outline-danger btn-lg" type="submit">수정하기</button>

                           </th>
                        </tr>
                     </table>
                  </form>
               </div>
                  
               </div>


            </div>


         </div>
      </div>
      <!-- 미들콘텐츠 -->
   </div>
   <!-- 미들전체 -->
   <br><br>
   <br><br><br><br>
   <div class="fotter">
      <%@include file="/WEB-INF/views/common/footer.jsp"%>
   </div>
   </section>

   <script>
      /* --------------------------------------------------
                      탭   
      -------------------------------------------------- */
      $(function() {
         $(".main-menu ul").hide();
         $(".sub-menu").prev().append('<span class="more">∨</span>');
         $(".more").click(function(event) {
            $(this).parent().next().slideToggle();
            if ($(this).attr("class") == "more") {
               $(this).addClass("active");
            } else {
               $(this).removeClass("active");
            }
            event.stopPropagation();
         });
         $(".more").parent().click(function() {
            $(this).children().last().click();
         });
      });
      /* --------------------------------------------------
                  탭메뉴 클릭시 이벤트   
      -------------------------------------------------- */
      //시작화면
      $('.contentBottom').eq(2).css("display", "block");
      //
      $('.choiceMenu').click(function() {
         var idx = $(".choiceMenu").index(this);
         console.log(idx);
         for (var i = 0; i < 6; i++) {
            $('.contentBottom').eq(i).css("display", "none");
         }
         $('.contentBottom').eq(idx).css("display", "block");
         if (idx == 1) {
            $('#contentSpan').html("My Car");
            $('#contentSpan2').html("My Car");
         } else if (idx == 4) {
            $('#contentSpan').html("My Info");
            $('#contentSpan2').html("My Info");
         } else {
            $('#contentSpan').html($('.choiceMenu').eq(idx).text());
            $('#contentSpan2').html($('.choiceMenu').eq(idx).text());
         }
      });
      /* --------------------------------------------------
                  자동차 등록   
      -------------------------------------------------- */
      //등록 주소
      function addrSearch() {
         new daum.Postcode({
            oncomplete : function(data) {
               //검색해서 선택한 결과가 data라는 매개변수를 통해서 들어옴
               //다양값이 들어오지만 그중 3개값만 사용
               //우편번호,도로명주소,지번주소
               $("#postCode").val(data.zonecode);//우편번호값
               $("#roadAddr").val(data.roadAddress);//도로명주소
               $("#jibunAddr").val(data.jibunAddress);//지번주소
               $("#detailAddr").focus();
            }
         }).open();
      }

      //차량등록하기 클릭시
      $('#carButton').click(function() { 
         $('#carinfo1').html($('#carNoPan').val()); //td값
         $('#carinfo2').html($('#carYear').val()); //td값
         $('#carinfo3').html($('#carType').val()); //td값
         $('#carinfo4').html($('#carName').val()); //td값
         $('#carinfo5').html($('#carSdate').val()+" - "+$('#carEdate').val()); //td값
         $('#carinfo6').html($('#carPrice').val()+"원"); //td값
         $('#carinfo7').html($('#roadAddr').val()+" "+$('#detailAddr').val()); //td값
      });
      
      /* console.log($('#carNoPan').val()); //차량번호
      console.log($('#carYear').val()); //연식
      console.log($('#carType').val()); //차종
      console.log($('#carName').val()); //차이름
      console.log($('#carSdate').val()); //차시작
      console.log($('#carEdate').val()); //차종료
      console.log($('#carPrice').val()); //차가격
      console.log($('#roadAddr').val()); //차위치
      console.log($('#detailAddr').val()); //차세부위치 */

      //차사진넣기
      function loadImg1(f) {
         //배열의 길이가 0인지 확인(첨부파일 갯수가 0인지확인)
         //배열에 담겨있는 파일의 크기가 0인지 확인 -> 파일업로드를 1개만하기 때문에 0인덱스만 검사
         if (f.files.length != 0 && f.files[0] != 0) {
            var reader = new FileReader(); //JS파일리더객체-> 파일정보를 확인가능
            //현재 사용자가 선택한 파일의 경로를 읽어옴
            reader.readAsDataURL(f.files[0]);
            //파일의 경로를 읽어오는 작업이 완료되면
            reader.onload = function(e) {
               $('#img-view1').attr('src', e.target.result); //파일경로를 src속성에 설정
            }
         } else {
            $('#img-view1').attr("src", "");
         }
      }
      function loadImg2(f) {
         //배열의 길이가 0인지 확인(첨부파일 갯수가 0인지확인)
         //배열에 담겨있는 파일의 크기가 0인지 확인 -> 파일업로드를 1개만하기 때문에 0인덱스만 검사
         if (f.files.length != 0 && f.files[0] != 0) {
            var reader = new FileReader(); //JS파일리더객체-> 파일정보를 확인가능
            //현재 사용자가 선택한 파일의 경로를 읽어옴
            reader.readAsDataURL(f.files[0]);
            //파일의 경로를 읽어오는 작업이 완료되면
            reader.onload = function(e) {
               $('#img-view2').attr('src', e.target.result); //파일경로를 src속성에 설정
            }
         } else {
            $('#img-view2').attr("src", "");
         }
      }
      function loadImg3(f) {
         //배열의 길이가 0인지 확인(첨부파일 갯수가 0인지확인)
         //배열에 담겨있는 파일의 크기가 0인지 확인 -> 파일업로드를 1개만하기 때문에 0인덱스만 검사
         if (f.files.length != 0 && f.files[0] != 0) {
            var reader = new FileReader(); //JS파일리더객체-> 파일정보를 확인가능
            //현재 사용자가 선택한 파일의 경로를 읽어옴
            reader.readAsDataURL(f.files[0]);
            //파일의 경로를 읽어오는 작업이 완료되면
            reader.onload = function(e) {
               $('#img-view3').attr('src', e.target.result); //파일경로를 src속성에 설정
            }
         } else {
            $('#img-view3').attr("src", "");
         }
      }
      function loadImg4(f) {
         //배열의 길이가 0인지 확인(첨부파일 갯수가 0인지확인)
         //배열에 담겨있는 파일의 크기가 0인지 확인 -> 파일업로드를 1개만하기 때문에 0인덱스만 검사
         if (f.files.length != 0 && f.files[0] != 0) {
            var reader = new FileReader(); //JS파일리더객체-> 파일정보를 확인가능
            //현재 사용자가 선택한 파일의 경로를 읽어옴
            reader.readAsDataURL(f.files[0]);
            //파일의 경로를 읽어오는 작업이 완료되면
            reader.onload = function(e) {
               $('#img-view4').attr('src', e.target.result); //파일경로를 src속성에 설정
            }
         } else {
            $('#img-view4').attr("src", "");
         }
      }
      
      $(function() {
         $('#carSdate').datepicker({minDate:0});
      });
      
      $('#carSdate').click(function() {
         var date = new Date(); 
         var yyyy = date.getFullYear(); 
         var mm = date.getMonth()+1>9 ? date.getMonth()+1 : '0' + date.getMonth()+1; 
         var dd = date.getDate() > 9 ? date.getDate() : '0' + date.getDate(); 
         var today = yyyy+"-"+mm+"-"+dd;
         console.log(today);
         $('#carSdate').attr('min',today);
      });
      $('#carEdate').click(function() {
         var date = new Date(); 
         var yyyy = date.getFullYear(); 
         var mm = date.getMonth()+1>9 ? date.getMonth()+1 : '0' + date.getMonth()+1; 
         var dd = date.getDate() > 9 ? date.getDate() : '0' + date.getDate(); 
         var today = yyyy+"-"+mm+"-"+dd;
         console.log(today);
         $('#carEdate').attr('min',today);
      });
      
      
      
   </script>





</body>
</html>