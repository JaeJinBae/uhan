<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유한통증의학과 관리자페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<script>
	
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
		goMain();
		goBrowser();
		goOs();
		var total  = "${keyCount}";
		
		var chrome = ("${chrome}"/total)*100;
		var ex = ("${ex}"/total)*100;
		var safari = ("${safari}"/total)*100;
		var sambrowser = ("${sambrowser}"/total)*100;
		var naver = ("${naver}"/total)*100;
		var opera = ("${opera}"/total)*100;
		var etc = ("${etc}"/total)*100;
		
		$("#chrome").text(chrome.toFixed(1)+"%");
		$("#ex").text(ex.toFixed(1)+"%");
		$("#safari").text(safari.toFixed(1)+"%");
		$("#sambrowser").text(sambrowser.toFixed(1)+"%");
		$("#naver").text(naver.toFixed(1)+"%");
		$("#opera").text(opera.toFixed(1)+"%");
		$("#etc").text(etc.toFixed(1)+"%");
		
		var keyword = "${keyword}";
		
		$("#year").val(keyword.substring(0, 4));
		$("#month").val(keyword.substring(5,7));
		$("#date").val(keyword.substring(8,10));
		
		$("#searchBtn").click(function(){
			var year = $("#year").val();
 			var month = $("#month").val();
 			var date = $("#date").val();
 			
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
 			
 			$("#searchBtn").attr("href","statisticsBrowser?keyword="+search);
 			
		});
		
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
<body>
	<jsp:include page="include/header.jsp"/>
	<div class="contentWrap">
		<div class="leftMenu">
			<h2>통계 리스트</h2>
			<ul> 
				<li> <a href="#"  id="statisticsDate"> 날짜별 방문 통계</a></li>
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
			<table>
				<tr>
					<td>브라우저</td>
					<td>비율</td>
				</tr>
				<tr>
					<td>Chrome</td>
					<td id="chrome"></td>
				</tr>
				<tr>
					<td>Explorer</td>
					<td id="ex"></td>
				</tr>
				<tr>
					<td>Safari</td>
					<td id="safari"></td>
				</tr>
				<tr>
					<td>SamsungBrowser</td>
					<td id="sambrowser"></td>
				</tr>
				<tr>
					<td>Naver App</td>
					<td id="naver"></td>
				</tr>
				<tr>
					<td>Opera</td>
					<td id="opera"></td>
				</tr>
				<tr>
					<td>etc</td>
					<td id="etc"></td>
				</tr>
			</table>	
		</div>
		<script>
			
		</script>
	</div>
</body>
</html>