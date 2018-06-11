<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>의료진 소개 | 유한통증의학과</title>
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
		width:1200px;
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
	.content_title{
		width:100%;
		margin:0 auto;
		margin-bottom:70px;
	}
	.content_title p{
		font-size:25px;
		margin-bottom:20px; 
	}
	.content_title h1{
		font-size:35px;
		font-weight: 500;
	}
	.bossIntro{
		width:100%;
		max-width:1100px;
		margin:0 auto;
		overflow: hidden;
		margin-bottom:100px;
	}
	.bossIntro .bossimg{
		width:50%;
		margin-right:70px;
	}
	.bossIntro .bosstext{
		width:30%;
		display:inline-block;
		text-align: left;
	}
	.bossIntro .bosstext .diaIcon{ 
		margin-bottom:50px;
	}
	.bossname{
		font-size:37px;
		margin-bottom:40px;
	}
	.bossname span{
		font-weight:bold;
		font-size:37px;
	}
	.bossyak{
		background: black;
		color:white;
		width:75px;
		text-align: center;
		margin-bottom:20px;
		font-size:18px;
		letter-spacing: 3px;
	}
	.bossIntro ul{
		width:100%;
	}
	.bossIntro ul li{ 
		font-size:18px;
	}
	hr{
		width:100%;
		border:0;
		border-top:2px solid gray;
	}
	.bosscareer{
		width:100%;
		margin:0 auto;
	}
	.bosscareer .diaIcon{
		margin-top:100px;
		margin-bottom:40px;
	}
	.bosscareer h2{
		font-size:30px;
		font-weight:500;
		margin-bottom:50px;
	}
	.bosscareer ol{
		width:82.7%;
		margin:0 auto;
	}
	.bosscareer ol li:not(:last-child){
		list-style: decimal;
		text-align: left;
		font-size:18px;
		line-height: 45px;
	}
	.bosscareer ol li:last-child{
		list-style: decimal;
		text-align: left;
		font-size:18px;
		margin-top:10px;
	}
	.mobile_ContentWrap{
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
		height:180px;
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
		/* width:1200px; */
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
		width:1200px;
	}
	
	/* quick menu */
	.quick{
		display:none;
	}
	
	.content_title{
		width:100%;
		margin:0 auto;
		margin-bottom:70px;
	}
	.content_title p{
		font-size:25px;
		margin-bottom:20px; 
	}
	.content_title h1{
		font-size:35px;
		font-weight: 500;
	}
	.bossIntro{
		width:100%;
		margin:0 auto;
		overflow: hidden;
		margin-bottom:100px;
	}
	.bossIntro .bossimg{
		width:50%;
		margin-right:40px;
	}
	.bossIntro .bosstext{
		width:39%;
		display:inline-block;
		text-align: left;
	}
	.bossIntro .bosstext .diaIcon{ 
		margin-bottom:50px;
	}
	.bossname{
		font-size:37px;
		margin-bottom:40px;
	}
	.bossname span{
		font-weight:bold;
		font-size:37px;
	}
	.bossyak{
		background: black;
		color:white;
		width:75px;
		text-align: center;
		margin-bottom:20px;
		font-size:18px;
		letter-spacing: 3px;
	}
	.bossIntro ul{
		width:100%;
	}
	.bossIntro ul li{ 
		font-size:18px;
	}
	hr{
		width:100%;
		border:0;
		border-top:2px solid gray;
	}
	.bosscareer{
		width:100%;
		margin:0 auto;
	}
	.bosscareer .diaIcon{
		margin-top:100px;
		margin-bottom:40px;
	}
	.bosscareer h2{
		font-size:30px;
		font-weight:500;
		margin-bottom:50px;
	}
	.bosscareer ol{
		width:82.7%;
		margin:0 auto;
	}
	.bosscareer ol li:not(:last-child){
		list-style: decimal;
		text-align: left;
		font-size:18px;
		line-height: 45px;
	}
	.bosscareer ol li:last-child{
		list-style: decimal;
		text-align: left;
		font-size:18px;
		margin-top:10px;
	}
	.mobile_ContentWrap{
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
	}
	.mainBackground .bgText p{
		font-weight: 300;
		letter-spacing: 0.1em;
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
		width:20px;
	}
	section .mainBackground .navWrap .navUl>li:last-child a>.btnArrow{
		margin-left:30px;
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
	.contentWrap{
		display:none;
	}
	.mobile_ContentWrap{
		width:100%;
	}
	.mobile_ContentWrap img{
		width:100%;
		margin:0 auto;
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
						<a href="info02">의료진 소개<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="info01">인사말</a></li>
							<li><a href="info03">병원 둘러보기</a></li>
							<li><a href="info04">진료안내</a></li>
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
			<div class="content_title">
				<p>|</p>
				<h1>의료진 소개</h1>
			</div>
			<div class="bossIntro">
				<img class="bossimg" src="${pageContext.request.contextPath}/resources/images/info02img1.png">
				<div class="bosstext">
					<img class="diaIcon" src="${pageContext.request.contextPath}/resources/images/icon_dia.png">
					<p class="bossname"><span>유한목</span> 원장님</p>
					<div class="bossyak">
						약 력
					</div>
					<ul>
						<li>- 현, 유한통증의학과의원 원장</li>
						<li>- 대한통증학회 정회원 및 평의원</li>
						<li>- 세계통증학회(IASP) 정회원</li>
						<li>- 세계임상통증학회(WIP) 정회원</li>
						<li>- 국제척추통증학회(ICSP) 정회원</li>
						<li>- 경북대학교 외래교수</li>
						<li>- 계명대학교 외래교수</li>
						<li>- 서대구병원 병원장 및 통증센터장 역임</li>
						<li>- 안계통증의학과의원 원장 역임</li>
						<li>- 미국 머서대학교 임상교수 역임</li>
						<li>- 침례병원 마취통증의학과 과장 역임</li>
						<li>- 계명대학교 의과대학 및 대학원 졸업</li>
					</ul>
				</div><!-- bosstext end -->
			</div><!-- bossIntro end -->
			<hr>
			<div class="bosscareer">
				<img class="diaIcon" src="${pageContext.request.contextPath}/resources/images/icon_dia.png">
				<h2>시술 시연 사례</h2>
				<ol>
					<li>2008년 Texas Tech University Health Science 신경성형술 개발자이신 Gabor Racz 박사와 대구 경북 최초로 신경성형술 시연</li>
					<li>2009년 Robert Wood Johson University Hospital YK Choi 박사와 국내 및 대구 경북 경막외내시경술 시연</li>
					<li>2010년 미국의 Dr.Rostein과 레이저를 이용한 경막외 내시경술 시연</li>
					<li>그외 국내 의료진과 함께 꼬리뼈를 이용한 레이저를 이용한 레이져 경막외 내시경술(SLED) 시연</li>
					<li>지난 10년간 지역 최초로 신경성형술, 신경박리술, 경막외 내시경술을 도입하여 시술하였으며, 그 외 추간판내 고주파 열응고술<br>(IDET,L-DISQ, necleoplasty) 시술 및 수만건의 영상장치 유도하 척추시술</li>
				</ol>
			</div>
		</div><!-- contentWrap end -->
		<div class="mobile_ContentWrap">
			<img src="${pageContext.request.contextPath}/resources/mobileImage/bossIntro.png"><!-- mInfo2 -->
		</div>
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>