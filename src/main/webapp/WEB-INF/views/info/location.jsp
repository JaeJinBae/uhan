<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유한통증의학과 오시는 길</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=2">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=uFwNagnnR3Ef3GygBT7t&submodules=drawing"></script>
<style type="text/css">
	body{
		font-family: 'Noto Sans', sans-serif;
	}
	#bodyWrap{
		width:100%;
		height:2000px;
		position: relative;
	}
	#header{
		width:100%;
		margin:0 auto;
		z-index: 9999;
	}
	#footer{
		width:100%;
		position: absolute;
		bottom:0;
	}
	#mainBackground{
		width:100%;
		min-width:1200px;
		height:25%;
		clear:both;
		background: url("${pageContext.request.contextPath}/resources/images/location_top_image.png") no-repeat;
		position:absolute;
		top:54px;
		left:50%;
		transform:translateX(-50%);
		z-index: -1;
	}
	#mainBackground #mainIntro{
		width:500px;
		height:100px;
		margin-top:130px;
		margin-left:18%;
		color:white;
	}
	#mainBackground #mainIntro h2{
		font-size: 2.7em;
		margin-bottom:13px;
	}
	#mainBackground #mainIntro p{
		font-size: 1.4em;
		margin-bottom:5px;
	}
	#centerNav{
		width:100%;
		height:60px;
		background: #0B8783;
		position: absolute;
		top:400px;
	}
	#centerNav>ul{
		width:600px;
		height:60px;
		/* line-height: 60px; */
		margin-left:16%;
	}
	#centerNav>ul li{
		width:200px;
		height:60px;
		float:left;
		color:white;
		font-size: 1.3em;
		border-right:1px solid #3C9F9C;
		border-left:1px solid #3c9f9c;
		padding-right:15px;
		padding-left:15px; 
		line-height: 60px;
		text-align: center;
	}
	#centerNav>ul li:first-child{
		width:50px;
		line-height: 70px;
	}
	#contentWrap{
		width:1200px;
		margin:0 auto;
		position: absolute;
		top:500px;
		left:50%;
		transform:translateX(-50%);
		text-align: center;
	}
	#contentWrap #title{
		margin-bottom:50px;
	}
	#contentWrap #title p{
		font-size: 1.5em;
		margin-bottom:10px;
		color:#333333;
	}
	#contentWrap #title p:nth-child(2){
		font-weight: bold;
		font-size: 1.6em;
	}
	#addr{
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
	#line{
		width:920px;
		margin-bottom:50px;
	}
</style>
</head>
<body>
	<div id="bodyWrap">
		<div id="header">
			<jsp:include page="../include/header2.jsp"></jsp:include>
		</div>
		<div id="mainBackground">
			<div id="mainIntro">
				<h2>병원소개</h2>
				<p>통증에 대한 오랜 연구 다양한 임상 경험과</p>
				<p>노하우를 갖춘 유한통증의학과입니다.</p>
			</div>
		</div>
		<div id="centerNav">
			<ul>
				<li><a href="${pageContext.request.contextPath}"><img id="btnHome" src="${pageContext.request.contextPath}/resources/images/home.png"></a></li>
				<li>병원소개&nbsp;&nbsp;&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/images/arrow.png"></li>
				<li>오시는 길&nbsp;&nbsp;&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/images/arrow.png"></li>
			</ul>
		</div>
		<div id="contentWrap">
			<div id="title">
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
			<p id="addr">대구광역시 수성구 달구벌대로 2372, 4층(범어동)</p>
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
			<img id="line" src="${pageContext.request.contextPath}/resources/images/line.png">
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
		<div id="footer">
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</div>
	</div><!-- bodyWrap 종료 -->
	

</body>
</html>