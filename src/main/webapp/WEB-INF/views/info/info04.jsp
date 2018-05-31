<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>진료안내 | 유한통증의학과</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=2">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<style type="text/css">
@media only screen and (min-width:1100px){
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
		margin-bottom:100px;
	}
	section .mainBackground{
		width:100%;
	}
	section .mainBackground>.bgImg{
		width:100%;
		/* min-width:1200px; */
		height:346px;
		float:left;
	} 
	.bgText{
		width:1200px;
		position: absolute;
		top:170px;
		left:0;
		right:0;
		bottom:0;
		margin:0 auto;
	}
	.bgText>h1{
		color:white;
		font-size:40px;
		font-weight:500;
		margin-bottom:15px;
	}
	.bgText>p{
		color:white;
		font-size:20px;
		font-weight: 300;
	}
	section .mainBackground .navWrap{
		width:100%;
		height:70px;
		clear:both;
		background: #0B8783;
		position: relative;
		z-index: 99;
	}
	section .mainBackground .navWrap .navUl{
		width:1200px;
		margin:0 auto;
	}
	section .mainBackground .navWrap .navUl>li{
		height:70px;
		border-left:1px solid #3C9F9C;
		float:left;
		text-align: center;
	}
	section .mainBackground .navWrap .navUl>li a{  
		font-size: 20px;
		color:white;
		line-height: 70px;
		margin:0 40px;
	}
	section .mainBackground .navWrap .navUl>li:first-child{
		text-align: center;
	}
	section .mainBackground .navWrap .navUl>li:last-child{
		border-right:1px solid #3C9F9C;
	}
	section .mainBackground .navWrap .navUl>li:first-child a{
		line-height: 75px;
	}
	section .mainBackground .navWrap .navUl>li a>.btnArrow{
		margin-left:55px;
		width:20px;
	}
	.sub_subDropdown{
		display: none;
		background: #376d6a;
	} 
	.sub_subDropdown>li{
		text-align: left;
		border-bottom:1px solid #9bb6b5;
	}
	.sub_subDropdown>li a{
		height:60px; 
		line-height: 60px !important;
		font-size: 18px !important;
	}
	.sub_subDropdown>li a:hover{
		font-weight: bold;
	}
	section .mainBackground .navWrap .navUl>li:hover >.sub_subDropdown {
		display: block;
	}
	section .contentWrap{
		width:100%;
		max-width:1200px;
		margin:0 auto;
		margin-top:100px;
		text-align: center;
		clear:both;
		position:relative;
	}
	.contentWrap>img{
		width:1000px;
	}
	/* quick menu */
	.quick{
		width:110px;
		text-align: center;
		position: absolute;
		top:0;
		right:-150px;
		z-index: 999;
	}
	.quick ul li{
		width:100%;
		height:100px;
		border-bottom:1px solid rgba(255,255,255, 0.5);
		background: #becdcd;
	}
	.quick ul li:first-child{
		background: #0b8783;
	}
	.quick ul li:first-child p{
		color:white;
		font-size:22px;
		padding-top:17px;
	}
	.quick ul li a{
		width:100px;
		height:100px;
		color:white;
	}
	.quick ul li a img{
		margin-top:18px;
		margin-bottom:12px;
	}
	.quick ul li:last-child a img{
		margin-top:27px;
		margin-bottom:5px;
	}
	.quick ul li a span{
		font-size:14px;
	}
	.quick ul li:last-child a span{
		font-size:16px;
	}
	.sub_title{
		width:100%;
		margin:0 auto;
		margin-bottom:70px;
	}
	.sub_title p{
		font-size:25px;
		margin-bottom:20px; 
	}
	.sub_title h1{
		font-size:35px;
		font-weight: 500;
	}
	.content{
		width:100%;
	}
	.content h2{
		font-size:30px;
		font-weight:500;
	}
	.content .diaIcon{
		 margin-bottom:30px;
	}
	.content>img:not(.diaIcon){
		margin-top:80px;
		width:750px;
	}
	hr{ 
		width:90%;
		border:0;
		border-top:2px solid gray;
		margin:0 auto;
		margin-top:100px;
		margin-bottom:100px;
	}
	.content ul{
		width:475.6px;
		margin:0 auto;
		margin-top:85px;
	}
	.content ul li{
		text-align: left;
		margin-top:35px;
		overflow: hidden;
	}
	.content ul li img{
		width:40px;
		float:left;
		margin-right:35px; 
	}
	.content ul li:nth-child(2) img{
		margin-top:2px;
	}
	.content ul li p{
		float:left;
		font-size:20px;
	}
	.content ul li:nth-child(2) p{
		line-height: 18px;
	}
	.content ul li:nth-child(3) p{
		line-height: 45px;
	}
	.content ul li p span{
		font-size:20px;
		font-weight: 600;
	}
}
@media only screen and (min-width:320px) and (max-width:767px){
	body{
		font-family: 'Noto Sans', sans-serif;
		font-size: 20px;
	}
	.quick{
		display: none;
	}
	.navWrap{
		display: none;
	}
	.mainBackground img{
		width:100%;
		min-height:160px;
		max-height: 160px;
	}
	.mainBackground{
		position: relative;
		margin-bottom: 20px;
	}
	.mainBackground .bgText{
		position: absolute;
		top:30px;
		left:15px;
		color:white;
		width:90%;
	}
	.mainBackground .bgText h1{
		font-weight: 400;
		margin-bottom: 15px;
		font-size: 1.5em;
	}
	.mainBackground .bgText p{
		font-weight: 300;
		letter-spacing: 0.1em;
	}
	.sub_title p{
		text-align: center;
		margin-bottom: 10px;
	}
	.sub_title h1{
		text-align: center;
		font-size: 1.5rem;
		font-weight: 550;
	}
	.content{
		text-align: center;
	}
	.content .diaIcon{
		width:35px !important;
		margin-top: 15px;
		margin-bottom: 15px;
	}
	.content h2{
		font-size: 1.2em;
		font-weight: 550;
		margin-bottom: 15px;
	}
	.content img{
		width:100%;
		margin-bottom: 15px;
		
	}
	.content hr{
		width:90%;
		margin: 0 auto;
		margin-top: 15px;
		margin-bottom: 15px;
	}
	.content ul {
		width:80%;
		margin: 0 auto;
		margin-top: 25px;
	}
	.content ul li{
		text-align: center;
	}
	.content ul li img{
		width:25px;
	}
	.content ul li p{
		float: right;
		width:90%;
		text-align: left;
		margin-left: 5px;
	}
	.content ul li p span{
		font-weight: 550;
	}
	
}
</style>
<script type="text/javascript">
	$(function(){
        $(window).scroll(function() {
            var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
            if(position>500){
            	$(".quick").stop().animate({"top":position-450+"px"},1000);	
            }
            if(position<=500){
            	$(".quick").stop().animate({"top":0+"px"},1000);
            }
        });
        
        $(".quick ul li:last-child a").click(function(){
        	$("html").animate({scrollTop:"0"},500);
        	return false;
        });
	});
</script>
</head>
<body>
	<header>
		<jsp:include page="../include/header.jsp"></jsp:include>
	</header>
	<section>
		<div class="mainBackground">
			<img class="bgImg" src="${pageContext.request.contextPath}/resources/images/news_top_bg.png">
			<div class="bgText">
				<h1>병원소개</h1>
				<p>
					환자와 소통하며 고객감동을 실천하고<br>
					든든한 버팀목이 되어주는 유한통증의학과입니다.
				</p>
			</div>
			<div class="navWrap">
				<ul class="navUl"> 
					<li><a href="${pageContext.request.contextPath}/"><img class="btnHome" src="${pageContext.request.contextPath}/resources/images/home.png"></a></li>
					<li>
						<a href="info01">병원소개<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="clinic01_01">진료분야</a></li>
							<li><a href="notice">병원소식</a></li>
						</ul>
					</li>
					<li>
						<a href="info04">진료안내<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="info01">인사말</a></li>
							<li><a href="info02">의료진 소개</a></li>
							<li><a href="info03">병원 둘러보기</a></li>
							<li><a href="location">오시는길</a></li>
						</ul>	
					</li>
				</ul>
			</div><!-- navWrap end -->
		</div><!-- mainBackground end -->
		<div class="contentWrap">
			<div class="quick">
				<ul>
					<li><p>Quick<br>Menu</p></li>
					<li><a href="advice"><img src="${pageContext.request.contextPath}/resources/images/quick_sangdam.png" style="width:40px;"><br><span>진료/비용 상담</span></a></li>
					<li><a href="freqQuestion"><img src="${pageContext.request.contextPath}/resources/images/quick_freqQues.png" style="width:40px;"><br><span>자주하는 질문</span></a></li>
					<li><a href="location"><img src="${pageContext.request.contextPath}/resources/images/quick_location.png" style="width:30px;"><br><span>오시는 길</span></a></li>
					<li><a href=""><img src="${pageContext.request.contextPath}/resources/images/quick_top.png" style="width:20px;"><br><span>TOP</span></a></li>
				</ul>
			</div><!-- quick end -->
			<div class="sub_title">
				<p>|</p>
				<h1>진료안내</h1>				
			</div>
			<div class="content">
				<img class="diaIcon" src="${pageContext.request.contextPath}/resources/images/icon_dia.png">
				<h2>사명/비전</h2>
				<img src="${pageContext.request.contextPath}/resources/images/info04img1.png">
				<hr>
				<img class="diaIcon" src="${pageContext.request.contextPath}/resources/images/icon_dia.png">
				<h2>공유가치</h2>
				<h2>(Core Value)</h2>
				<img src="${pageContext.request.contextPath}/resources/images/info04img2.png">
				<hr>
				<img class="diaIcon" src="${pageContext.request.contextPath}/resources/images/icon_dia.png">
				<h2>우리의 선언</h2>
				<ul>
					<li><img src="${pageContext.request.contextPath}/resources/images/info04icon1.png"><p>우리는 <span>환자분을 따뜻하게 환대</span>한다.</p></li>
					<li><img src="${pageContext.request.contextPath}/resources/images/info04icon2.png"><p>우리는 <span>환자분의 말을 경청하고 공감</span>한다.</p></li>
					<li><img src="${pageContext.request.contextPath}/resources/images/info04icon3.png"><p>우리는 <span>환자분의 통증을 정확히 진단</span>한다.</p></li>
					<li><img src="${pageContext.request.contextPath}/resources/images/info04icon4.png"><p>우리는 <span>환자분의 통증 완화</span>를 위해 최선을 다한다.</p></li>
					<li><img src="${pageContext.request.contextPath}/resources/images/info04icon5.png"><p>우리는 <span>환자분과 통증완화에 도움되는 운동 및<br>심리적 지지</span>를 한다.</p></li>
				</ul>
			</div>
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>