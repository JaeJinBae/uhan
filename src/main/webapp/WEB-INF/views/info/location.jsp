<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오시는 길 | 유한통증의학과</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=2">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=uFwNagnnR3Ef3GygBT7t&submodules=drawing"></script>
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
	.contentWrap .title{
		margin-top:50px;
		margin-bottom:50px;
	}
	.contentWrap .title p{
		font-size: 1.5em;
		margin-bottom:10px;
		color:#333333;
	}
	.contentWrap .title p:nth-child(2){
		font-weight: bold;
		font-size: 1.6em;
	}
	.addr{
		font-size: 1.5em;
		margin-top:20px;
		margin-bottom:100px;
		font-weight: bold;
		color:#333333;
		
	}
	.addrInfo{
		width:900px;
		height:200px;
		margin:0 auto;
		margin-bottom:50px;
	}
	.info2{
		float:left;
	}
	.info2>p{
		font-size:15px;
	}
	.info3{
		float:right;
		width:650px;
		margin:0 auto;
		margin-top:50px;
	}
	.info3>ul>li{
		list-style: disc;
		text-align: left;
		font-weight: bold;
		font-size: 15px;
		margin-bottom:10px;
	}
	.line{
		width:920px;
		margin-bottom:50px;
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
	.info3_li_m{
		display: none;
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
	.contentWrap .title{
		margin-top:50px;
		margin-bottom:50px;
	}
	.contentWrap .title p{
		font-size: 1.5em;
		margin-bottom:10px;
		color:#333333;
	}
	.contentWrap .title p:nth-child(2){
		font-weight: bold; 
		font-size: 1.6em;
	}
	#map{
		width:100% !important;
	}
	.addr{
		font-size: 2em;
		margin-top:20px;
		margin-bottom:100px;
		font-weight: bold;
		color:#333333;
		
	}
	.addrInfo{
		width:99%;
		height:200px;
		margin:0 auto;
		margin-bottom:50px;
	}
	.info2{
		float:left;
		margin-left:10px;
	}
	.info2>p{ 
		font-size:15px;
	}
	.info2:last-child{
		margin-top:30px;
	}
	.info3{
		float:right;
		width:560px;
		margin:0 auto;
		margin-top:50px;
	}
	.info3>ul>li{
		list-style: disc;
		text-align: left;
		font-weight: bold;
		font-size: 15px;
		margin-bottom:10px;
	}
	.line{
		width:750px;
		margin-bottom:50px;
	}
	/* quick menu */
	.quick{
		display:none;
	}
	.info3_li_m{
		display: none;
	}
}
@media only screen and (min-width:320px) and (max-width:767px){
	body{
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
		letter-spacing: 0.1em;
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
		margin-left:47px;
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
	.contentWrap .title p{
		text-align: center;
		margin-bottom: 10px;
	}
	.contentWrap .title p:LAST-CHILD{
		text-align: center;
		font-size: 1.5rem;
		font-weight: 550;
	}
	#map{
		width:97% !important;
		margin:0 auto;
		height:250px !important;
	}
	.addr{
		margin-top:15px;
		margin-bottom:30px;
		font-size:1.2em;
		text-align: center;
		font-weight: 550;
	}
	.addrInfo{
		width:95%;
		margin: 0 auto;
		margin-top: 15px;
		overflow: hidden;	
	}
	.info2{
		text-align: center;
	}
	.info2 img{
		width:50px;
	}
	.info3 ul{
		margin-top: 15px;
	}
	.info3 ul li:BEFORE{
		content:"●";
		font-size: 0.3em;
		margin-right: 8px;
	}
	.info3 ul li{
		padding: 10px 0px;
		font-weight: 550;
	}
	.info3>ul:first-child>li:nth-child(2){
		line-height: 11px;
	}
	 .line{
	 	display:block;
		width:90%;
		height:1px;
		margin:0 auto;
		margin-top:30px;
		margin-bottom: 30px;
	} 
	#info3_li_pc{
		display: none;
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
						<a href="location">오시는길<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="info01">인사말</a></li>
							<li><a href="info02">의료진 소개</a></li>
							<li><a href="info03">병원 둘러보기</a></li>
							<li><a href="info04">진료안내</a></li>
						</ul>	
					</li>
				</ul>
			</div><!-- navWrap end -->
		</div><!-- mainBackground end -->
		<div class="contentWrap">
			<div class="title">
				<p>|</p>
				<p>오시는 길</p>
			</div>
			
			<div id="map" style="width:1024px;height:450px;margin:0 auto;"></div>
	
			<script> 
				var mapOptions = {
				    center: new naver.maps.LatLng(35.859189, 128.621849),
				    zoom: 11
				};
				
				var map = new naver.maps.Map('map', mapOptions);
				
				var marker = new naver.maps.Marker({
				    position: new naver.maps.LatLng(35.859189, 128.621849),
				    map: map
				});
				
			</script>
			<p class="addr">대구광역시 수성구 달구벌대로 2372, 4층(범어동)</p>
			<div class="addrInfo">
				<div class="info2">
					<img src="${pageContext.request.contextPath}/resources/images/subway.png">
					<p>지하철 이용시</p>
				</div>
				<div class="info3">
					<ul>
						<li id="info3_li_pc">(설화명곡방면에서 오실 때) 1호선 '안심'방면 반월당에서 하차 후 2호선 환승 범어역 하차</li>
						<li class="info3_li_m">(설화명곡방면에서 오실 때) 1호선 '안심'방면 반월당에서<br/><br/> &nbsp; &nbsp; &nbsp; 하차 후 2호선 환승 범어역 하차</li>
						<li>2호선 범어역 2번출구 도보 5분 내</li>
					</ul>
				</div>
			</div>
			<img class="line" src="${pageContext.request.contextPath}/resources/images/line.png">
			<div class="addrInfo">
				<div class="info2">
					<img src="${pageContext.request.contextPath}/resources/images/bus.png">
					<p>버스 이용시</p>
				</div>
				<div class="info3">
					<ul>
						<li>범어역(2번 출구)정류장 하차 시 도보 8m 이내</li>
						<li>990, 991, 309, 609, 649, 840, 939번 버스 이용</li>
						<li>범어역(1번 출구)정류장 하차 시 맞은편에 위치</li>
						<li>수성4, 990, 991, 309, 609, 649, 840, 939번 버스 이용</li>
					</ul>
				</div>
			</div>
			<div class="quick">
				<ul>
					<li><p>Quick<br>Menu</p></li>
					<li><a href="advice"><img src="${pageContext.request.contextPath}/resources/images/quick_sangdam.png" style="width:40px;"><br><span>진료/비용 상담</span></a></li>
					<li><a href="freqQuestion"><img src="${pageContext.request.contextPath}/resources/images/quick_freqQues.png" style="width:40px;"><br><span>자주하는 질문</span></a></li>
					<li><a href="location"><img src="${pageContext.request.contextPath}/resources/images/quick_location.png" style="width:30px;"><br><span>오시는 길</span></a></li>
					<li><a href=""><img src="${pageContext.request.contextPath}/resources/images/quick_top.png" style="width:20px;"><br><span>TOP</span></a></li>
				</ul>
			</div><!-- quick end -->
		</div><!-- contentWrap 종료 --> 
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
	

</body>
</html>