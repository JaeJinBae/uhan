<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		width:95%;
		min-width:1280px;
		height:700px;
		margin:0 auto;
		border:1px solid black;
		padding:20px;
		background: lightgray;
	}
	.contentWrap .leftMenu{
		width:250px; 
		height:100%;
		margin-right:20px;
		border:1px solid red;
		border-radius: 10px; 
		float:left;
		text-align: center;
		background:darkgray;
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
		border:1px solid red;
		border-radius:10px;
		float:left;
	}
</style>
</head>
<body>
	<jsp:include page="include/header.jsp"/>
	<div class="contentWrap">
		<div class="leftMenu">
			<h2>통계 리스트</h2>
			<ul> 
				<li> <a href="#"> 일별 방문 통계</a></li>
				<li> <a href="#"> 월별 방문 통계</a></li>
				<li> <a href="#"> 브라우저 통계</a></li>
				<li> <a href="#"> OS 통계</a></li>
			</ul>
		</div>
		<div class="centerMenu">
		
		</div>
	</div>
</body>
</html>