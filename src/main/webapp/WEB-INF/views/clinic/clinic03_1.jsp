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
		width:50%;
		margin:0 auto;
		overflow: hidden;
	}
	.clinic_sub_nav ul li{
		width:49.9%;
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
						<a href="clinic03_01">관절통증 클리닉<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="clinic01_01">비수술 클리닉</a></li>
							<li><a href="clinic02">대상포진 클리닉</a></li>
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
				<h1>관절통증 클리닉</h1>
			</div>
			<div class="clinic_sub_nav">
				<ul>
					<li><a href="clinic03_01">스포츠 재활치료</a></li>
					<li><a href="clinic03_02">주사치료</a></li>
				</ul> 
			</div>
			<div class="content">
				<img class="diaIcon" src="${pageContext.request.contextPath}/resources/images/icon_dia.png">
				<h1 class="subTitle">스포츠 재활치료</h1>
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>스포츠 재활치료</p>
					</div>
					<div class="content_small_content">
						많은 분들이 스포츠재활치료하면 운동 선수들이 부상 이후 복귀를<br>
						돕기 위한 치료로 알고 있습니다. 하지만 재활치료는 운동선수뿐만<br>
						아니라 일반인도 일상으로의 복귀를 위한 중요한 치료입니다.<br>
						관절염에는 특히나 재활치료가 필요합니다.
					</div>
				</div><!-- content00 end -->
				<img style="margin-top:100px;width:600px;" src="${pageContext.request.contextPath}/resources/images/clinic03img1.png">
				<div class="content00">
					<div class="content_small_title">
						<!-- <hr>
						<p>신경성형술</p>
						<p><span>적용질환</span></p> -->
					</div>
					<div class="content_small_content">
						스포츠재활치료는 녹이 슬어 문이 잘 열리고 닫히지 않는 것 같은<br>
						관절염에 매우 종요한 치료방법입니다.<br>
						적절한 운동과 함께하는 유한통증의학과의 스포츠재활치료는 녹이<br>
						슨 부위에 윤활유를 바른 후 여러 번 닫았다 열었다 하는 동작을 반복<br>
						하며 문이 잘 열리고 닫히게 하는 것처럼 관절의 부드러움을 되찾아<br>
						환자분들의 통증을 개선시키는 치료입니다.
						<br><br><br>
						스포츠재활치료를 하는 이유는 대부분의 척추 및 관절 질환은 부실한<br>
						주변 근육과 인대에 원인이 있기 때문입니다. 허리 근육이 약해지면<br>
						척추에 부담을 주게 되어 디스크탈출이나 불안정한 상태로 발전하여<br>
						여러 척추 질환들을 발생시킵니다. 100세 시대 삶의 질을 향상 시키기<br>
						위해 유한통증의학과의 스포츠재활치료가 필요합니다.
					</div>
				</div><!-- content00 end -->
				<img style="margin-top:100px;width:600px;" src="${pageContext.request.contextPath}/resources/images/clinic03img2.png">
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>스포츠재활치료</p>
						<p><span>필요 대상 및</span></p>
						<p><span>기대효과</span></p>
					</div>
					<div class="content_small_content">
						<div class="ccc"> 
							<h2><span class="dot">·</span> 필요대상</h2>
							<p>- 허리수술 또는 인공관절 수술을 받은 환자, 관절염 환자 등</p>
						</div>
						<div class="ccc">
							<h2><span class="dot">·</span> 기대효과</h2>
							<ul>
								<li>관절염 환자가 재활치료를 진행하면 관절 주위 근육들이 튼튼해지며<br>&nbsp;&nbsp;뼈와 연골 조직들이 건강해 집니다.</li>
								<li>절염 통증으로 인해 움직이지 않을 때 발생할 수 있는 관절 경직을<br>&nbsp;&nbsp;예방합니다.</li>
								<li>몸의 컨디션을 높여주며 통증으로 생길 수 있는 우울증을 예방합니다.</li>
								<li>인공관절 수술환자에게는 인공관절 수명을 늘려주고 통증을 완하시켜<br>&nbsp;&nbsp;빠른 일상행활복귀가 가능하게 합니다.</li>
							</ul>
						</div>
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