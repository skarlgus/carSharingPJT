<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList"%>
        <%@page import="rsv.model.vo.Report"%>
    <%
   ArrayList<Report> list=(ArrayList<Report>)request.getAttribute("list");
   String key=(String)request.getAttribute("key");
   
   if(key==null){
      key="";
   }
   
   String type=(String)request.getAttribute("type");
   if(type==null){
      type="reportTo";
   }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
     <script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<title>selcar | 관리자 페이지</title>
</head>

<style>

      select.form-control, input.form-control{
         display:inline-block;
         width:200px;
         height:30px;
         font-size:0.8em;
         
      }
   .first>th{
      text-align:center;
   }
   
   body{
      height:100vh;
   }
   
   .lastBtn>th{
      text-align:center;
   }
   
   .btn_info{
   color:white;
   border-color:white;
      background-color:#FAC60E;
   }
   
   .btn_info1{
   color:white;
   border-color:white;
      background-color:#3A3838;
   }
</style>
<body>
   <%@ include file="/WEB-INF/views/common/header.jsp" %>
      <div  style="margin: 0 auto; width:90%; margin-top:100px; ">
         <form action="searchReportPerson">
            <select name="type" class="form-control">
            
            
            <!-- select에서 선택된 옵션이 select 값으로 들어가므로 select의 이름값을 가져오면 option value값을 가질 수 있다. -->
            <%if(type.equals("reportTo")){ %>
               <option value="reportTo" selected>신고 한 유저아이디</option>
               <option value="reportFrom">신고 당한 유저아이디</option>
               
               <%}else if(type.equals("reportFrom")){ %>
               <option value="reportTo">신고 한 유저아이디</option>
               <option value="reportFrom" selected>신고 당한 유저아이디</option>
               
               <%}%>
            </select>
         
         
         
            
            <input type="text" class="form-control" name="keyword" value='<%=key %>'>
            
            
            <button type="submit" class="btn btn_info1 btn-sm">검색</button>
         </form>
      </div>
      
   <table class="table table-hover" style="width:90%; margin:0 auto;text-align:center;">
      
         <tr class="first">
            <th>선택</th><th>신고번호</th> <th>신고 한 유저아이디</th> <th>신고 당한 유저아이디</th> <th>신고 사유</th> <th>신고 당한 날짜</th><th>결정</th>   
            
         </tr>
         
         <%for( Report report : list){ %>
         <!-- admin만 들어올수 있고, m.getMemberNo()는 현재 접속해 있는 아이디의 세션이므로
         admin의 넘버만 아니면 뜨도록, 즉 admin뺴고 나머지 멤버들이 뜨도록!! -->
         
      
         
         <tr class="report-list" >
            <td><input type="checkbox" class="chk"></td>
            <td><%=report.getReport_No() %></td>
            <td><%=report.getReport_ER()%></td>
            <td><%=report.getReport_EE()%></td>
            <td><%=report.getReport_Comment()%></td>
            <td><%=report.getReport_Date() %></td>
   
            <td>
               <button class="btn btn_info btn-sm" onclick="location.href='/reportDecision?userId=<%=report.getReport_ER()%>&num=<%=report.getReport_No()%>'">신고수락</button>
                           <button class="btn btn_info btn-sm" onclick="location.href='/reportDecision?userId=<%=false%>&num=<%=report.getReport_No()%>'">신고철회</button>
            </td>
         </tr>

         <% }%>
   
            
         <tr class="lastBtn" >
            <%if(list.size()!=0){ %>
            <th colspan="12" >
               <button class="btn btn_info1  changeAllBtn">신고수락</button>
         
               <button class="btn btn_info1 negativeAllBtn">신고철회</button>
            </th>
            <%} %>
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
</body>

<script>
      $(".changeBtn").click(function(){
         var memberLevel=$(this).parent().prev().children().val();
      
         //tr의 첫번쨰 자식으로 no찾아냄
         var memberNo=$(this).parent().parent().children().first().next().html();
         console.log("memberLevel : "+memberLevel);
         console.log("memberNo : "+memberNo);
         location.href="/changeLevel?memberNo="+memberNo+"&memberLevel="+memberLevel;
         
         
      })
      
      $(".negativeAllBtn").click(function(){
         console.log("hi");
         var inputs=$("[type=checkbox]:checked");
         console.log(inputs)
         if(inputs.length==0){
            alert('체크박스를 선택해주세요');
            return false;
         }
         var num=new Array();
         var level= new Array();
         var v='false';
         inputs.each(function(idx,item){
            num.push($(item).parent().next().html());
            level.push($(item).parent().next().next().html());
         })
         
         location.href="/reportAllDecision?num="+num.join("/")+"&userId="+v;
      })
      $(".changeAllBtn").click(function(){
         console.log("hi");
         var inputs=$("[type=checkbox]:checked");
         if(inputs.length==0){
            alert('체크박스를 선택해주세요');
            return false;
         }
         var num=new Array();
         var level= new Array();
         
         inputs.each(function(idx,item){
            num.push($(item).parent().next().html());
            level.push($(item).parent().next().next().html());
         })
         
         location.href="/reportAllDecision?num="+num.join("/")+"&userId="+level.join("/");
         
         
      })
      
         function paging(page){
      var a = $(".report-list");
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
</html>