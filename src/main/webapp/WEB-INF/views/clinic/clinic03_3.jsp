<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관절통증 클리닉 | 유한통증의학과</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=2">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
@media only screen and (min-width:1100px){
	body{
		font-family: 'Noto Sans', sans-serif;
	}
	header{
		width:100%;
		height:75px;
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
		opacity:0.9;
	}
	.bgText>p{
		color:white;
		font-size:20px;
		font-weight: 300;
		opacity:0.8;
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
		margin-left:50px; 
		margin-top:26px;
		float:right;
		width:22px;
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
		height:52px; 
		line-height: 52px !important;
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
	/* quick menu */
	.quick{
		width:110px;
		text-align: center;
		position: absolute;
		top:75px;
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
	.clinic_title{
		width:100%;
		margin:0 auto;
		margin-bottom:70px;
	}
	.clinic_title p{
		font-size:25px;
		margin-bottom:20px; 
	}
	.clinic_title h1{
		font-size:35px;
		font-weight: 500;
	}
	/* clinicNav */
	.clinic_sub_nav{
		width:100%;
		margin-bottom:80px;
	}
	.clinic_sub_nav ul{
		width:100%;
		margin:0 auto;
		overflow: hidden;
	}
	.clinic_sub_nav ul li{
		width:24.9%;
		float:left;
		background: #dcdcdc;
	}
	.clinic_sub_nav ul li a{
		width:100%;
		line-height:50px;
		color:white;
		font-size:20px;
		color:#888686;
	}
	.clinic_sub_nav ul li:nth-child(3){
		background: #00b4ae;
	}
	.clinic_sub_nav ul li:nth-child(3) a{
		color:white; 
	}
	.content{
		width:85%;
		margin:0 auto;
	}
	.content .diaIcon{
		width:45px;
		margin-bottom:30px;
	}
	.content .subTitle{
		font-size:32px;
		font-weight:500;
	}
	.content00{
		width:100%;
		margin:0 auto;
		margin-top:100px;
		overflow: hidden;
	}
	
	.content00 .content_small_title{
		/* width:26%; */
		width:275px;
		float:left;
		text-align: left;
	}
	.content00 .content_small_title hr{
		width:100%;
		border:0;
		border-top:4px solid #00938e;
	}
	.content00 .content_small_title p{
		font-size:35px;
		color:#00938e;
		font-weight:500;
	}
	.content00 .content_small_title span{
		font-size:35px;
		color:black;
		font-weight:500;
	}
	/* 시술 이란? */
	.content00 .content_small_content{
		/* width:58%; */
		width:633px;
		float:right;
		text-align: left;  
		color:#2d2d2d;
		font-size:19px;
		line-height: 35px;
	}
	.first_child{ 
		line-height: 28px !important;
	}
	/* 적용질환 */
	.content00 .content_small_content ul{
		float:left;
	}
	.content00 .content_small_content ul:first-child{
		width:140px;
	}
	.content00 .content_small_content ul:last-child{
		width:586px;
	}
	.content00 .content_small_content ul li{
		list-style: none;
		font-size:19px;
		color:#2d2d2d;
		list-style-position: inside;
		line-height: 23px;
		margin-bottom:15px;
	}
	.content00 .content_small_content .ccc{
		width:100%; 
		overflow: hidden;
		margin-bottom:15px;
	}
	.content00 .content_small_content .ccc img{
		float:left;
		width:80px;
		margin-right:20px; 
	}
	.content00 .content_small_content .ccc>p{
		float:left;
		font-size:19px;
		margin-top:9px;
		line-height: 21px;
	}
	.ccc>h2{
		font-size: 22px;
	}
	.ccc .dot{
		font-size:26px;
		font-weight:bold;
	}
	.content00 .content_small_content .ccc ul{
		width:100%;
	}
	.content00 .content_small_content .ccc ul li{
		width:100%;
		list-style: none;
		line-height: 27px;
		margin-top:10px;
	}
	.content00 .small_content ul li:before{
		content:"- ";
	}
	.mContent{
		display:none;
	}
}
@media only screen and (min-width:768px) and (max-width:1099px){
	body{
		font-family: 'Noto Sans', sans-serif;
	}
	header{
		width:100%;
		height:75px;
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
		margin-top:27px;
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
		width:95%;
		position: absolute;
		top:170px;
		left:15px;
		right:0;
		bottom:0;
		margin:0 auto;
	}
	.bgText>h1{
		color:white;
		font-size:40px;
		font-weight:500;
		margin-bottom:15px;
		opacity:0.9;
	}
	.bgText>p{
		color:white;
		font-size:20px;
		font-weight: 300;
		opacity:0.8;
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
		width:100%;
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
		margin-left:50px; 
		margin-top:26px;
		float:right;
		width:22px;
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
		height:52px; 
		line-height: 52px !important;
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
		max-width:1100px;
		margin:0 auto;
		margin-top:80px;
		text-align: center;
		clear:both;
		position:relative;
	}
	/* quick menu */
	.quick{
		display:none;
	}
	.clinic_title{
		width:100%;
		margin:0 auto;
		margin-bottom:70px;
	}
	.clinic_title p{
		font-size:25px;
		margin-bottom:20px; 
	}
	.clinic_title h1{
		font-size:35px;
		font-weight: 500;
	}
	/* clinicNav */
	.clinic_sub_nav{
		width:100%;
		margin-bottom:80px;
	}
	.clinic_sub_nav ul{
		width:100%;
		margin:0 auto;
		overflow: hidden;
	}
	.clinic_sub_nav ul li{
		width:24.9%;
		float:left;
		background: #dcdcdc;
	}
	.clinic_sub_nav ul li a{
		width:100%;
		line-height:50px;
		color:white;
		font-size:20px;
		color:#888686;
	}
	.clinic_sub_nav ul li:nth-child(3){
		background: #00b4ae;
	}
	.clinic_sub_nav ul li:nth-child(3) a{
		color:white; 
	}
	.content{
		width:85%;
		margin:0 auto;
	}
	.content .diaIcon{
		width:45px;
		margin-bottom:30px;
	}
	.content .subTitle{
		font-size:32px;
		font-weight:500;
	}
	.content00{
		width:100%;
		margin:0 auto;
		margin-top:100px;
		overflow: hidden;
	}
	
	.content00 .content_small_title{
		/* width:26%; */
		width:255px;
		float:left;
		text-align: left;
	}
	.content00 .content_small_title hr{
		width:100%;
		border:0;
		border-top:4px solid #00938e;
	}
	.content00 .content_small_title p{
		font-size:35px;
		color:#00938e;
		font-weight:500; 
	}
	.content00 .content_small_title span{
		font-size:35px;
		color:black;
		font-weight:500;
	}
	/* 시술 이란? */
	.content00 .content_small_content{
		/* width:58%; */
		width:586px;
		float:right;
		text-align: left;  
		color:#2d2d2d;
		font-size:19px;
		line-height: 35px;
		margin-top:50px;
	}
	.first_child{ 
		line-height: 26px !important;
	}
	/* 적용질환 */
	.content00 .content_small_content ul{
		float:left;
	}
	.content00 .content_small_content ul:first-child{
		margin-right:40px;
		width:140px;
	}
	.content00 .content_small_content ul:last-child{
		width:545px;
	}
	.content00 .content_small_content ul li{
		list-style: none;
		font-size:19px;
		color:#2d2d2d;
		list-style-position: inside;
	}
	.content00 .content_small_content .ccc{
		width:100%; 
		overflow: hidden;
		margin-bottom:15px;
	}
	.content00 .content_small_content .ccc img{
		float:left;
		width:80px;
		margin-right:20px; 
	}
	.content00 .content_small_content .ccc>p{
		float:left;
		font-size:19px;
		margin-top:9px;
		line-height: 21px;
	}
	.ccc>h2{
		font-size: 22px;
	}
	.ccc .dot{
		font-size:26px;
		font-weight:bold;
	}
	.content00 .content_small_content .ccc ul{
		width:100%;
	}
	.content00 .content_small_content .ccc ul li{
		width:100%;
		list-style: none;
		line-height: 27px;
		margin-top:10px;
	}
	.content00 .small_content ul li:before{
		content:"- ";
	}
	.mContent{
		display:none;
	}
}
@media only screen and (min-width:320px) and (max-width:767px){
	html{
		font-family: 'Noto Sans', sans-serif;
		font-size: 20px;
	}
	.quick{
		display: none;
	}
	.mainBackground>img{
		width:100%;
		min-height:160px;
		max-height: 160px;
		float:left;
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
		opacity:0.9;
	}
	.mainBackground .bgText p{
		font-weight: 300;
		opacity:0.8;
	}
	section .mainBackground .navWrap{
		width:100%;
		height:45px;
		clear:both;
		background: #0B8783;
		position: relative;
		z-index: 10;
	}
	section .mainBackground .navWrap .navUl{
		width:100%;
		margin:0 auto;
	}
	section .mainBackground .navWrap .navUl>li{
		height:45px;
		border-left:1px solid #3C9F9C;
		float:left;
		text-align: center;
	}
	section .mainBackground .navWrap .navUl>li:last-child{
		width:47%;
		text-align: left;
	}
	section .mainBackground .navWrap .navUl>li a{  
		font-size: 17px;
		color:white;
		line-height: 45px;
		margin:0 15px;
	}
	section .mainBackground .navWrap .navUl>li:first-child{
		text-align: center;
	}
	section .mainBackground .navWrap .navUl>li:last-child{
		border-right:1px solid #3C9F9C;
	}
	section .mainBackground .navWrap .navUl>li:first-child a{
		line-height: 51px;
	}
	section .mainBackground .navWrap .navUl>li a>.btnArrow{
		margin-left:25px; 
		margin-top:14px;
		float:right;
		width:20px;
	}
	section .mainBackground .navWrap .navUl>li:last-child a>.btnArrow{
		margin-left:5px;
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
		height:40px; 
		line-height: 40px !important;
		font-size: 16px !important;
	}
	.sub_subDropdown>li a:hover{
		font-weight: bold;
	}
	section .mainBackground .navWrap .navUl>li:hover >.sub_subDropdown {
		display: block;
	}
	.clinic_title p{
		text-align: center;
		margin-bottom: 10px;
	}
	.clinic_title h1{
		text-align: center;
		font-size: 1rem;
		font-weight: 550;
	}
	.clinic_sub_nav{
		margin-top: 40px;
	}
	.clinic_sub_nav ul{
		width:100%;
		margin:0 auto;
	}
	.clinic_sub_nav ul li{
		width:24%;
		height:40px;
		line-height:40px;
		text-align:center;
		float: left;
		background: #dcdcdc;
	}
	.clinic_sub_nav ul li a{
		color:#888686;
	}
	.clinic_sub_nav ul li:FIRST-CHILD{
		width:31%;
	}
	.clinic_sub_nav ul li:nth-child(2){
		width:20%;
	}
	.clinic_sub_nav ul li:nth-child(3){
		background: #00b4ae;	
	}
	.clinic_sub_nav ul li:nth-child(3) a{
		color:white;
	}
	
	.content{
		display:none;
	}
	.mContent{
		width:100%;
	}
	.mContent>img{
		width:100%;
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
			<img class="bgImg" src="${pageContext.request.contextPath}/resources/images/clinic_top_bg.png">
			<div class="bgText">
				<h1>진료분야</h1>
				<p>
					오랜기간 풍부한 임상경험으로 정확한<br>
					진료와 치료를 선사하는 유한통증의학과입니다.
				</p>
			</div>
			<div class="navWrap">
				<ul class="navUl"> 
					<li><a href="${pageContext.request.contextPath}/"><img class="btnHome" src="${pageContext.request.contextPath}/resources/images/home.png"></a></li>
					<li>
						<a href="${pageContext.request.contextPath}/clinic01_01">진료분야<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="${pageContext.request.contextPath}/info01">병원소개</a></li>
							<li><a href="${pageContext.request.contextPath}/notice">병원소식</a></li>
						</ul>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/clinic03_01">관절통증 클리닉<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="${pageContext.request.contextPath}/clinic01_01">비수술 클리닉</a></li>
							<li><a href="${pageContext.request.contextPath}/clinic02">대상포진 클리닉</a></li>
						</ul>	
					</li>
				</ul><!-- navUl end -->
			</div><!-- navWrap end -->
		</div><!-- mainBackground end -->
		<div class="contentWrap">
			<div class="quick"> 
				<ul>
					<li><p>Quick<br>Menu</p></li>
					<li><a href="${pageContext.request.contextPath}/advice"><img src="${pageContext.request.contextPath}/resources/images/quick_sangdam.png" style="width:40px;"><br><span>진료/비용 상담</span></a></li>
					<li><a href="${pageContext.request.contextPath}/freqQuestion"><img src="${pageContext.request.contextPath}/resources/images/quick_freqQues.png" style="width:40px;"><br><span>자주하는 질문</span></a></li>
					<li><a href="${pageContext.request.contextPath}/location"><img src="${pageContext.request.contextPath}/resources/images/quick_location.png" style="width:30px;"><br><span>오시는 길</span></a></li>
					<li><a href=""><img src="${pageContext.request.contextPath}/resources/images/quick_top.png" style="width:20px;"><br><span>TOP</span></a></li>
				</ul>
			</div>
			<div class="clinic_title">
				<p>|</p>
				<h1>관절통증 클리닉</h1>
			</div>
			<div class="clinic_sub_nav">
				<ul>
					<li><a href="${pageContext.request.contextPath}/clinic03_01">스포츠 재활치료</a></li>
					<li style="border-left:1px solid white;"><a href="${pageContext.request.contextPath}/clinic03_02">주사치료</a></li>
					<li><a href="${pageContext.request.contextPath}/clinic03_03">척추측만증</a></li>
					<li><a href="${pageContext.request.contextPath}/clinic03_04">초음파진단</a></li>
				</ul> 
			</div>
			<div class="content">
				<img class="diaIcon" src="${pageContext.request.contextPath}/resources/images/icon_dia.png">
				<h1 class="subTitle">척추측만증</h1>
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>척추측만증 <span>이란?</span></p>
					</div>
					<div class="content_small_content first_child">
						정상적인 척추는 정면에서 바라보았을 때 일자로 곧게 펴져있지만,<br>
						척추측만증은 S자형 또는 C자형으로 척추가 굽어져 있습니다.<br>
						이처럼 척추의 모양이 곧지않고 왼쪽 혹은 오른쪽으로 휘어지는 증상을<br>
						척추측만증이라고 합니다. 척추측만증은 보통 10세 전후 성장기 부터<br>
						서서히 진행되며, 성장이 활발한 사춘기에는 측만 증세가 집중적으로<br>
						악화됩니다. 성장이 끝나면 측만증 악화는 덜 하지만 치료가 어려워지게<br>
						됩니다. 그렇기 때문에 조기에 발견하여 치료하는 것이 매우 중요합니다.
					</div>
				</div><!-- content00 end -->
				<img style="margin-top:70px;width:600px;" src="${pageContext.request.contextPath}/resources/images/clinic03_3img1.png">
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>척추측만증 <span>원인</span></p>
					</div>
					<div class="content_small_content">
						<div class="ccc">
							<h2><span class="dot">·</span> 기능성</h2>
							<p>
								영양 불균형, 잘못된 자세, 생활습관, 편식으로 인해 측만증이 발생하는 경우
							</p>
						</div>
						<div class="ccc">
							<h2><span class="dot">·</span> 특발성</h2>
							<p>
								전체 측만증 환자 비율의 70%를 차지하는 특별한 원인 없이 발생하는 경우
							</p>
						</div>
						<div class="ccc">
							<h2><span class="dot">·</span> 선천성</h2>
							<p>
								선천적으로 척추 변형이 있어 측만증이 생기는 경우
							</p>
						</div>
					</div>
				</div><!-- content00 end -->
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>척추측만증<span> 증상</span></p>
					</div>
					<div class="content_small_content small_content">
						<ul>
							<li>양쪽 어깨 균형이 맞지 않고 한쪽 어깨가 지나치게 솟아 있는 경우</li>
							<li>유난히 한쪽 골반이 틀어진 경우</li>
							<li>젖가슴이 균형있지 않고 한쪽이 다른 쪽에 비해 덜 발달되어 있는 경우</li>
							<li>서서 땅을 짚을 때 한쪽 등이 튀어 올라오는 경우</li>
							<li>걷기를 조금만 하여도 몹시 피곤하고 힘이 드는 경우</li>
						</ul>
					</div>
				</div><!-- content00 end -->
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>척추측만증<span> 치료</span></p>
					</div>
					<div class="content_small_content first_child">
						척추측만증은 요추를 포함하여 척추 전체의 곡선이 변형되어 통증이<br>
						발생하게 되는 질환으로 수술보다는 근육 균형을 유지하며 통증을<br>
						완화시키는 운동요법 위주의 치료가 이루어집니다.<br>
						치료를 진행 할 때 전반적으로 어깨와 척추 근육을 강화하는데 중점을<br>
						두지만 척추의 앞, 뒤, 측면의 근육을 고르게 강화시키는 것이 매우<br>
						중요합니다.<br>
						이에 유한마취통증의학과는 전체적인 척추의 형태를 바르게 환원시켜<br>
						척추의 정상만곡을 만들어주는 추나요법과 독일식 슈로스 치료법을<br>
						적용하고 있습니다.
					</div>
				</div><!-- content00 end -->
				<img style="margin-top:70px;width:600px;" src="${pageContext.request.contextPath}/resources/images/clinic03_3img2.jpg">
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>슈로스 치료법</p>
					</div>
					<div class="content_small_content first_child">
						슈로스 치료는 독일 물리치료사 '카사리나 슈로스'가 1920년 고안한<br>
						운동 치료방법으로 척추측만증 치료에 특성화 되어있는 치료 방법<br>
						입니다. 슈로스 치료법은 기본적으로 월바(Wall Bar)와 볼(Ball)을<br>
						체계적인 호흡 방법과 함께 3차원적 운동을 통하여 신체 근육을 훈련<br>
						시켜주고 곧지 않고 뒤틀린 흉곽, 척추를 바로 잡아주며 척추 비대칭을<br>
						잡아줌으로써 신체 균형을 맞춥니다.
					</div>
				</div><!-- content00 end -->
			</div> <!-- content end -->
			<div class="mContent">
				<img src="${pageContext.request.contextPath}/resources/mobileImage/mclinic03_03img.png">
			</div>
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>