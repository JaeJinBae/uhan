<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사말 | 유한통증의학과</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=5">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css?ver=1"/>
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<style type="text/css">
	@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
	*{
		margin:0;
		padding:0;
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
	.mainBanner{
		width:100%;
	}
	.mainBanner div img{
		width:100%;
	}
	.contentWrap{
		width:1200px;
		margin:0 auto;
		position: relative;
		top:-50px;
		margin-bottom:115px;
	}
	.contentWrap .content1Wrap{ 
		width:100%; 
		text-align: center;
		margin-bottom:50px;
		overflow: hidden;
	}
	.mainClinic{
		width:380px;
		height:350px;
		float:left;
		margin-right:9px;
		background: #ffffff;
		position: relative;
	} 
	.mainClinic:last-child{
		margin:0; 
	}
	.mainClinic .clinicIcon{
		margin-top:40px;
	}
	.mainClinic:last-child .clinicIcon{
		margin-top:38px;
	}
	.mainClinic hr{
		width:20px;
		margin:10px auto;
		margin-bottom:20px;
		border:0;
		border-top:2px solid #000000;
	}
	.mainClinic:last-child hr{
		margin-top:5px;
	}
	.mainClinic h1{
		font-size:27px;
		margin-bottom:20px;
		font-family: 'Nanum Square';
		font-weight: bold;
	}
	.mainClinic p{
		font-size: 19px;
		letter-spacing: -1.5px;
		line-height: 35px;
		color:#666666;
	}
	.mainClinic .clinicHoverDiv{
		display:none;
		width:380px;
		height:350px;
		color:white;
		position: absolute;
		top:0;
		left:0;
		z-index:99;
	}
	.clinicHoverDiv hr{
		width:20px;
		margin:10px auto;
		margin-bottom:20px;
		border:0;
		border-top:2px solid white;
	}
	.clinicHoverDiv a img{
		margin-top:50px;
	}
	.mainClinic:hover .clinicHoverDiv{
		display: block;
	}
	.boldText{
		font-weight: bold;
		font-size:19px;
		color:#666666;
	}
	.contentWrap .content2Wrap{
		width:100%;
		overflow: hidden;
	}
	.contentWrap .content2Wrap .notice{
		width:586px;
		height:276px; 
		background:url("${pageContext.request.contextPath}/resources/images/noticeBg.png");
		float:left;
	}
	.notice .noticeLogo{
		float:left;
		margin-top:35px;
		margin-left:45px;
		margin-bottom:20px;
	}
	.notice .noticeTextDiv{
		float:left;
		margin-left:20px;
		margin-top:40px;
	}
	.notice .noticeTextDiv h1{
		font-size:25px;
		margin-bottom:8px;
		font-family: 'Nanum Square';
	}
	.notice .noticeTextDiv p{
		font-size:15px;
		color:#666666;
		font-family: 'Nanum Square';
		font-weight: 500;
	}
	.notice .noticeMoreBtn{
		float:right;
		margin-top:40px;
		margin-right:40px;
	}
	.notice hr{
		clear:both;
		width:510px; 
		margin:0 auto;
		border:0;
		border-top:1px solid #c2c2c3;
	}
	.notice table{
		width:87%;
		margin:0 auto;
		margin-top:25px;
	}
	.notice table tr td{
		padding-top:10px;
		color:#666666;
		font-size:15px;
		font-family: 'Nanum Square';
	}
	.notice table tr td a{
		font-family: 'Nanum Square';
		color:#666666;
		font-size:15px;
	}
	.notice table tr td:first-child{
		padding-left:20px;
	}
	.notice table tr td:first-child img{
		margin-right:15px;
		margin-top:8px;
		float:left;
	}
	.notice table tr td:last-child{
		text-align: right;
	}
	.contentWrap .content2Wrap .box{
		float:left;
		width:287px;
		height:278px;
		margin-left:20px;
		color:white;
		text-align: center;
	}
	.content2Wrap .box hr{
		width:13px;
		margin:13px auto;
		margin-top:25px;
		border:0;
		border-top:1px solid white;
	}
	.content2Wrap .box h1{
		font-weight: normal;
		font-size: 21px;
		font-family: 'Nanum Square';
		font-weight: 500;
	}
	#box1 p{
		color:#ec9631;
		font-size:26px;
		letter-spacing:2px;
		margin-top:5px;
	}
	#box1 ul{
		width:71%;
		margin:0 auto;
		text-align: left;
	}
	#box1 ul li:before{
		content:"- ";
	}
	#box1 ul li{
		font-size:17px;
		margin-top:13px;
		color:#c1c2cc;
		letter-spacing: -2px;
		line-height: 1.2;
		font-family: 'Nanum Square';
	}
	#box1 ul li .number{
		letter-spacing: 1px;
		font-size:17px;
	}
	#box1 ul li .smallText{ 
		font-size:16px;
	}
	#box2 ul{
		width:81%;
		margin:0 auto;
	}
	#box2 ul li{
		border-bottom:1px solid rgba(255,255,255,0.4);
		text-align: left;
		padding-bottom:18px;
		margin-top:17px;
		font-size:14px;
		font-family: 'Nanum Square';
	}
	#box2 ul li:first-child{
		margin-top:15px;
	}
	#box2 ul li img{
		width:24px;
		float:left;
		margin-right:15px;
	}
	#box2 ul li:first-child img{
		margin-top:5px;
	}
	.bottomBannerWrap{
		width:100%;
		height:453px;
		background: url("${pageContext.request.contextPath}/resources/images/bottomBannerBg.png");
	}
	.contentDiv{
		width:1200px;
		margin:0 auto;
	}
	.bottomBanner{
		width:802px;
		position: relative;
		top:-100px;
		float:left;
	}
	.bottomContent{
		float:right;
		margin-top:60px;
	}
	.bottomContent>h1{
		color:#00b4ae;
		font-size: 30px;
		margin-bottom:12px;
		font-family: 'Nanum Square';
	}
	.bottomContent>h2{
		margin-bottom:14px;
	}
	.bottomContent>h2>a{
		color:#666666;
		font-size:22px;
	}
	#bottomLine{
		border:0;
		border-top:1px solid #dcdcdc;
		margin-bottom:25px;
	}
	.bottomContentText{
		color:#919191;
		font-size:20px;
		letter-spacing: -1px;
		line-height: 30px;
	}
	
</style>
<script type="text/javascript">
	$(function(){
		$(".mainBanner").slick({
			arrows:false,
			infinite:true,
			speed:500,
			fade:true,
			cssEase:'linear',
			autoplay:true,
			autoplaySpeed:4000,
		});
		$(".bottomBanner").slick({
			arrows:false,
			infinite:true,
			speed:500,
			fade:true,
			cssEase:'linear',
			autoplay:true,
			autoplaySpeed:4000,
			dots:true
		});
		$(".noticeMoreBtn>img").mouseover(function(){
			$(this).attr("src","/resources/images/plus_on.png");
		});
		$(".noticeMoreBtn>img").mouseout(function(){
			$(this).attr("src","/resources/images/more_btn.png");
		});
	});
</script>
</head>
<body>
	<header>
		<jsp:include page="../include/header.jsp"></jsp:include>
	</header>
	<section>
		<div class="mainBanner">
			<div><img src="${pageContext.request.contextPath}/resources/images/slide_1.jpg" alt="유한통증의학과"></div>
			<div><img src="${pageContext.request.contextPath}/resources/images/slide_2.jpg" alt="유한통증의학과"></div>
			<div><img src="${pageContext.request.contextPath}/resources/images/slide_3.jpg" alt="유한통증의학과"></div>
		</div>
		<div class="contentWrap">
			<div class="content1Wrap">
				<div class="mainClinic" style="border:7px solid #ec9631;">
					<p class="clinicIcon"><img src="${pageContext.request.contextPath}/resources/images/icon_01.png" style="width:45px;"></p>
					<hr align="center">
					<h1>비수술 클리닉</h1>
					<p><span class="boldText">수술 없이도</span> 통증의 원인을</p>
					<p>분석하여 빠르게 통증을 줄이는</p>
					<p>유한통증의학과만의 <span class="boldText">비수술 클리닉</span></p>
					<div class="clinicHoverDiv" style="background:#ec9631;">
						<p class="clinicIcon"><img src="${pageContext.request.contextPath}/resources/images/icon_1_hover.png" style="width:45px;"></p>
						<hr align="center">
						<h1>비수술 클리닉</h1>
						<a href="clinic01_01"><img src="${pageContext.request.contextPath}/resources/images/barogo.png"></a>
					</div>
				</div>
				<div class="mainClinic" style="border:7px solid #6b5b95;">
					<p class="clinicIcon"><img src="${pageContext.request.contextPath}/resources/images/icon_02.png" style="width:35px;"></p>
					<hr>
					<h1>대상포진 클리닉</h1>
					<p><span class="boldText">오랜기간 풍부한 임상경험</span>으로</p>
					<p>빠른 통증치료와 만족감을 주는</p>
					<p>유한통증의학과만의 <span class="boldText">대상포진 클리닉</span></p>
					<div class="clinicHoverDiv" style="background:#6b5b95;">
						<p class="clinicIcon"><img src="${pageContext.request.contextPath}/resources/images/icon_2_hover.png" style="width:35px;"></p>
						<hr align="center">
						<h1>대상포진 클리닉</h1>
						<a href="clinic02"><img src="${pageContext.request.contextPath}/resources/images/barogo.png"></a>
					</div>
				</div>
				<div class="mainClinic" style="border:7px solid #00b4ae;">
					<p class="clinicIcon"><img src="${pageContext.request.contextPath}/resources/images/icon_03.png" style="width:31px;"></p>
					<hr>
					<h1>관절통증 클리닉</h1>
					<p>수술 부담감을 줄여주는</p>
					<p><span class="boldText">스포츠재활치료</span>, <span class="boldText">주사치료</span>를 통한</p>
					<p>유한통증의학과의 <span class="boldText">관절통증 클리닉</span></p>
					<div class="clinicHoverDiv" style="background:#00b4ae;">
						<p class="clinicIcon"><img src="${pageContext.request.contextPath}/resources/images/icon_3_hover.png" style="width:31px;"></p>
						<hr align="center">
						<h1>관절통증 클리닉</h1>
						<a href="clinic03_01"><img src="${pageContext.request.contextPath}/resources/images/barogo.png"></a>
					</div>
				</div>
			</div><!-- content1Wrap end -->
			<div class="content2Wrap">
				<div class="notice">
					<img class="noticeLogo" src="${pageContext.request.contextPath}/resources/images/notice_btn.png" style="width:64px;">
					<div class="noticeTextDiv">
						<h1>공지사항</h1>
						<p>유한통증의학과의 새로운 소식입니다.</p>
					</div>
					<a class="noticeMoreBtn" href="#"><img src="${pageContext.request.contextPath}/resources/images/more_btn.png" style="width:46px;"></a>
					<hr>
					<table>
						<tr>
							<td><img src="${pageContext.request.contextPath}/resources/images/list.png"><a href="#">ABCDEFGHIjklmnopqrstuvwxyz</a></td>
							<td>2018-05-21</td>
						</tr>
						<tr>
							<td><img src="${pageContext.request.contextPath}/resources/images/list.png"><a href="#">ABCDEFGHIjklmnopqrstuvwxyz</a></td>
							<td>2018-05-21</td>
						</tr>
						<tr>
							<td><img src="${pageContext.request.contextPath}/resources/images/list.png"><a href="#">ABCDEFGHIjklmnopqrstuvwxyz</a></td>
							<td>2018-05-21</td>
						</tr>
					</table>
				</div>
				<div class="box" id="box1" style="background: #3c416c;">
					<hr>
					<h1>진료시간안내</h1>
					<p>09:00 ~ 18:30</p>
					<ul>
						<li>&nbsp;점심시간<span class="number"> : 12:30 ~ 14:00</span></li> 
						<li>&nbsp;토요일<span class="number"> : 09:00 ~ 13:00</span><br>
							&nbsp;&nbsp;&nbsp;<span class="smallText">(점심시간 없음)</span>
						</li> 
						<li>&nbsp;일요일 및 공휴일 휴무<br>
							&nbsp;&nbsp;&nbsp;<span class="smallText">(단, 대체공휴일은 정상진료)</span>
						</li>
					</ul>
				</div>
				<div class="box" id="box2" style="background:#ec9631;">
					<hr>
					<h1>CONTACT US</h1>
					<ul>
						<li><img src="${pageContext.request.contextPath}/resources/images/location_icon.png">대구광역시 수성구 달구벌대로<br>2372, 4층(범어동)</li>
						<li><img src="${pageContext.request.contextPath}/resources/images/tel_icon.png">진료예약 : 053.753.6001</li>
						<li><img src="${pageContext.request.contextPath}/resources/images/fax_icon.png">FAX : 053.123.4567</li>
					</ul>
				</div>
			</div><!-- content2Wrap end -->
		</div><!-- contentWrap end -->
		<div class="bottomBannerWrap">
			<div class="contentDiv">
				<div class="bottomBanner">
					<div><img src="${pageContext.request.contextPath}/resources/images/img_1.jpg" alt="내부시설1"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/img_2.jpg" alt="내부시설2"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/img_3.jpg" alt="내부시설3"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/img_4.jpg" alt="내부시설4"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/img_5.jpg" alt="내부시설5"></div>
				</div>
				<div class="bottomContent">
					<h1>Welcome to Our Clinic</h1>
					<h2><a href="info03">병원시설 둘러보기</a></h2>
					<hr id="bottomLine">
					<p class="bottomContentText">언제나 편안하고 깨끗한 시설로 환자분을</p>
					<p class="bottomContentText">맞이하는 유한통증의학과입니다.</p>
				</div>
			</div>
		</div><!-- bottomBanner -->
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>