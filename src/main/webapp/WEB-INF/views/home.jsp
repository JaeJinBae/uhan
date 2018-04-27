<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유한통증의학과</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=1">
<style>
	#wrap{
		width:100%;
		min-width:1180px;
		margin:0 auto;
		border:1px solid black;
		background: #F6F6F6;
		position: relative;
	}
	#container{ 
		width:100%;
	}
	.content{
		width:1180px;
		margin:0 auto;
		text-align: center;
		border:1px solid black;
		position: relative;
	}
	.content1_item{
		width:293px;
		height:299px;
		display:inline-block;
		border:1px solid green;
		margin:0 45px;
	}
	.content1_item>p{
		line-height: 250px;
	}
	.content2_item{
		width:100%;
		height:350px;
	}
	#quickMenu{
		width:150px;
		border:1px solid green;
		position:fixed;
		top:250px;
		right:50px;
	}
	#quickMenu ul li{
		width:100%;
		height:100px;
		border:1px solid blue;
	}
</style>
</head>
<body>
	<div id="wrap">
		<jsp:include page="include/header.jsp"></jsp:include>
		<div id="quickMenu">
			<ul>
				<li><a href="#">진료시간</a></li>
				<li><a href="#">전화번호</a></li>
				<li><a href="#">오시는길</a></li>
				<li><a href="#">퀵메뉴</a></li>
				<li><a href="#">퀵메뉴</a></li>
			</ul>
		</div>
		<div id="container">
			<div class="content">
				<div class="content1_item">
					<p><a href="#">비수술 클리닉</a></p>
				</div>
				<div class="content1_item">
					<p><a href="#">대상포진 클리닉</a></p>
				</div>
				<div class="content1_item">
					<p><a href="#">관절통증 클리닉</a></p>
				</div>
			</div> <!-- content1 종료 -->
			<div class="content">
				<div class="content2_item">
				
				</div>
			</div>
		</div> <!-- container 종료 -->
	</div><!-- wrap 종료 -->


</body>
</html>
