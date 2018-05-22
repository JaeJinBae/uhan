<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사말 | 유한통증의학과</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=2">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css?ver=1"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<style type="text/css">
	@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);font-family: 'Noto Sans KR', sans-serif;
	*{
		margin:0;
		padding:0;
	}
	body{
		/* font-family: 'Noto Sans', sans-serif; */
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
		margin-bottom:130px;
	}
	.contentWrap .content1Wrap{ 
		width:100%;
		text-align: center;
		margin-bottom:50px;
		overflow: hidden;
	}
	.contentWrap .mainClinic{
		width:370px;
		height:350px;
		float:left;
		margin-right:27px;
		background: #ffffff;
	}
	.contentWrap .mainClinic:last-child{
		margin:0; 
	}
	.contentWrap .mainClinic .clinicIcon{
		margin-top:40px;
	}
	.mainClinic hr{
		width:20px;
		margin:10px auto;
		margin-bottom:20px;
		border:0;
		border-top:2px solid #000000;
	}
	.mainClinic h1{
		font-size:27px;
		margin-bottom:20px;
	}
	.mainClinic p{
		font-size: 20px;
		letter-spacing: -1.5px;
		line-height: 35px;
	}
	.boldText{
		font-weight: bold;
		font-size:20px;
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
	}
	.notice .noticeTextDiv p{
		font-size:14px;
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
		border:0.6px solid #c2c2c3;
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
	}
	.notice table tr td a{
		color:#666666;
		font-size:15px;
	}
	.notice table tr:hover td{ 
		color:black;
		font-weight:bold;
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
		margin-bottom:17px;
	}
	.bottomContent>h2{
		margin-bottom:14px;
	}
	.bottomContent>h2>a{
		color:#666666;
		font-size:20px;
		font-weight: normal;
	}
	#bottomLine{
		border:0;
		border-top:1px solid #dcdcdc;
		margin-bottom:40px;
	}
	.bottomContentText{
		color:#919191;
		font-size:20px;
		letter-spacing: -1px;
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
				<div class="mainClinic" style="border:6px solid #ec9631;">
					<p class="clinicIcon"><img src="${pageContext.request.contextPath}/resources/images/icon_01.png" style="width:45px;"></p>
					<hr align="center">
					<h1>비수술 클리닉</h1>
					<p><span class="boldText">수술 없이도</span> 통증의 원인을</p>
					<p>분석하여 빠르게 통증을 줄이는</p>
					<p>유한통증의학과만의 <span class="boldText">비수술 클리닉</span></p>
				</div>
				<div class="mainClinic" style="border:6px solid #6b5b95;">
					<p class="clinicIcon"><img src="${pageContext.request.contextPath}/resources/images/icon_02.png" style="width:35px;"></p>
					<hr>
					<h1>대상포진 클리닉</h1>
					<p><span class="boldText">오랜기간 풍부한 임상경험</span>으로</p>
					<p>빠른 통증치료와 만족감을 주는</p>
					<p>유한통증의학과만의 <span class="boldText">대상포진 클리닉</span></p>
				</div>
				<div class="mainClinic" style="border:6px solid #00b4ae;">
					<p class="clinicIcon"><img src="${pageContext.request.contextPath}/resources/images/icon_03.png" style="width:31px;"></p>
					<hr>
					<h1>관절통증 클리닉</h1>
					<p><span class="boldText">스포츠재활치료</span>와 <span class="boldText">주사치료</span>를 통해</p>
					<p>수술 부담감을 줄여주는</p>
					<p>유한통증의학과의 <span class="boldText">관절통증 클리닉</span></p>
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
				<div class="box" style="background: url('${pageContext.request.contextPath}/resources/images/timebg.png') no-repeat;">
				
				</div>
				<div class="box" style="background:url('${pageContext.request.contextPath}/resources/images/yellowBG.png') no-repeat;">
				
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