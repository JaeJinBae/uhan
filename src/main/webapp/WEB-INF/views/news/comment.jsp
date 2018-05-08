<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유한통증의학과 시술후기</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=2">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<style type="text/css">
	body{
		font-family: 'Noto Sans', sans-serif;
	}
	#bodyWrap{
		width:100%;
		height:2000px;
		position: relative;
	}
	#header{
		width:100%;
		margin:0 auto;
		z-index: 9999;
	}
	#footer{
		width:100%;
		position: absolute;
		bottom:0;
	}
	#mainBackground{
		width:100%;
		min-width:1200px;
		height:25%;
		clear:both;
		background: url("${pageContext.request.contextPath}/resources/images/news_top_bg.png") no-repeat;
		position:absolute;
		top:54px;
		left:50%;
		transform:translateX(-50%);
		z-index: -1;
	}
	#mainBackground #mainIntro{
		width:500px;
		height:100px;
		margin-top:130px;
		margin-left:18%;
		color:white;
	}
	#mainBackground #mainIntro h2{
		font-size: 2.7em;
		margin-bottom:13px;
	}
	#mainBackground #mainIntro p{
		font-size: 1.4em;
		margin-bottom:5px;
	}
	#centerNav{
		width:100%;
		height:60px;
		background: #0B8783;
		position: absolute;
		top:400px;
	}
	#centerNav>ul{
		width:600px;
		height:60px;
		/* line-height: 60px; */
		margin-left:16%;
	}
	#centerNav>ul li{
		width:200px;
		height:60px;
		float:left;
		color:white;
		font-size: 1.3em;
		border-right:1px solid #3C9F9C;
		border-left:1px solid #3c9f9c;
		padding-right:15px;
		padding-left:15px; 
		line-height: 60px;
		text-align: center;
	}
	#centerNav>ul li:first-child{
		width:50px;
		line-height: 70px;
	}
	#contentWrap{
		width:1200px;
		margin:0 auto;
		position: absolute;
		top:500px;
		left:50%;
		transform:translateX(-50%);
		text-align: center;
	}
	#contentWrap>img{
		width:700px;
	}
</style>
</head>
<body>
	<div id="bodyWrap">
		<div id="header">
			<jsp:include page="../include/header2.jsp"></jsp:include>
		</div>
		<div id="mainBackground">
			<div id="mainIntro">
				<h2>병원소식</h2>
				<p>유한통증의학과의 다양한 소식을 만나볼 수 있습니다.</p>
			</div>
		</div>
		<div id="centerNav">
			<ul>
				<li><a href="${pageContext.request.contextPath}"><img id="btnHome" src="${pageContext.request.contextPath}/resources/images/home.png"></a></li>
				<li>병원소식&nbsp;&nbsp;&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/images/arrow.png"></li>
				<li>시술후기&nbsp;&nbsp;&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/images/arrow.png"></li>
			</ul>
		</div>
		<div id="contentWrap">
			<img src="${pageContext.request.contextPath}/resources/images/uhanFix.png">
		</div><!-- contentWrap 종료 --> 
		<div id="footer">
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</div>
	</div><!-- bodyWrap 종료 -->
	

</body>
</html>