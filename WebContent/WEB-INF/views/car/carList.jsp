<%@page import="car.model.vo.Car"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ArrayList<Car> list = (ArrayList<Car>) request.getAttribute("list");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<title>selcar | 차량 목록</title>
<style>

/* 소현 */


/* 가영 */
section *{
		font-family: 'Nanum Gothic', sans-serif;
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
	input{
		border:1px solid #bbb;
		border-radius: 2px;
		outline: none;
		border:none;
		height:28px;
	}
	select{
		border:none;
	}
	section{
		margin-top:80px;
		margin-bottom:120px;
		width:100%;
	}
	section>div{
		width:80%;
		margin:0 auto;
	}
	#option-box{
		height:100px;
		background-color:rgba(240,240,240,0.8);
		display: flex;
        align-items: center;
        padding: 15px;
        text-align: center;
	}
	#option-box form{
		width: 100%;
	}
	#option-box table{
		width:100%;
		height:100%;
		margin:0 auto;
	}
	#option-box table tr{
		height:100%;
	}
	#option-box table tr>*{
		margin:0;
		text-align: center;
	}
	#option-box table td{
		margin:5px;
	}
	#option-box table label{
		display:inline-block;
		height:10px;
		width:calc(100%/3);
		margin-left : 10px;
	}
	select{
		border:1px solid #bbb;
		height: 28px;
		border-radius: 2px;
	}
	#sort-box{
		box-sizing:border-box;
	}
	#sort-box>select{
		float:right;
	}
	.carlist{
		overflow:hidden;
		margin-bottom:10px;
		line-height:40px;
		text-align: center;
	}
	.carlist a{
		color:#111;
		transition-duration: 0.2s;
	}
	.carlist a:hover>li>div{
		box-shadow: -1px -1px 10px #aaa;
		transition-duration: 0.2s;
	}
	.carlist a:hover{
		color:#fac60e;
	}
	.carlist li{
		display: block;
		width:calc(100%/3);
		float :left;
		padding:10px;
		box-sizing: border-box;
		overflow: hidden;
	}
	.carlist li>div{
		border:1px solid #eee;
	}
	
	.image-cover{
		background-color:rgba(0,0,0,0.3);
		width:100%;
		height:100%;
		position:absolute;
		top:0;
		left:0;
		display:none;
		justify-content:center;
        align-items:center;
        font-size:30px;
        transition-duration:0.5s;
	}
	.carList-li .image-cover>i{
		transition-duration:0.5s;
	}
	.carList-li:hover .image-cover{
		display:flex;
	}
	.search{
		background-color:#008891;
		color: white;
		width:100px;
		height:100px;0
		border:none;
		borde-radius:3px;
	}
	.car-img-wrap{
		width:100%;
		overflow:hidden;
		position:relative;
		display:flex;
		justify-content:center;
        align-items:center;
	}
	.car-img-wrap img{
		object-fit: cover;
		width:250px;
		height:250px;
	}
	ul{
		padding:0;
	}
	.carlist li{
		overflow: hidden;
	}
	.carType{
		font-weight: bold;
		display:none;
	}
	.carType+span{
		cursor: pointer;
	}
	.carType:checked+span{
		color:#fac60e;
	}
	.gray{
		height:30px;
		line-height: 30px;
		color:#757070;
	}
	@media(max-width:845px){

	.carlist li{
		width: 100%;
	}
	.car-img-wrap{
		width: 100%;
	}
	
	}
	@media(max-width:825px){
	
	.text-box{
		height:150px;
	}
	}
	@media(max-width:600px){
	section{
		width:600px;
	}
	}
	
</style>
</head>
<body>

	<%@include file="/WEB-INF/views/common/header.jsp"%>
	
	<section style="overflow:hidden;">
		<div>
	        <h2>차량 검색</h2>
	        <hr>
       </div>
        <!-- -------------------------검색 조건 박스------------------------ -->

        <div id="option-box">
        <form action="/searchCarKeyword" >
                <table>
	                <tr style="font-size:17px;">
		                <th>지역</th>
		                <th>대여일</th>
		                <th>차량유형</th>
		                <th>모델명</th>
		                <th></th>
	                </tr>
                    <tr>
                        <td style="font-size:15px;">
                            <select style="width :80px;font-size:15px;border:none;" id="zone" name="zone">
                            	<option>지역선택</option>
                                <option value="서울">서울</option>
                                <option value="강원">강원도</option>
                                <option value="경기">경기</option>
                                <option value="대전">대전시</option>
                                <option value="대구">대구시</option>
                                <option value="울산">울산시</option>
                                 <option value="인천">인천시</option>
                                <option value="부산">부산시</option>
                            </select>
                            <input type="text" name="addr" id="addr" style="width:100px;">
                        </td>
                        <td>
                            <input type="date" name="date-range1" id="date-range1" value="">
                            <input type="date" name="date-range2" id="date-range2">
                        </td>
                         
                        <td style="display: flex; align-items: center;justify-content:center;">
                          <label><input type="radio" name="car-type" class="carType" value="소형" onclick="doOpenCheck(this);"> <span>소형</span></label> &nbsp;
                          <label><input type="radio" name="car-type" class="carType" value="중형" onclick="doOpenCheck(this);"> <span>중형</span></label> &nbsp;
                          <label><input type="radio" name="car-type" class="carType" value="대형" onclick="doOpenCheck(this);"> <span>대형</span></label>
                        </td>
                        <td style="width:20%;">
                            <input type="text" name="carName" id="carName" style="width:90%">
                        </td>
                        <td><button type="submit" class="btn btn-sm" style="background-color: #fac60e;color:#3a3838;font-weight: bold">검색</button></td>
                </table>
                </form>
        </div>
        <br>
        <br>
        <div id="sort-box">
            
			<span style="float:right;">
            <select style="font-size:13px;border:1px solid #ddd;">
            	<option value="recent">최신순</option>
                <option value="priceAsce">가격순(오름차순)</option>
                <option value="priceDesc">가격순(내림차순)</option>
                <option value="pointAsce">평점순</option>
            </select></span>
            <span><h3 style="display:inline-block;">검색 결과</h3></span>
			<hr>
        </div>
        <div id="rent-car-list">
            <ul class="carlist">
                <%for(Car c : list){ %>
                <a href="/carDetailView?carNo=<%=c.getCarNo() %>" >
                <li class="carList-li" data-point="<%=c.getCarRate() %>" data-price="<%= Integer.parseInt(c.getCarPrice())%>">
		            <div class="car-img-wrap" style="max-height:300px">
		                <div class="image-cover"><i class="fas fa-plus-circle" style="color:white;"></i></div>
		                <img src="/upload/carphoto/<%=c.getCarImage()%>" style="width:100%;">
		            </div>
	                    
                    <div class="text-box" style="text-align: justify;padding:10px;box-sizing: border-box;"  style="max-height:150px;overflow:hidden;">
	                    <div>
	                    	<span style=""><h4 style="display:inline-block;"><%=c.getCarName() %></h4></span>  &nbsp;
	                    	<span>
		                    	<i class="fas fa-star" style="color:orange;"></i> 
		                    	<%=c.getCarRate() %> / 5
	                    	</span>
	                    </div>
	                    <div class="gray"><span><%=c.getCarType() %></span> &nbsp; <span> <%=String.format("%,d", Integer.parseInt(c.getCarPrice())) %>원</span></div>      
	                    <div class="gray"><%=c.getCarSdate() %><span> ~ </span><%=c.getCarEdate() %></div>
	                    <span class="gray" style="font-size:10px;line-height: 10px;"><%=c.getCarLocation() %></span>
                	</div>
                </li>
                </a>
                <%} %>
            </ul>
        </div>
		<div id="page-navi" style="margin-top:20px;">
			<div>
			<%if(list.size()%15!=0){ %>
				<%for(int i=1;i<=list.size()/15+1;i++) {%>
					<span class="page-num"><%=i %></span>
				<%} %>
			<%}else{ %>
				<%for(int i=1;i<=list.size()/15;i++) {%>
					<span class="page-num"><%=i %></span>
				<%} %>
			<%} %>
			</div>
		</div>        
        

	</section>

	<%@include file="/WEB-INF/views/common/footer.jsp"%>
	
	<script>
	var addr;
	var Sdate;
	var Edate;
	var carType;
	var optVal;
	var carName;
	$(document).ready(function(){
		 optVal=$("#zone").val();
			Sdate=$("#date-range1").val();
			Edate=$("#date-range2").val();
			console.log("처음 sdate: "+Sdate);
			console.log("처음 edate: "+Edate);
		 console.log("지역1 :"+optVal);
		$("#zone").on('change',function(){
	
			if(this.value!==""){
				 optVal=$(this).find(":selected").val();
				// start();
				 console.log("지역12 :"+optVal);
				
			}
		
		})
			
		$("#carName").on('change',function(){
			
			if(this.value!==""){
				carName=$(this).val();
				//start();
				console.log("carName :"+carName);
			}
		})	
		$("#addr").on('change',function(){
			if(this.value!==""){
				 addr=$(this).val();
				// start();
				console.log("addr:"+addr);
			}
		})
		
		$("#date-range1").on('change',function(){
	
			if(this.value!==""){
				 Sdate=$(this).val();
				// start();
				console.log("Sdate:"+Sdate);
			}
		})
		$("#date-range2").on('change',function(){
			if(this.value!==""){
				 Edate=$(this).val();
				// start();
				console.log("Edate:"+Edate);
			}
		})
		
	
		$(".carType").on('change',function(){
			console.log("hihihihiihihcheckvox");
			
			$("input[name=car-type]:checked").each(function(index){
				 carType=$(this).val();
				 //start();
				console.log("carType: "+carType);
			})
		})
		
		function start(){
			console.log("123");
			if(carType!= null && Sdate!=null && Edate!=null && addr!=null && carName!=null){
				console.log("start");
				doAjax();
			}
		}
		
	
	
	})
		
	function doAjax(){
		$.ajax({
			
			url:"/searchCarKeyword",
			type:"post",
			data:{optVal:optVal, carType:carType, Sdate:Sdate, Edate:Edate, addr:addr, carName:carName},
			success:function(data){
				console.log("서블릿전송")
			console.log("전송된 list "+data);
				console.log(data);
			}
		})
	}
			
	function doOpenCheck(chk){
    var obj = document.getElementsByName("car-type");
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}

	function datePick() {

		var today = getTimeStamp() ;
			console.log("hihi")
			console.log("today : "+today);
			document.getElementById("date-range1").setAttribute("min", today);
			document.getElementById("date-range2").setAttribute("min", today);
		}
	function getTimeStamp() {

	    var d = new Date();
	    var s =
	        leadingZeros(d.getFullYear(), 4) + '-' +
	        leadingZeros(d.getMonth() + 1, 2) + '-' +
	        leadingZeros(d.getDate(), 2);

	    return s;
	}
	function leadingZeros(n, digits) {

	    var zero = '';
	    n = n.toString();

	    if (n.length < digits) {
	        for (i = 0; i < digits - n.length; i++)
	            zero += '0';
	    }
	    return zero + n;
	}
	$(function() {
		
		var Sdate;
		var Edate;
		var Stime;
		var Etime;

		var today = new Date().toISOString().split('T')[0];
		var _today = new Date();
		var time = new Date().toISOString().slice(11, 16);
	
		day=_today.getDate();
		month=_today.getMonth()+1;
		console.log("month : "+month);
		console.log("day : "+day);
		if(day<10){
			day='0'+day;
		}
		
		if(month<10){
			month='0'+month;
		}
		$("#date-range1").val(
				_today.getFullYear() + "-" + month + "-"
						+ day)

		_today.setDate(_today.getDate() + 3);
		day2=_today.getDate();
	
		console.log("day2:"+day2);
		if(day2<10){
			console.log("day2입장")
			day2='0'+day2;
			console.log("day2 2:"+day2)
		}
		$("#date-range2").val(
				_today.getFullYear() + "-" + (_today.getMonth() + 1) + "-"
						+day2);

		$("#date-range1").change(function() {

		
			Sdate = $("#date-range1").val();
			if (Sdate < today || Edate < Sdate) {
				alert('이전날짜와 종료일보다 더 늦게 예약불가능합니다.');
				$("#date-range1").val(today);
			}


		
		})
		$("#date-range2").change(
				function() {
					Edate = $("#date-range2").val();
					if (Edate < Sdate) {

						alert('시작일보다 이전날짜 선택불가');
						_today.setDate(_today.getDate() + 10);
				
						$("#date-range2").val(
								_today.getFullYear() + "-"
										+ (_today.getMonth() + 1) + "-"
										+ _today.getDate());

					}
			
			
				})
	});
	<%-- $(".carlist img").click(function(){
		var user = <%=u%>;
		if(user==null){
			alert("로그인 후 이용해 주세요");
			return false;
		}
	}); --%>
	var recent = $(".carlist").html();
	$("#sort-box select").change(function(){
		var dataNm = $(this).val();//data() 의 이름은 소문자로 작성
		listSort(dataNm,1);
	});
	function listSort(dataNm, pg){
		
		//정렬하고자 하는 목록에 대해 sort 해서 다시 html로 뿌려주는 부분.
		if(dataNm=="priceAsce"){
			$(".carlist").html(
				$(".carlist a").sort(function(a, b){
					return  $(a).children().data("price") - $(b).children().data("price");
		            //만약에 역순으로 정렬하고 싶은 경우 반대로 return하면 됩니다. 
		            //return $(a).data(dataNm) - $(b).data(dataNm);
				})
			);
		}else if(dataNm=="priceDesc"){
			$(".carlist").html(
					$(".carlist a").sort(function(a, b){
						return $(b).children().data("price") - $(a).children().data("price");
			           
					})
				);	
		}else if(dataNm=="pointAsce"){
			$(".carlist").html(
					$(".carlist a").sort(function(a, b){
						return $(b).children().data("point") - $(a).children().data("point");
			           
					})
				);	
		}else{
			$(".carlist").html(recent);
		}
			paging(pg);
		
	}
	function paging(page){
		var a = $(".carlist a");
		a.hide();
		var s = 1+(15*(page-1));
		console.log(a.length);
		for(var i=s;i<=page*15;i++){
			$(a).eq(i-1).show();
		}
	}
	$(function(){
		paging(1);
		$(".page-num").eq(0).css({color:'#fac60e'});
	})
	
	$(".page-num").click(function(){
		$(".page-num").css({color:'darkgray'});
		$(this).css({color:'#fac60e'});
		paging(parseInt($(this).html()));
	});
	</script>

</body>
</html>