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
		width:80%;
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
	.clinic_sub_nav ul li:first-child{
		background: #00b4ae;
	}
	.clinic_sub_nav ul li:first-child a{
		color:white;
	}
	.content img{
		width:80%;
		/* clear:both; */
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
					<li><a href="clinic01_02">풍선확장술</a></li>
					<li style="border-left:1px solid white; border-right:1px solid white;"><a href="clinic01_03">추간공확장술</a></li>
					<li><a href="clinic01_04">신경성형술</a></li>
				</ul> 
			</div>
			<div class="content">
				<img src="${pageContext.request.contextPath}/resources/images/clinic01_01.png">
			</div>
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>