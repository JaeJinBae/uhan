<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대상포진 클리닉 | 유한통증의학과</title>
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
	.clinic_title h1{
		font-size:35px;
		font-weight: 500;
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
		/* width:61%; */
		width:572px;
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
		width:21px;
		margin-top:12px;
		margin-right:20px; 
	}
	.content00 .content_small_content .ccc p{
		float:left;
		font-size:19px;
		margin-top:9px;
		line-height: 21px;
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
	.clinic_title h1{
		font-size:35px;
		font-weight: 500;
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
		/* width:61%; */
		width:529px;
		float:right;
		text-align: left;  
		color:#2d2d2d;
		font-size:19px;
		line-height: 35px;
		margin-top:50px;
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
		width:21px;
		margin-top:12px;
		margin-right:20px; 
	}
	.content00 .content_small_content .ccc p{
		float:left;
		font-size:19px;
		margin-top:9px;
		line-height: 21px;
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
		float:left
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
		
		/* quickMenu */
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
        });/* quickMenu end */
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
						<a href="${pageContext.request.contextPath}/clinic02">대상포진 클리닉<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="${pageContext.request.contextPath}/clinic01_01">비수술 클리닉</a></li>
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
			</div>
			<div class="clinic_title">
				<p>|</p>
				<h1>대상포진 클리닉</h1>
			</div>
			<div class="content">
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>대상포진 <span>이란?</span></p>
					</div>
					<div class="content_small_content">
						피부에 물집 형태의 병적인 증상과 발진이 나타나며 해당 부위에<br>
						극심한 통증을 유발하는 질환입니다. 수두-대상포진 바이러스가<br>
						신경절 부위에 잠복해 있으며 아무런 증상과 지장이 없다가 면역력이<br>
						떨어지게 되면 활성화되어 발병하게 됩니다.
					</div>
				</div><!-- content00 end -->
				<img style="margin-top:70px;width:600px;" src="${pageContext.request.contextPath}/resources/images/clinic02desangimg.png">
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>대상포진 <span>원인</span></p>
					</div>
					<div class="content_small_content">
						과도한 업무, 스트레스, 잘못된 식습관, 수면부족 등 다양한 원인으로<br>
						면역력이 약화된 환자에게서 발생하며 젊은 사람들에게는 드물게<br>
						나타나고 50세 이상의 연령층 환자들이 많습니다.<br>
						또한 수두를 앓았던 사람은 누구든지 대상포진이 발병할 수 있습니다.
					</div>
				</div><!-- content00 end -->
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>대상포진 <span>증상</span></p>
					</div>
					<div class="content_small_content">
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/num01.png">
							<p>발진이 시작되기 며칠 전부터 발진이 일어날 피부주변이<br>따끔거리거나 가렵고 통증이 발생합니다.</p>
						</div>
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/num02.png">
							<p>통증, 발열, 가려움증, 두통, 구역, 피곤함 등 부위에 따라 다른<br>통증이 발생합니다.</p>
						</div>
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/num03.png">
							<p>피부에 따끔거리거나 화끈거리는 증상이 나타납니다.</p>
						</div>
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/num04.png">
							<p>띠 모양으로 피부발진이 나타나며 수포가 생깁니다.</p>
						</div>
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/num05.png">
							<p>수포 발생 부위가 아물면 띠 모양으로 변색된 상흔을 남깁니다.</p>
						</div>
					</div>
				</div><!-- content00 end -->
				<img style="margin-top:70px;width:600px;" src="${pageContext.request.contextPath}/resources/images/clinic02img2.png">
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>대상포진 <span>발생부위</span></p>
					</div>
					<div class="content_small_content">
						주로 가슴, 등, 엉덩이 몸통과 둔부쪽에 잘 나타나며 얼굴, 팔, 다리<br>
						등 다양한 부위에서 발생 할 수 있습니다. 만약 대상포진이 귀에 발생<br>
						하게 되면 안면신경 마비로 인해 입이 돌아갈 수도 있습니다. 통증은<br>
						발생 부위에 따라 관절통, 편두통 등으로 오해하는 경우가 있습니다.<br>
						2~3주의 급성기에 대상포진을 잘 치료해주어야 하며 이 기간이<br>
						지나면 대상포진 후 신경통으로 극심한 통증이 발생됩니다.
					</div>
				</div><!-- content00 end -->
				<div class="content00">
					<div class="content_small_title">
						<hr>
						<p>대상포진 <span>예방법</span></p>
					</div>
					<div class="content_small_content">
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/num01.png">
							<p>영양분을 골고루 섭취하며 규칙적인 운동을 한다.</p>
						</div>
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/num02.png">
							<p>충분한 휴식 및 수면을 취하며 스트레스를 적절히 해소한다.</p>
						</div>
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/num03.png">
							<p>필요한 경우 비타민 제제를 복용하며 인체저항력을 해치는<br>과음을 삼가한다.</p>
						</div>
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/num04.png">
							<p>50세 이상 성인의 경우 대상포진 예방주사를 맞는 것이 좋다.</p>
						</div>
						<div class="ccc">
							<img src="${pageContext.request.contextPath}/resources/images/num05.png">
							<p>수포 발생 부위가 아물면 띠 모양으로 변색된 상흔을 남깁니다.</p>
						</div>
					</div>
				</div><!-- content00 end -->
			</div><!-- content end -->
			<div class="mContent">
				<img src="${pageContext.request.contextPath}/resources/mobileImage/mclinic02img.png">
			</div>
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>