<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주하는 질문 | 유한통증의학과</title>
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
		margin-bottom:150px;
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
	/* 자주하는 질문 */
	.collapsibleWrap{
		padding:0;
		width:882px;
		margin: 50px auto;
		list-style: none;
	}
	.collapsible{
		margin-bottom:3px;
	}
	.collapsible_title{
		padding:10px 15px;
		background: rgb(245, 245, 245);
		border:1px solid #e3e3e3;
		border-radius: 4px;
		text-align: left;
	}
	.collapsible_title>a{
		display:block;
		font-size:18px;
	}
	.content{
		font-size:15px;
		padding:15px;
		border:1px solid #e3e3e3;
		text-align: left;
	}
	.selected{
		text-decoration: underline;
		font-weight: bold;
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
		font-size:30px;
		font-weight: 500;
	}
	/* 자주하는 질문 */
	.collapsibleWrap{
		padding:0;
		width:700px;
		margin: 50px auto;
		list-style: none;
	}
	.collapsible{
		margin-bottom:3px;
	}
	.collapsible_title{
		padding:10px 15px;
		background: rgb(245, 245, 245);
		border:1px solid #e3e3e3;
		border-radius: 4px;
		text-align: left;
	}
	.collapsible_title>a{
		display:block;
		font-size:18px;
	}
	.content{
		font-size:15px;
		padding:15px;
		border:1px solid #e3e3e3;
		text-align: left;
	}
	.selected{
		text-decoration: underline;
		font-weight: bold;
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
		width:20px;
	}
	section .mainBackground .navWrap .navUl>li:last-child a>.btnArrow{
		margin-left:7px;
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
	.sub_title p{
		text-align: center;
		margin-bottom: 10px;
	}
	.sub_title h1{
		text-align: center;
		font-size: 1rem;
		font-weight: 550;
	}
	/* 자주하는 질문 */
	.collapsibleWrap{
		padding:0;
		width:360px;
		margin: 50px auto;
		list-style: none;
	}
	.collapsible{
		margin-bottom:3px;
	}
	.collapsible_title{
		padding:10px 15px;
		background: rgb(245, 245, 245);
		border:1px solid #e3e3e3;
		border-radius: 4px;
		text-align: left;
	}
	.collapsible_title>a{
		display:block;
		font-size:14px;
	}
	.content{
		font-size:13px;
		padding:15px;
		border:1px solid #e3e3e3;
		text-align: left;
	}
	.selected{
		text-decoration: underline;
		font-weight: bold;
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
        
        //collapsible menu
		$(".collapsible:eq(0) a").addClass("selected");
		
		//첫번째 collapsible 클래스를 제외한 나머지 collapsible 클래스를 선택하여, 그 아래의 content클래스를 찾아 숨긴다.
		$(".collapsible").not(":eq(0)").find(".content").hide();
		
		$(".collapsible .collapsible_title a").click(function(){
			//나를 제외한 것들을 removeClass한다.
			$(".collapsible .collapsible_title a").not(this).removeClass("selected");
			
			$(this).toggleClass("selected");
			
			var $target=$(this).parents(".collapsible").find(".content");
			$target.slideToggle(300);
			
			//선택한 애를 제외한 나머지 content class는 닫겨야 한다.
			var $other=$(".collapsible .collapsible_title a").not(this).parents(".collapsible").find(".content");
			$other.slideUp(300);
			
			return false;//link차단
			
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
				<h1>병원소식</h1>
				<p>
					최선을 다해 최고의 만족감을<br>
					안겨드리는 유한통증의학과를 만나보세요.
				</p>
			</div>
			<div class="navWrap">
				<ul class="navUl"> 
					<li><a href="${pageContext.request.contextPath}/"><img class="btnHome" src="${pageContext.request.contextPath}/resources/images/home.png"></a></li>
					<li>
						<a href="notice">병원소식<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="info01">병원소개</a></li>
							<li><a href="clinic01_01">진료분야</a></li>
						</ul>
					</li>
					<li>
						<a href="freqQuestion">자주하는 질문<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="notice">공지사항</a></li>
							<li><a href="broadcasting">언론보도</a></li>
							<li><a href="comment">시술후기</a></li>
							<li><a href="advice">진료/비용 상담</a></li>
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
			</div><!-- quick end -->
			<div class="sub_title">
				<p>|</p>
				<h1>자주하는 질문</h1>				
			</div>			
			<ul class="collapsibleWrap">
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 통증의학과 클리닉은 어떤 사람들이 가나요?</a></h2>
					<p class="content">
						우선 통증으로 고통받는 분이라면 누구나 방문 할 수 있습니다.<br>
						머리, 목, 어깨, 허리, 다리 등 신체 어떤 곳에서나 통증을 겪고 계신 분들이 방문 합니다.<br>
						이러한 분들 중에서도 특히, 수술이 싫고 빠른 일상생활로의 복귀를 원하시는 분,
						급성 통증이 있는 분, 오랫 동안 여러 병원을 가봤지만 통증 완화가 안되는 만성통증을 느끼는 분, 연세가 많고 여러 질환을 앓고 있어 부작용이 걱정되시는 분들이 많이 찾으십니다. 
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 허리디스크 자가 진단법이 있나요?</a></h2>
					<p class="content">
						  간단한 허리디스크 자가 진단법을 알려드리겠습니다.<br>
						 천장을 바라보며 누워 무릎을 쫙 펴고 한쪽 다리만을 들어봅니다.<br>
						 이때 엉치부터 무릎, 종아리, 발등 쪽으로 당겨지는 증상 또는 통증이 생기며, 양쪽 다리를 번갈아 가며 들어 올렸을 때  들어 올릴 수 있는 각도 차이가 심한 경우 허리디스크를 의심해 보아야 합니다.  
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 젊은 나이인데 허리디스크가 발생할 수 있나요?</a></h2>
					<p class="content">
						예 발생할 수 있습니다.<br>
			        	많은 분들이 허리디스크는 중장년층에서 많이 발생하는 것으로 알고 계실텐데요. 그렇지 않습니다.<br>
			        	나이에 따른 퇴행성 변화가 원인이 되는 경우도 있지만 나이와 무관하게 반복적인 외상이나 선천적인 원인등으로 디스크 질환이 발병 할 수 있습니다.<br>
			        	최근들어서는 소아에게 추간판 탈출증이 빈번하게 발생합니다. 하지만 젊은층은 시술 후 결과가 매우 좋습니다.<br>
			        	그렇기 때문에 다리 통증, 저림, 요통 등의 증상이 있다면 늦지않게 병원을 방문하여 적절한 시기에 치료받는 것이 매우 중요합니다.  
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 시술만으로 치료가 되지않는 경우 수술을 해야 하나요?</a></h2>
					<p class="content">
						유한통증의학과 유한목원장님은 수술을 전문으로 오랜기간 연구와 풍부한 임상경험을 가진 의사입니다. 특히 대구경북 최초로 꼬리뼈 레이저 시술, 신경성형술 등을 진행하셨습니다.
			        	보통 생각하시는 것과 다르게 수술이 필요한 경우는 매우 적습니다.
			        	본원의 치료로 완쾌가 되지 않는 분들도 드물게 계십니다. 이러한 경우에는 원장님께서 상세하게 설명을 드리고 안내해 드립니다. 
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 시술 후 운동과 일상생활이 바로 가능한가요?</a></h2>
					<p class="content">
						시술 후 운동은 환자의 상태에 따라 다릅니다. 운동은 가능하나 필요에따라 가능 한 운동과 하지말아야 할 운동이 나누어집니다. 극심한 무리가 가는 운동은 삼가하시는 것을 권장해드리며 
			        	일상생활은 시술 후 바로 가능하며 본원에서는 큰 무리가 없는 일상생활을 권장해드리고 있습니다.
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 허리통증에 휴식과 운동 중 어느것이 좋을까요?</a></h2>
					<p class="content">
						예전에는 허리 통증이 있을 시 누워서 쉬는게 좋다고 하였지만 연구 분석 결과 장기간 누워있게 되면 좋지 않은것으로 밝혀졌습니다. 우리 몸은 움직여야 힘을 발생할 수 있는데 오랜 기간 누워있게 되면
			        	근력이 약해져 힘을 낼 수가 없게 되며 허리곡선에 영향을 줄 수 있습니다.<br>
			        	일반적으로 일상생활을 하면 허리가 굴곡지게 되고, 운동 부족, 좌식 생활등으로 인해 허리를 받치는 근육이 서서히 약하지게 됩니다. 그렇기 때문에 근력강화를 하는 방법으로 운동만큼 좋은것은 없습니다.
			        	하지만 통상적으로 허리통증 발생 2일 까지는 무리하지 않고 쉬어주는 것이 좋습니다.
			        	전문 치료사 지도 하에 기구를 이용한 운동을 해주면 더욱 좋습니다.
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 오십견은 어떻게 치료하나요?</a></h2>
					<p class="content">
						오십견은 관정낭이라는 어깨 관절을 감싸고 있는 부위에 염증이 발생하여 통증이 오며 어깨가 점점 굳어지는 질환입니다.<br>
			        	주사치료와 약물 치료를 병행하여 진행하며 호전이 없는 경우 충격파 치료를 겸하게 됩니다. 그러면 대부분이 회복을 합니다.<br>
			        	하지만 하루종일 극심한 통증이 이어지는 경우는 관절낭에 염증이 아주 심하므로 재활운동을 하면 안됩니다. 극심한 염증에 재활운동을 더하면 오히려 고통이 더욱 커지며 굳어지게 됩니다.<br>
			        	이런 경우 어깨에 자극을 최소화 해주고 어깨주변을 차갑게보다 따듯하게 해주어 근율을 풀어주는 것이 통증완화에 도움이 됩니다.  
					</p>
				</li>
				<li class="collapsible">
					<h2 class="collapsible_title"><a href="#">Q. 연골주사와 뼈주사는 무엇이 다르나요?</a></h2>
					<p class="content">
						쉽게 말해 뼈주사는 염증을 억제해주는 주사이고, 연골 주사는 연골 영양제로서 관절을 부드럽게 해주는 주사입니다.
			        	뼈주사는 스테로이드 성분을 가지고 강한 염증 억제 작용을 합니다. 연골 주사는 히알루론산(Hyaluronate)이라는 연골을 구성하고 있는 성분을 가지있으며 이 성분으로 관절을 부드럽게 해줍니다.
			        	스테로이드 성분이 있는 뼈주사는 자주 맞으면 힘줄이 약해지거나 연골이 약해지는 부작용이 발생할 수 있으므로 최소 6개월의 간격을 두고 맞는 것이 좋습니다. 
					</p>
				</li>
			</ul><!-- collapsibleWrap end -->
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>