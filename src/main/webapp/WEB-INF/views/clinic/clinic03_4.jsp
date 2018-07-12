<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
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
		min-width:1250px;
		height:108px;
		position: fixed;
		top: 0;
		left:0;
		right:0;
		bottom:0;
		margin:0 auto;
		z-index: 9991;
	}
	section{
		width:100%;
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
	.clinic_title>p>img{
		width:40px;
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
	.clinic_sub_nav ul li:last-child{
		background: #00b4ae;
	}
	.clinic_sub_nav ul li:last-child a{
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
		width:275px;
		float:left;
		text-align: left;
	}
	.content00 .content_small_title hr{
		width:100%;
		border:0;
		border-top:4px solid #0d7586;
	}
	.content00 .content_small_title p{
		font-size:35px;
		color:#0d7586;
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
		width:594px;
		float:right;
		text-align: left;  
		color:#2d2d2d;
		font-size:19px;
		line-height: 35px;
	}
	.first_child{ 
		line-height: 28px !important;
	}
	.imgText{
		font-size:21px;
	}
	.imgText>span{
		font-size:25px;
		color: #070b63;
		font-weight:600;
		text-decoration: underline;
	}
	/* 적용질환 */
	.content00 .content_small_content ul{
		float:left;
	}
	.content00 .content_small_content ul:first-child{
		margin-right:40px;
		width:215px;
	}
	.content00 .content_small_content ul:last-child{
		width:268px;
	}
	.content00 .content_small_content ul li{
		list-style: disc;
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
	.ccc:last-child h2{
		margin-top:30px;
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
	.content00 .content_small_content .ccc ul li:before{
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
	.clinic_title>p>img{
		width:40px;
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
	.clinic_sub_nav ul li:last-child{
		background: #00b4ae;
	}
	.clinic_sub_nav ul li:last-child a{
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
		border-top:4px solid #0d7586;
	}
	.content00 .content_small_title p{
		font-size:35px;
		color:#0d7586;
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
		width:583px;
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
	.imgText{
		font-size:21px;
	}
	.imgText>span{
		font-size:25px;
		color: #070b63;
		font-weight:600;
		text-decoration: underline;
	}
	/* 적용질환 */
	.content00 .content_small_content ul{
		float:left;
	}
	.content00 .content_small_content ul:first-child{
		margin-right:40px;
		width:205px;
	}
	.content00 .content_small_content ul:last-child{
		width:268px;
	}
	.content00 .content_small_content ul li{
		list-style: disc;
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
	.ccc:last-child h2{
		margin-top:30px;
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
	.content00 .content_small_content .ccc ul li:before{
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
		margin:0 auto;
		margin-bottom: 10px;
	}
	.clinic_title>p>img{
		width:30px;
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
	.clinic_sub_nav ul li:last-child{
		background: #00b4ae;
	}
	.clinic_sub_nav ul li:last-child a{
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
            	$(".quick").stop().animate({"top":position-350+"px"},1000);	
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
						<a href="${pageContext.request.contextPath}/clinic01_00">진료분야<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="${pageContext.request.contextPath}/info01">병원소개</a></li>
							<li><a href="${pageContext.request.contextPath}/notice">병원소식</a></li>
						</ul>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/clinic03_01">관절통증 클리닉<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="${pageContext.request.contextPath}/clinic01_00">비수술 클리닉</a></li>
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
				<p><img src="${pageContext.request.contextPath}/resources/images/sLogo.png"></p>
				<h1>관절통증 클리닉</h1>
			</div>
			<div class="clinic_sub_nav">
				<ul>
					<li><a href="${pageContext.request.contextPath}/clinic03_01">스포츠 재활치료</a></li>
					<li style="border-left:1px solid white; border-right:1px solid white;"><a href="${pageContext.request.contextPath}/clinic03_02">주사치료</a></li>
					<li><a href="${pageContext.request.contextPath}/clinic03_03">척추측만증</a></li>
					<li><a href="${pageContext.request.contextPath}/clinic03_04">초음파진단</a></li>
				</ul> 
			</div>
			<div class="content">
				<img class="diaIcon" src="${pageContext.request.contextPath}/resources/images/icon_dia.png">
				<h1 class="subTitle">초음파진단</h1>
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>초음파진단 <span>이란?</span></p>
					</div>
					<div class="content_small_content first_child">
						사람이 들을 수 있는 주파수 영역인 가청주파수 대역보다 주파수가<br>
						커서 사람이 들을 수 없는 음파를 초음파라고 합니다. 이 초음파는<br>
						박쥐나 돌고래들이 의사소통을 할 때 사용한다고 알려져 있습니다.<br>
						이러한 초음파를 사람의 몸에 부드러운 연조직이라 불리는 조직에<br>
						반사되는 영상을 이용하는 검사 방법이 초음파 검사입니다.
					</div>
				</div><!-- content00 end -->
				<img style="margin-top:100px;width:600px;" src="${pageContext.request.contextPath}/resources/images/clinic03_04img1.png">
				<p class="imgText"><span>과잉진료 없는 선진 병원문화</span> 유한통증의학과가 만들어가겠습니다.</p>
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>초음파진단 <span>특징</span></p>
					</div>
					<div class="content_small_content first_child">
						많은 분들이 초음파 검사는 간, 콩팥, 심장 등 내장기관의 검사 또는<br>
						임산부의 뱃속 아기를 검사하는데 이용되는 방법으로 많이 알고<br>
						있습니다. 하지만 최근에는 관절, 근육, 힘줄, 인대 등 근골격계에도<br>
						적용이 되고 있습니다. 초음파 검사는 무엇보다도 인체에 아무런<br>
						영향을 주지 않습니다. 또한 검사 과정이 간편하고 환자가 편안하게<br>
						검사를 받을 수 있는 검사방법 입니다. CT, MRI촬영에 비해 검사<br>
						장비를 손 쉽게 움직이며 신체 내부 구조물을 실제로 볼 수 있어 만성<br>
						및 급성 통증 환자 치료에 유리하며 특히 관절이나 근골겨고가 같은 신체<br>
						표면에 위치한 구조를 쉽고 정확하게 파악할 수 있어 널리 사용되고<br>
						있는 검사 방법입니다.
					</div>
				</div><!-- content00 end -->
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>초음파진단 <span>장점</span></p>
					</div>
					<div class="content_small_content">
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/point01_3.png">
							<p style="margin-top:15px;">CT, MRI 검사에 비해 가격이 저렴합니다.</p>
						</div>
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/point02_3.png">
							<p style="margin-top:15px;">방사선 노출이 없어 인체에 무해합니다.</p>
						</div>
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/point03.png">
							<p>검사를 진행하며 즉각적으로 주사 치료를 병행할 수<br>있어 간편합니다.</p>
						</div>
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/point04.png">
							<p>다양한 부위를 움직여가며 관찰이 가능하여 진단이<br>더 정확합니다.</p>
						</div>
					</div>
				</div><!-- content00 end -->
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>초음파진단</p>
						<p><span>적용부위</span></p>
					</div>
					<div class="content_small_content first_child">
						<ul>
							<li>목</li>
							<li>어깨</li>
							<li>손</li>
							<li>모든 관절과 근골격계</li>
						</ul>
						<ul>
							<li>팔</li>
							<li>허리</li>
							<li>발</li>
						</ul>
					</div>
				</div><!-- content00 end -->
			</div> <!-- content end -->
			<div class="mContent">
				<img src="${pageContext.request.contextPath}/resources/mobileImage/mclinic03_04img.png">
			</div>
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>