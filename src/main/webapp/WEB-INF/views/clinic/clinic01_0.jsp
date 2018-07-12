<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<title>비수술 클리닉 | 유한통증의학과</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=2">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=-1">
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
		max-width:1100px;
		margin:0 auto;
		margin-top:80px;
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
		width:19.9%;
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
	.clinic_sub_nav ul li:first-child{
		background: #00b4ae;
	}
	.clinic_sub_nav ul li:first-child a{
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
		/* width:31%; */
		width:288px;
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
		/* width:61%; */
		width:568px;
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
		margin-right:40px;
		width:140px;
	}
	.content00 .content_small_content ul:last-child{
		width:272px;
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
	.content00 .content_small_content .ccc p{
		float:left;
		font-size:19px;
		margin-top:9px;
		line-height: 21px;
	}
	.imgText{
		font-size:21px;
	}
	.imgText>span{
		font-size:25px;
		color: #070b63;
		font-weight:600;
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
		width:768px;
		margin:0 auto;
		overflow: hidden;
	}
	.clinic_sub_nav ul li{
		/* width:24.9%; */
		margin:0 auto;
		float:left;
		background: #dcdcdc;
		padding-left:8.5px;
		padding-right:8.5px;
	}
	.clinic_sub_nav ul li a{
		width:100%;
		line-height:50px;
		color:white;
		font-size:20px;
		color:#888686;
	}
	.clinic_sub_nav ul li:first-child{
		background: #00b4ae;
	}
	.clinic_sub_nav ul li:first-child a{
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
		/* width:31%; */
		width:288px;
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
		/* width:61%; */ 
		width:568px;
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
		width:272px;
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
	.content00 .content_small_content .ccc p{
		float:left;
		font-size:19px;
		margin-top:9px;
		line-height: 21px;
	}
	.imgText{
		font-size:21px;
	}
	.imgText>span{
		font-size:25px;
		color: #070b63;
		font-weight:600;
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
		width:45%;
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
		margin-left:14px;
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
		margin-top:40px;
		width:100%;
	}
	.clinic_sub_nav ul{
		width:100%;
		overflow: hidden;
	}
	.clinic_sub_nav ul li{
		float: left;
		height:40px;
		line-height:40px;
		text-align: center;
		background: #dcdcdc;
	}
	.clinic_sub_nav ul li a{
		color:#888686;
	}
	.clinic_sub_nav ul li:NTH-CHILD(1) {
		width: 50%;
		margin-bottom:1px;
		background: #00b4ae;
	}
	.clinic_sub_nav ul li:NTH-CHILD(1) a{
		color:white;
	}
	.clinic_sub_nav ul li:NTH-CHILD(2){
		width:50%;
		margin-bottom:1px;
	}
	.clinic_sub_nav ul li:NTH-CHILD(3){
		width:33%;
	}
	.clinic_sub_nav ul li:NTH-CHILD(4){
		width:33%;
	}
	.clinic_sub_nav ul li:NTH-CHILD(5){
		width:33%;
	}
	.content{
		text-align: center;
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
            	$(".quick").stop().animate({"top":75+"px"},1000);
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
						<a href="${pageContext.request.contextPath}/clinic01_00">비수술 클리닉<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="${pageContext.request.contextPath}/clinic02">대상포진 클리닉</a></li>
							<li><a href="${pageContext.request.contextPath}/clinic03_01">관절통증 클리닉</a></li>
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
			</div><!-- quick end -->
			<div class="clinic_title">
				<p><img src="${pageContext.request.contextPath}/resources/images/sLogo.png"></p>
				<h1>비수술 클리닉</h1>
			</div>
			<div class="clinic_sub_nav">
				<ul>
					<li><a href="${pageContext.request.contextPath}/clinic01_00">영상유도하 신경차단술</a></li>
					<li><a href="${pageContext.request.contextPath}/clinic01_01">신경성형술</a></li>
					<li style="border-left:1px solid white;"><a href="${pageContext.request.contextPath}/clinic01_02">풍선확장술</a></li>
					<li style="border-left:1px solid white; border-right:1px solid white;"><a href="${pageContext.request.contextPath}/clinic01_03">추간공확장술</a></li>
					<li><a href="${pageContext.request.contextPath}/clinic01_04">꼬리뼈 레이저 내시경술</a></li>
				</ul> 
			</div>
			<div class="content">
				<img class="diaIcon" src="${pageContext.request.contextPath}/resources/images/icon_dia.png">
				<h1 class="subTitle">영상유도하 신경차단술</h1>
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>영상유도하</p>
						<p>신경차단술 <span>이란?</span></p>
					</div>
					<div class="content_small_content first_child">
						디스크 돌출, 중심 신경에서 신경가지들이 빠져나오거나 척수신경<br>
						압박이 일어나면 통증이 발생하게 됩니다. 이러한 부위에는 신경<br>
						부종과 신경염증이 생깁니다. 이때 통증 부위를 찾아 주사로 약물을<br>
						주입함으로써 치료하는 방법이 신경차단술 입니다.<br>
						신경차단술은  C-ARM(영상증폭장치)를 이용하여 통증 원인이 되는<br>
						실처럼 가는 신경부위를 정확하게 하나하나 찾아내어 치료하므로<br>
						안전하고 통증완화에 매우 효과적입니다.
					</div>
				</div><!-- content00 end -->
				<img style="margin-top:70px;width:600px;" src="${pageContext.request.contextPath}/resources/images/clinic01_00img1.png">
				<img style="margin-top:70px;width:600px;" src="${pageContext.request.contextPath}/resources/images/clinic01_00img2.png">
				<p class="imgText">생명을 최우선으로, 사람을 최우선으로 생각하는<br><span>시술전문의 유한목 원장님 직접 시술</span></p>
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>영상유도하</p>
						<p>신경차단술</p>
						<p><span>적용질환</span></p>
					</div>
					<div class="content_small_content">
						<ul>
							<li>목디스크</li>
							<li>척추관협착증</li>
							<li>급/만성 통증</li>
						</ul>
						<ul>
							<li>허리디스크</li>
							<li>허리관절염</li>
							<li>하지저림, 하지 방사통</li>
						</ul>
					</div>
				</div><!-- content00 end -->
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>영상유도하</p>
						<p>신경차단술 <span>장점</span></p>
					</div>
					<div class="content_small_content">
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/point01.png">
							<p>국소마취로 시술 후유증이 적고, 시술 시간이<br>5~10분 정도로 짧습니다.</p>
						</div>
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/point02.png">
							<p style="margin-top:18px;">시술 후 빠른 일상생활 복귀가 가능합니다.</p>
						</div>
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/point03.png">
							<p style="margin-top:18px;">약 7~14일 간격으로 반복치료가 가능합니다.</p>
						</div>
					</div>
				</div><!-- content00 end -->
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>영상유도하</p>
						<p>신경차단술</p>
						<p><span>시술방법</span></p>
					</div>
					<div class="content_small_content last_content">
						(1) 영상증폭장치(C-ARM)를 이용하여 통증 부위 확인<br>
						(2) 허리나 꼬리뼈를 통하여 주사<br>
						(3) 약물 주입으로 치료
					</div>
				</div><!-- content00 end -->
			</div><!-- content end -->
			<div class="mContent">
				<img src="${pageContext.request.contextPath}/resources/mobileImage/mclinic01_00img.png">
			</div>
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>