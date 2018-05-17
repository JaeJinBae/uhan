<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사말|유한통증의학과</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=2">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<style type="text/css">
	body{
		font-family: 'Noto Sans', sans-serif;
	}
	header{
		width:100%;
		height:108px;
		position: absolute;
		top: 0;
		left:0;
		right:0;
		bottom:0;
		margin:0 auto;
		z-index: 99;
	}
	section{
		width:100%;
		margin-top:54px;
	}
	section .mainBackground{
		width:100%;
	}
	section .mainBackground>.bgImg{
		width:100%;
		min-width:1200px;
		float:left;
	} 
	section .mainBackground .navWrap{
		width:100%;
		height:70px;
		clear:both;
		background: #0B8783;
	}
	section .mainBackground .navWrap .navUl{
		width:100%;
	}
	section .mainBackground .navWrap .navUl li{
		width:250px;
		height:70px;
		border:1px solid blue;
		float:left;
		padding:0, 15px;
	}
	section .mainBackground .navWrap .navUl li a{
		font-size: 20px;
		color:white;
		line-height: 70px;
	}
	section .contentWrap{
		width:100%;
		max-width:1200px;
		margin:0 auto;
		text-align: center;
		border:1px solid red;
		clear:both; 
	}
	.contentWrap>img{
		width:700px;
	}
</style>
</head>
<body>
	<header>
		<jsp:include page="../include/header2.jsp"></jsp:include>
	</header>
	<section>
		<div class="mainBackground">
			<img class="bgImg" src="${pageContext.request.contextPath}/resources/images/news_top_bg.png">
			<div class="navWrap">
				<ul class="navUl"> 
					<li><a href="${pageContext.request.contextPath}/"><img class="btnHome" src="${pageContext.request.contextPath}/resources/images/home.png"></a></li>
					<li><a href="#">병원소개<img src="${pageContext.request.contextPath}/resources/images/arrow.png"></a></li>
					<li><a href="#">인사말<img src="${pageContext.request.contextPath}/resources/images/arrow.png"></a></li>
				</ul>
			</div><!-- navWrap end -->
		</div><!-- mainBackground end -->
		<div class="contentWrap">
			<img src="${pageContext.request.contextPath}/resources/images/uhanFix.png">
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
	

</body>
</html>