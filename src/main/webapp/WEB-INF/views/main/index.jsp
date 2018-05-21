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
	*{
		margin:0;
		padding:0;
	}
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
	}
	.contentWrap .mainClinic{
		width:370px;
		height:350px;
		display:inline-block;
		margin-right:26px;
		background: #ffffff;
	}
	.contentWrap .mainClinic:last-child{
		margin:0;
	}
	.contentWrap .content2Wrap{
		width:100%;
	}
	.contentWrap .content2Wrap .notice{
		width:570px;
		height:276px;
		border:1px solid #dcdcdc;
		display:inline-block;
	}
	.contentWrap .content2Wrap .box{
		display:inline-block;
		width:287px;
		height:278px;
		margin-left:23px;
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
				<div class="mainClinic" style="border:5px solid #ec9631;">
			
				</div>
				<div class="mainClinic" style="border:5px solid #6b5b95;">
				
				</div>
				<div class="mainClinic" style="border:5px solid #00b4ae;">
				
				</div>
			</div><!-- content1Wrap end -->
			<div class="content2Wrap">
				<div class="notice">
					
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