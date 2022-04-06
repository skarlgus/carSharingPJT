<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
    
    
    <%
       ArrayList<User> list=(ArrayList<User>)request.getAttribute("list");
//String pageNavi=(String)request.getAttribute("pageNavi");
   String key=(String)request.getAttribute("key");
   
   if(key==null){
      key="";
   }
   
   String type=(String)request.getAttribute("type");
   if(type==null){
      type="memberId";
   }
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<title>selcar | 관리자 페이지</title>

   <style>
   
      #pageNavi>*{
      margin:10px;
   }
   
 
      select.form-control, input.form-control{
         display:inline-block;
         width:200px;
         height:30px;
         font-size:0.8em;
         
      }
      
      .first>th{
      text-align:center;
   }
   
   .btnGroup>th{
         text-align:center;
   }
   
   section{
      height:100vh;
   }
   #page-navi{
   width:100%;
   height:30px;
}
   #page-navi>div{
      margin:0 auto;
      text-align: center;
      width:50%;
      height:100%;
   }
   .page-num{
      width:50px;
      height:30px;
      color: darkgray;
      text-align: center;
      cursor: pointer;
      margin:10px;
      font-size: 15px;
      font-weight: bold;
   }
   
   .btn-info{
   border-color:white;
      background-color:#FAC60E;
   }
   
   .btn_info1{
   color:white;
   border-color:white;
      background-color:#3A3838;
   }
   </style>
</head>
<body>
      
   
   <section>
   <%@ include file="/WEB-INF/views/common/header.jsp" %>
      <div  style="margin: 0 auto; width:90%; margin-top:100px; ">
         <form action="/searchKeyword">
            <select name="type" class="form-control">
            
            
            <!-- select에서 선택된 옵션이 select 값으로 들어가므로 select의 이름값을 가져오면 option value값을 가질 수 있다. -->
            <%if(type.equals("memberId")){ %>
               <option value="memberId" selected>아이디</option>
               <option value="memberName">이름</option>
               <option value="license">면허증</option>
               <%}else if(type.equals("memberName")){ %>
               <option value="memberId">아이디</option>
               <option value="memberName" selected>이름</option>
                  <option value="license">면허증</option>
               <%}else if(type.equals("license")){ %>
               <option value="memberId">아이디</option>
               <option value="memberName" >이름</option>
                  <option value="license" selected>면허증</option>
               <%} %>
            </select>
         
         
         
            
            <input type="text" class="form-control" name="keyword" value='<%=key %>'>
            
            
            <button type="submit" class="btn btn_info1 btn-sm">검색</button>
         </form>
      </div>
      
      
      <table class="table table-hover" style="width:90%; margin:0 auto; text-align:center;">
      
         <tr class="first">
            <th>선택</th><th>회원번호</th> <th>아이디</th> <th>이름</th> <th>전화번호</th> <th>주소</th><th>면허증</th><th>이메일</th><th>신고횟수</th> <th>가입일</th><th>등급</th><th>변경</th>   
            
         </tr>
         
         <%for(User member : list){ %>
         <!-- admin만 들어올수 있고, m.getMemberNo()는 현재 접속해 있는 아이디의 세션이므로
         admin의 넘버만 아니면 뜨도록, 즉 admin뺴고 나머지 멤버들이 뜨도록!! -->
         
         <%if(member.getUserNo()!=u.getUserNo()) {%>
         
         <tr class="user-list">
            <td><input type="checkbox" class="chk"></td>
            <td><%=member.getUserNo() %></td>
            <td><%=member.getUserId() %></td>
            <td><%=member.getUserName() %></td>
            <td><%=member.getUserPhone() %></td>
            <td><%=member.getUserAddr() %></td>
            <td><%=member.getUserLicense()%></td>
            <td><%=member.getUserEmail()%>
            <td><%=member.getUserReport() %>
               <td><%=member.getUserDate() %></td>
            <td>
               <select>
                  <%if(member.getUserGrade()==0){ %>
                     <option value="0" selected>관리자</option>
                  <option value="1">정회원</option>
                  <option value="2">준회원</option>
                  <%}else if(member.getUserGrade()==1) {%>
                     <option value="0">관리자</option>
                  <option value="1" selected>정회원</option>
                  <option value="2">준회원</option>
                  <%}else if(member.getUserGrade()==2) {%>
                     <option value="0">관리자</option>
                  <option value="1">정회원</option>
                  <option value="2"selected>준회원</option>
                  <%} %>
               
               </select>
            </td>
         
            <td>
               <button class="btn btn-info btn-sm changeBtn">변경</button>
            </td>
         </tr>
   
         <% }%>
         <%} %>
            
         <tr class="btnGroup">
         
            <th colspan="12">
               <button class="btn btn_info1  changeAllBtn">변경하기</button>
         
               <button class="btn btn_info1  deleteALLBtn">회원제명</button>
            </th>
         </tr>
         <tr >
         <td colspan="12">
            
            <div id="page-navi">
            
         <div>
         
         <%if((list.size()-1)%10!=0){ %>
         
            <%for(int i=1;i<=list.size()/10+1;i++) {%>
               <span class="page-num"><%=i %></span>
            <%} %>
         <%}else{ %>
            <%for(int i=1;i<=list.size()/10;i++) {%>
               <span class="page-num"><%=i %></span>
            <%} %>
         <%} %>
         </div>
      </div>   
         </td>
             
         </tr>
      </table>
   
      
      </div>
   </section>
   
   <script>
      $(".changeBtn").click(function(){
         var memberLevel=$(this).parent().prev().children().val();
      
         //tr의 첫번쨰 자식으로 no찾아냄
         var memberNo=$(this).parent().parent().children().first().next().html();
         console.log("memberLevel : "+memberLevel);
         console.log("memberNo : "+memberNo);
         location.href="/changeLevel?memberNo="+memberNo+"&memberLevel="+memberLevel;
         
         
      })
      
      $(".deleteALLBtn").click(function(){
         var inputs=$("[type=checkbox]:checked");
         if(inputs.length==0){
            alert('체크박스를 선택해주세요');
            return false;
         }
         var num=new Array();
   
         
         inputs.each(function(idx,item){
            num.push($(item).parent().next().html());
      
         })
         
         location.href="/deleteAllMember?num="+num.join("/");
      })
      $(".changeAllBtn").click(function(){
         var inputs=$("[type=checkbox]:checked");
         if(inputs.length==0){
            alert('체크박스를 선택해주세요');
            return false;
         }
         var num=new Array();
         var level= new Array();
         
         inputs.each(function(idx,item){
            num.push($(item).parent().next().html());
            level.push($(item).parent().parent().find("select").val());
         })
         
         location.href="/changeAllLevel?num="+num.join("/")+"&level="+level.join("/");
         
         
      })
      
         function paging(page){
      var a = $(".user-list");
      a.hide();
      var s = 1+(10*(page-1));
      console.log(a.length);
      for(var i=s;i<=page*10;i++){
         $(a).eq(i-1).show();
      }
   }
   
   $(function(){
      paging(1);
      $(".page-num").css({color:'#3A3838',backgroundColor:'white'});
      $(".page-num").eq(0).css({color:'#FAC60E',backgroundColor:"white"});
   })
   
   $(".page-num").click(function(){
      $(".page-num").css({color:'#3A3838',backgroundColor:'white'});
      $(this).css({color:'#FAC60E',backgroundColor:"white"});
      paging(parseInt($(this).html()));
   });
   </script>
</body>
</html>