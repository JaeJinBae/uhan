<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>병원 둘러보기 | 유한통증의학과</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=2">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css?ver=1"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
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
		width:700px;
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
	.bigImg{
		width:700px;
		margin:0 auto;
	}
	.bigImg img{ 
		width: 700px;
	}
	.bigImg .imgText{
		width:100%;
		background: rgba(255,255,255, 0.5);
		color:white;
		position: absolute;
		bottom:0;
	}
	.smallImg{
		width:800px;
		margin:0 auto;
		margin-top:100px;
	}
	.smallImg div img{
		width:200px;
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

        $(".bigImg").slick({
        	slidesToShow:1,
        	slidesToScroll:1,
        	arrows:false,
        	fade:true,
        	asNavFor:".smallImg"
        });
        $(".smallImg").slick({
			slidesToShow: 3,
			slidesToScroll: 1,
        	asNavFor:".bigImg",
        	dots:true,
        	centerMode:true,
        	focusOnSelect:true
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
						<a href="info03">병원 둘러보기<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="info01">인사말</a></li>
							<li><a href="info02">의료진 소개</a></li>
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
			<div class="sub_title">
				<p>|</p>
				<h1>병원 둘러보기</h1>				
			</div>
			<div class="bigImg">
				<div><img src="${pageContext.request.contextPath}/resources/images/h01.JPG" alt="유한통증의학과"><div class="imgText">내부사진1</div></div>
				<div><img src="${pageContext.request.contextPath}/resources/images/h02.JPG" alt="유한통증의학과"><div class="imgText">내부사진2</div></div>
				<div><img src="${pageContext.request.contextPath}/resources/images/h03.JPG" alt="유한통증의학과"><div class="imgText">내부사진3</div></div>
				<div><img src="${pageContext.request.contextPath}/resources/images/h04.JPG" alt="유한통증의학과"><div class="imgText">내부사진4</div></div>
				<div><img src="${pageContext.request.contextPath}/resources/images/h05.JPG" alt="유한통증의학과"><div class="imgText">내부사진5</div></div>
				<div><img src="${pageContext.request.contextPath}/resources/images/h06.JPG" alt="유한통증의학과"><div class="imgText">내부사진6</div></div>
				<div><img src="${pageContext.request.contextPath}/resources/images/h07.JPG" alt="유한통증의학과"><div class="imgText">내부사진6</div></div>
				<div><img src="${pageContext.request.contextPath}/resources/images/h08.JPG" alt="유한통증의학과"><div class="imgText">내부사진6</div></div>
				<div><img src="${pageContext.request.contextPath}/resources/images/h09.JPG" alt="유한통증의학과"><div class="imgText">내부사진6</div></div>
			</div>
			<div class="smallImg">
				<div><img src="${pageContext.request.contextPath}/resources/images/h01.JPG" alt="유한통증의학과"></div>
				<div><img src="${pageContext.request.contextPath}/resources/images/h02.JPG" alt="유한통증의학과"></div>
				<div><img src="${pageContext.request.contextPath}/resources/images/h03.JPG" alt="유한통증의학과"></div>
				<div><img src="${pageContext.request.contextPath}/resources/images/h04.JPG" alt="유한통증의학과"></div>
				<div><img src="${pageContext.request.contextPath}/resources/images/h05.JPG" alt="유한통증의학과"></div>
				<div><img src="${pageContext.request.contextPath}/resources/images/h06.JPG" alt="유한통증의학과"></div>
				<div><img src="${pageContext.request.contextPath}/resources/images/h07.JPG" alt="유한통증의학과"></div>
				<div><img src="${pageContext.request.contextPath}/resources/images/h08.JPG" alt="유한통증의학과"></div>
				<div><img src="${pageContext.request.contextPath}/resources/images/h09.JPG" alt="유한통증의학과"></div>
			</div>
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>