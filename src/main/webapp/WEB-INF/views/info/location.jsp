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
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=uFwNagnnR3Ef3GygBT7t&submodules=drawing"></script>
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
		margin:0 30px;
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
		margin-left:45px;
		width:20px;
	}
	.sub_subDropdown{
		display: none;
		background: #0B8783;
	}
	.sub_subDropdown>li{
		text-align: left;
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
		z-index: -1;
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
		/* margin-right:50px; */
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
</style>
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
						<a href="#">병원소개<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="info01">병원소개</a></li>
							<li><a href="clinic_info01">진료분야</a></li>
							<li><a href="notice">병원소식</a></li>
						</ul>
					</li>
					<li>
						<a href="#">오시는길<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="info01">인사말</a></li>
							<li><a href="info02">의료진 소개</a></li>
							<li><a href="info03">병원 둘러보기</a></li>
							<li><a href="info04">진료안내</a></li>
							<li><a href="location">오시는길</a></li>
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
						<li>(설화명곡방면에서 오실 때) 1호선 '안심'방면 반월당에서 하차 후 2호선 환승 범어역 하차</li>
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
		</div><!-- contentWrap 종료 --> 
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
	

</body>
</html>