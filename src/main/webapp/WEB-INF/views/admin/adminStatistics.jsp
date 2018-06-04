<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	.contentWrap{
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
	}
	table{
		width:100%;
	}
</style>
<script type="text/javascript">
	$(function(){	
 		$("#userInfo").append("<tr></tr>");
	});
</script>
</head>
<body>
	<jsp:include page="include/header.jsp"/>
	<div class="contentWrap">
		<div class="leftMenu">
			<h2>통계 리스트</h2>
			<ul> 
				<li> <a href="#"> 날짜별 방문 통계</a></li>
				<li> <a href="#"> 브라우저 통계</a></li>
				<li> <a href="#"> OS 통계</a></li>
			</ul>
		</div>
		<div class="centerMenu">
			<fmt:formatDate value="${today }" pattern="yyyy년 MM월 dd일" var="now"/>
			<fmt:formatDate value="${today }" pattern="yyyy" var="year"/>
			<fmt:formatDate value="${today }" pattern="MM" var="month"/>
			<fmt:formatDate value="${today }" pattern="dd" var="date"/>
			<table border="1">
				<tr>
					<th colspan="2" id="now">오늘날짜 : ${now }</th>
					<th colspan="2" id="total">전체 접속자 : ${total }명 </th>
					<th colspan="2" id="today">오늘방문자 : ${todayCount }명</th>
				</tr>
				<tr>
					<td><input type="text" placeholder="yyyy" value="${year }"></td>
					<td>-</td>
					<td><input type="text" placeholder="MM" value="${month }"></td>
					<td>-</td>
					<td><input type="text" placeholder="dd" value="${date }"></td>
					<td><button>검색</button></td>
				</tr>
			</table>		
			<table  border="1" id="userInfo">
				<tr>
					<td>접속경로</td>
					<td>브라우저</td>
					<td>디바이스</td>
					<td>일시</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>