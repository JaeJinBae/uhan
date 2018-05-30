<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비수술 클리닉 | 유한통증의학과</title>
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
	
	.content .diaIcon{
		width:45px;
		margin-bottom:30px;
	}
	.content .subTitle{
		font-size:32px;
		font-weight:500;
	}
	.content00{
		width:80%;
		margin:0 auto;
		margin-top:100px;
		overflow: hidden;
	}
	
	.content00 .content_small_title{
		width:31%;
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
		width:61%;
		float:right;
		text-align: left;  
		color:#2d2d2d;
		font-size:19px;
		line-height: 35px;
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
	.content00 .content_small_content .ccc p{
		float:left;
		font-size:19px;
		margin-top:9px;
		line-height: 21px;
	}
}
@media only screen and (min-width:320px) and (max-width:680px){
	html{
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
		width: 38%;
	}
	.clinic_sub_nav ul li:NTH-CHILD(4) a{
		color:white;
	}
	.clinic_sub_nav ul li:NTH-CHILD(3){
		width:22%;
	}
	.clinic_sub_nav ul li:NTH-CHILD(2){
		width:19%;
	}
	.clinic_sub_nav ul li:NTH-CHILD(4){
		width:20%;
		background: #00b4ae;
	}
	.content{
		text-align: center;
	}
	.content .diaIcon{
		width:35px !important;
		margin-bottom: 10px;
	}
	.content h1.subTitle{
		font-weight: 550;
		font-size: 1.5em;
		margin-bottom: 30px;
	}
	.content00 hr{
		display: none;
	}
	.content00 .content_small_title{
		overflow: hidden;
		margin-bottom: 10px;
		margin-top: 20px;
	}
	 .content00 .content_small_title p{
		margin-left: 5px;
	} 
	.content00 .content_small_title p:LAST-CHILD span{
		color:black;
		font-size: 1em;
		font-weight: 600;
	}
	.content00 .content_small_title p{
		color:#00938e;
		font-weight: 550;
		text-align: left;
		display:inline;
		float: left;
		font-size: 1.4em;
	}
	.content00 .content_small_content{
		width:370px;
		margin:0 auto;
		font-size:1em;
		text-align: justify;
		line-height: 25px;
	}
	
	.content img{
		margin-top:30px !important;
		width: 100% !important;
	}
	.content_small_content ul li:BEFORE{
		content: "●";
		font-size: 0.5em;
		margin-right: 5px;
		margin-left: 10px;
	}
	.content_small_content ul li{
		margin-bottom: 5px;
	}
	.content_small_content .ccc{
		overflow: hidden;
	}
	.content_small_content .ccc img{
		margin-top:10px !important;
		width:45px !important;
		float: left;
		margin-left: 10px;
	}
	.content_small_content .ccc p{
		margin-top:10px;
		line-height: 20px;
		margin-left: 60px;
	}
 	.last_content{
		width:70% !important;
		margin-left: 15px !important;
	} 
}
</style>
<script type="text/javascript">
	$(function(){
        $(window).scroll(function() {
            var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
            if(position>500){
            	$(".quick").stop().animate({"top":position-500+"px"},1000);	
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
			<img class="bgImg" src="${pageContext.request.contextPath}/resources/images/news_top_bg.png">
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
						<a href="clinic01_01">진료분야<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="info01">병원소개</a></li>
							<li><a href="notice">병원소식</a></li>
						</ul>
					</li>
					<li>
						<a href="clinic01_01">비수술 클리닉<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="clinic02">대상포진 클리닉</a></li>
							<li><a href="clinic03_01">관절통증 클리닉</a></li>
						</ul>	
					</li>
				</ul><!-- navUl end -->
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
			</div>
			<div class="clinic_title">
				<p>|</p>
				<h1>비수술 클리닉</h1>
			</div>
			<div class="clinic_sub_nav">
				<ul>
					<li><a href="clinic01_01">꼬리뼈 레이저 내시경술</a></li>
					<li style="border-left:1px solid white; border-right:1px solid white;"><a href="clinic01_02">풍선확장술</a></li>
					<li><a href="clinic01_03">추간공확장술</a></li>
					<li><a href="clinic01_04">신경성형술</a></li>
				</ul> 
			</div>
			<div class="content">
				<img class="diaIcon" src="${pageContext.request.contextPath}/resources/images/icon_dia.png">
				<h1 class="subTitle">신경성형술</h1>
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>신경성형술 <span>이란?</span></p>
					</div>
					<div class="content_small_content">
						신경성형술이란, 미국 텍사스대 가보 라트 교수가 개발한 시술로써<br>
						지름 1mm인 소형 카테터를 환부에 삽입한 뒤, 영상장비를 사용하여<br>
						실시간으로 화인하며 신경의 유착을 풀고 유착방지 효소제와 항염증제<br>
						등 특수 약물을 주입해 통증 유발 원인 질환을 치료하는 시술입니다.<br>
						실시간 영상장치인 C-arm을 이용해 시술하므로 유착 부위를 정확히<br>
						찾아 치료할 수 있습니다.
					</div>
				</div><!-- content00 end -->
				<img style="margin-top:70px;width:600px;" src="${pageContext.request.contextPath}/resources/images/clinic01goimg1.png">
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>신경성형술</p>
						<p><span>적용질환</span></p>
					</div>
					<div class="content_small_content">
						<ul>
							<li>척추관협착증</li>
							<li>목 디스크</li>
							<li>허리 디스크</li>
						</ul>
						<ul>
							<li>척추 수술 후 계속되는 통증</li>
							<li>급/만성 요통 및 디스크 통증</li>
							<li>손/발 저림</li>
						</ul>
					</div>
				</div><!-- content00 end -->
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>신경성형술 <span>장점</span></p>
					</div>
					<div class="content_small_content">
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/point01_3.png">
							<p>약 30분 정도의 짧은 시술시간과 빠른 회복이<br>가능합니다.</p>
						</div>
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/point02_3.png">
							<p style="margin-top:15px;">시술 통증이 적습니다.</p>
						</div>
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/point03.png">
							<p>당뇨, 고혈압, 심장질환 등 만성질환이 있는<br>고령 환자도 치료 가능합니다.</p>
						</div>
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/point04.png">
							<p>전신마취를 하지 않아도 되어 부담감을<br>느끼지 않습니다.</p>
						</div>
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/point05.png">
							<p>1mm의 가느다란 관을 이용하므로 흉터가<br>남지 않습니다.</p>
						</div>
					</div>
				</div><!-- content00 end -->
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>신경성형술</p>
						<p><span>시술방법</span></p>
					</div>
					<div class="content_small_content last_content">
						(1) 병변 부위 극소마취<br>
						(2) 직경 1mm의 초소형 특수 카테터를 삽입<br>
						(3) 병변 부위를 찾아내어 염증 및 유착 제거<br>
						(4) 병변부위에 특수 약물을 주입하여 치료
					</div>
				</div><!-- content00 end -->
			</div>
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>