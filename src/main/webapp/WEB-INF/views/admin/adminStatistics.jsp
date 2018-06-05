<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유한통증의학과 관리자페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
	*{
		margin:0;
		padding:0;
	}
	a{
		display:inline-block;
		color:black;
		text-decoration: none;
	}
	/* .contentWrap{
		width:100%;
		min-width:1280px;
		height:700px;
		margin:0 auto;
		padding:20px;
		background: lightgray;
		overflow: hidden;
	}
	.contentWrap .leftMenu{
		width:250px; 
		height:100%;
		margin-right:20px;
		padding-top:15px;
		padding-bottom:15px;
		border-radius: 10px; 
		float:left;
		text-align: center;
		background:white;
	}
	.contentWrap .leftMenu h2{
		width:220px;
		margin:0 auto;
		margin-bottom:15px;
		background: url('${pageContext.request.contextPath}/resources/images/arrow2.gif') no-repeat 10px center;
	}
	.contentWrap .leftMenu ul{
		width:80%;
		margin-left:40px;
		text-align: left;
	}
	.contentWrap .leftMenu ul li{
		list-style:none;
	}
	.contentWrap .leftMenu ul li:before{
		content:">";
	}
	.contentWrap .leftMenu ul li a{
		font-weight: bold;
	}
	.contentWrap .centerMenu{
		width:70%;
		min-width:700px;
		height:100%;
		border-radius:10px;
		float:left;
		background: white;
	} */
	table{
		width:100%;
	}
	.page{
		clear:both;
		width:626px; 
		margin:70px auto;
		text-align: center;
	}
	.page ul li{
		width:45px;
		height:40px;
		margin:0 auto;
		list-style: none;
		display: inline-block;
		text-align:center;
		border:1px solid #e9e9e9;
	}
	.active1{
		background: #00B4AE;
	}
	.active2{
		font-weight: bold;
		color:white;
	}
	.page ul li a{
		font-size:1.1em;
		line-height: 40px;
		display: block;
	}
	#searchBtn{
		cursor: pointer;
	}
</style>
<script type="text/javascript">
	
	var d = new Date();
	var year = d.getFullYear();
	var month  = d.getMonth()+1;
	var date = d.getDate();
	
	if(month<10){
		month = "0"+month;
	}
	if(date<10){
		date = "0"+date;
	}
	
	$(function(){	
		
		var keyword = "${keyword}";
		
		$("#year").val(keyword.substring(0, 4));
		$("#month").val(keyword.substring(5,7));
		$("#date").val(keyword.substring(8,10));
		
		$("#searchBtn").click(function(){
 			
 			var number = /[^0-9]/;
 				
 			var year = $("#year").val();
 			var month = $("#month").val();
 			var date = $("#date").val();
 		
 			
 			if(year=="" && month==""&& date==""){
 				alert("날짜를 입력해 주세요");
 				return "admin/adminStatistics";
 			}
 			
 			if((year==""&&month!=""&&date!="")||(year==""&&month!="")||(year==""&&date!="")){
 				alert("년도를 먼저 입력해 주세요");
 				$("#year").focus();
 				return;
 			}
 			
 			if(year!=""&&month==""&&date!=""){
 				alert("월을 입력해 주세요");
 				$("#month").focus();
 				return;
 			} 		
 			var search ="";
 			
 			if(date==""){
 				search = year+"-"+month;
 			}else{
 				search = year+"-"+month+"-"+date;
 			}
 			if(year!=""&&month==""&&date==""){
 				alert("년도분석");
 			}else{
 				$("#searchBtn").attr("href","statistics${pageMaker.makeQuery(1)}&searchType=&keyword="+search);
 			}
 			
 			
 		});
		
		goMain();
		goBrowser();
	});
	
	function goMain(){
		$("#statisticsDate").attr("href","statistics?keyword="+year+"-"+month+"-"+date);
	}
	function goBrowser(){
		$("#goBrowser").attr("href","statisticsBrowser?keyword="+year+"-"+month+"-"+date);
	}
	function goOs(){
		$("#goOs").attr("href","statisticsOs?keyword?keyword="+year+"-"+month+"-"+date);
	}
</script>
</head>
<body>
	<jsp:include page="include/header.jsp"/>
	<div class="contentWrap">
		<div class="leftMenu">
			<h2>통계 리스트</h2>
			<ul> 
				<li> <a href="#" id="statisticsDate"> 날짜별 방문 통계</a></li>
				<li> <a href="#" id="goBrowser"> 브라우저 통계</a></li>
				<li> <a href="#" id="goOs"> OS 통계</a></li>
			</ul>
		</div>
		<div class="centerMenu">
			<fmt:formatDate value="${today }" pattern="yyyy년 MM월 dd일" var="now"/>
			<table border="1">
				<tr>
					<th colspan="2" id="now">오늘날짜 : ${now }</th>
					<th colspan="2" id="total">전체 접속자 : ${total }명 </th>
					<th colspan="2" id="today">오늘방문자 : ${todayCount }명</th>
				</tr>
				<tr>
					<td><input type="text" placeholder="yyyy" value="${year }" id="year"></td>
					<td>-</td>
					<td><input type="text" placeholder="MM" value="${month }" id="month"></td>
					<td>-</td>
					<td><input type="text" placeholder="dd" value="${date }" id="date"></td>
					<td><a href="" id="searchBtn">검색</a></td>
				</tr>
			</table>		
			<table  border="1" id="userInfo">
				<tr id="userInfo_tr">
					<td>접속경로</td>
					<td>브라우저</td>
					<td>디바이스</td>
					<td>일시</td>
				</tr>
				<c:if test="${list.size() > 0 }">
					<c:forEach var="list" items="${list }">
					<tr>
						<td>${list.url }</td>
						<td>${list.browser }</td>
						<td>${list.device }</td>
						<fmt:formatDate value="${list.connectdate }" var="connectdate" pattern="yyyy-MM-dd HH:mm:ss"/>
						<td>${connectdate }</td>
					</tr>
				</c:forEach>
				</c:if>
				<c:if test="${list.size() == 0 }">
					<tr>
						<td colspan="4">방문자가 없습니다.</td>
					</tr>
				</c:if>
			</table>
			
			<div class="page">
					<ul>
						<c:if test="${pageMaker.prev}">
							<li><a href="${pageMaker.makeQuery(pageMaker.startPage-1)}&searchType=&keyword=${keyword }">&laquo;</a></li>
						</c:if>
						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
							<li ${pageMaker.cri.page == idx? 'class=active1':''}><a href="${pageMaker.makeQuery(idx)}&searchType=&keyword=${keyword }" ${pageMaker.cri.page == idx? 'class=active2':''}>${idx}</a></li>
						</c:forEach>
						
						<c:if test="${pageMaker.next}">
							<li><a href="${pageMaker.makeQuery(pageMaker.endPage+1)}&searchType=&keyword=${keyword }">&raquo;</a></li>
						</c:if>
						
					</ul>
				</div><!-- page end -->
		
		</div>
		<script>
			
		</script>
	</div>
</body>
</html>