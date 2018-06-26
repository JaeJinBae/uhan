<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<title>인사말 | 유한통증의학과</title>
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
		margin:0px 40px;
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
	.sub_title>p>img{
		width:40px;
	}
	.sub_title h1{
		font-size:35px;
		font-weight: 500;
	}
	.content{
		width:100%;
	}
	.slogan{
		margin-top:70px;
		margin-bottom:70px;
	}
	.slogan>h1, .slogan>h1>span, .color1, .color2{
		font-size:50px;
		font-weight:500;
	}
	.slogan>h1>.color1{
		color:#04a19f;
		font-weight:600;
	}
	.slogan>h1>.color2{
		color:#06807e;
		font-weight:600;
	}
	.mobile_ContentWrap{
		display:none;
	}
	.content0{
		font-size:20px;
		margin-bottom:50px;
	}
	.content1{
		margin-bottom:50px;
	}
	.content1>p{
		font-size:25px;
		font-weight: 500;
	}
	.content2{
		font-size:20px;
		margin-bottom:50px;
		color:#2d2d2d;
	}
	.content2>span{
		font-size:20px;
		font-weight:600;
		color:black;
	}
	.content3{
		width:644px;
		margin:0 auto;
		margin-bottom:50px;
	}
	.content3>li{
		font-size:20px;
		color:#2d2d2d;
		text-align: left;
		margin-bottom:10px;
	}
	.boldblack{ 
		font-size:20px;
		color:black;
		font-weight: 600;
		float:left;
	}
	.listtext{
		display:inline-block;
		font-size:20px;
	}
	.content4{
		font-size:20px;
		margin-bottom:50px;
	}
	.content5{
		font-size:20px;
		margin-top:50px;
	}
	.info01img{
		width:85%;
		margin:0 auto;
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
		max-width:1200px;
		margin:0 auto;
		margin-top:100px;
		text-align: center;
		clear:both;
		position:relative;
	}
	/* quick menu */
	.quick{
		display:none;
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
	.sub_title>p>img{
		width:40px;
	}
	.sub_title h1{
		font-size:35px;
		font-weight: 500;
	}
	.content{
		width:100%;
	}
	.slogan{
		margin-top:70px;
		margin-bottom:70px;
	}
	.slogan>h1, .slogan>h1>span, .color1, .color2{
		font-size:50px;
		font-weight:500;
	}
	.slogan>h1>.color1{
		color:#04a19f;
		font-weight:600;
	}
	.slogan>h1>.color2{
		color:#06807e;
		font-weight:600;
	}
	.mobile_ContentWrap{
		display:none;
	}
	.content0{
		font-size:20px;
		margin-bottom:50px;
	}
	.content1{
		margin-bottom:50px;
	}
	.content1>p{
		font-size:25px;
		font-weight: 500;
	}
	.content2{
		font-size:20px;
		margin-bottom:50px;
		color:#2d2d2d;
	}
	.content2>span{
		font-size:20px;
		font-weight:600;
		color:black;
	}
	.content3{
		width:644px;
		margin:0 auto;
		margin-bottom:50px;
	}
	.content3>li{
		font-size:20px;
		color:#2d2d2d;
		text-align: left;
		margin-bottom:10px;
	}
	.boldblack{ 
		font-size:20px;
		color:black;
		font-weight: 600;
		float:left;
	}
	.listtext{
		display:inline-block;
		font-size:20px;
	}
	.content4{
		font-size:20px;
		margin-bottom:50px;
	}
	.content5{
		font-size:20px;
		margin-top:50px;
	}
	.info01img{
		width:85%;
		margin:0 auto;
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
		margin-left:60px;
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
	.sub_title{
		width:100%;
		margin:0 auto;
		text-align: center;
	}
	.sub_title p{
		text-align: center;
		margin:0 auto;
		margin-bottom: 10px;
	}
	.sub_title>p>img{
		width:30px;
	}
	.sub_title h1{
		text-align: center;
		font-size: 19.5px;
		font-weight: 550;
	}
	.content{
		display:none;
	}
	.mobile_ContentWrap{
		width:100%;
		margin:0 auto;
		text-align: center;
	}
	.mobile_ContentWrap> img{
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
			<img class="bgImg" src="${pageContext.request.contextPath}/resources/images/location_top_image.png">
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
						<a href="${pageContext.request.contextPath}/info01">병원소개<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="${pageContext.request.contextPath}/clinic01_00">진료분야</a></li>
							<li><a href="${pageContext.request.contextPath}/notice">병원소식</a></li>
						</ul>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/info01">인사말<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="${pageContext.request.contextPath}/info02">의료진 소개</a></li>
							<li><a href="${pageContext.request.contextPath}/info03">병원 둘러보기</a></li>
							<li><a href="${pageContext.request.contextPath}/info04">진료안내</a></li>
							<li><a href="${pageContext.request.contextPath}/location">오시는길</a></li>
						</ul>	
					</li>
				</ul>
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
			<div class="sub_title">
				<p><img src="${pageContext.request.contextPath}/resources/images/sLogo.png"></p>
				<h1>인사말</h1>				
			</div>
			<div class="content">
				
				<div class="slogan">
					<h1>'<span class="color1">생명</span>을 최우선으로</h1>
					<h1><span class="color2">&nbsp;&nbsp;사람</span>을 최우선으로'</h1>
				</div>
				 
				<p class="content0">인도 고대의 길가메쉬 서사시에 인생의 삶에 대해서 이런 글귀가 있습니다.</p>
				
				<div class="content1">
					<p>'인생의 처음과 끝은 정해져 있으니,</p>
					<p>의미있는 일을 하고 놀고</p>
					<p>사랑을 나누는 것이 인생의 정답이다.'</p>
				</div>
				
				<div class="content2">
					우리병원 설립 미션과 비젼의 시작은 사람의 생명에 있습니다.<br>
					생명을 최우선으로 그래서 찾아오는 환자 한분 한분의 통증 원인 발견과<br>
					치료, 더 나아가 예방을 하는데 최우선으로 하겠다는 우리의 미션을<br>
					실현하기 위해서 여기 대구 범어동에서 시작하였습니다.<br>
					대구 범어동에서 시작된 우리의 꿈이 소외된 아시아지역까지 확대 될 수 있도록<br>
					<span>'생명을 최우선으로 사람을 최우선으로'</span>하는 병원을 만들어 나아가겠습니다. 
				</div>
				
				<ul class="content3">
					<li>
						<span class="boldblack">첫째,&nbsp;</span>
						<span class="listtext">
							사람들이 살면서 제일 많이 겪는 허리통증, 목통증(척추통증),<br>
							대상포진 및 극심한 통증인 대상포진 후 신경통, 어깨와 무릎 등의<br>
							여러 관절통증 치료를 위해서 전문성을 키우겠습니다.
						</span>
					</li>
					<li>
						<span class="boldblack">둘째,&nbsp;</span>
						<span class="listtext">
							통증으로 고통받는 사람을 치유함에 믿음과 신뢰를 간직하겠습니다.
						</span>
					</li>
					<li>
						<span class="boldblack">셋째,&nbsp;</span>
						<span class="listtext">
							직원 및 환자와 소통하고 함께 나누겠습니다.
						</span>
					</li>
					<li>
						<span class="boldblack">넷째,&nbsp;</span>
						<span class="listtext">
							지역사회 공동체와 함께 하여 행복한 세상을 만드는데 작은 보탬이<br>
							되도록 노력하겠습니다.
						</span>
					</li>
				</ul>
				
				<div class="content4">
					처음의 다짐이 지속될 수 있도록 지켜봐 주시고<br>
					또 그런 병원이 되도록 소통하고 지역사회와<br>
					함께 나누는 병원이 되도록 노력하겠습니다.
				</div>
				
				<img class="info01img" src="${pageContext.request.contextPath}/resources/images/info01img.png">
				
				<div class="content5">
					2018년 5월 8일<br>
					유한마취통증의학과 직원 모두의 마음을 담아 여러분께 드립니다.
				</div>
			</div><!-- content end -->
		</div><!-- contentWrap end -->
		<div class="mobile_ContentWrap">
			<img src="${pageContext.request.contextPath}/resources/mobileImage/info01img.png">
		</div>
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>