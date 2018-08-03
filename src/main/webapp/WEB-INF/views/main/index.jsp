<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1"> 
<title>유한통증의학과</title>
<meta name="description" content="대구광역시 수성구 범어동 통증의학과, 비수술클리닉, 대상포진클리닉, 관절클리닉">
<meta property="og:type" content="website">
<meta property="og:title" content="유한통증의학과">
<meta property="og:description" content="대구광역시 수성구 범어동, 비수술클리닉, 대상포진클리닉, 관절클리닉">
<meta property="og:image" content="http://www.uhan-hospital.com/logo.png">
<meta property="og:url" content="http://www.uhan-hospital.com">
<link rel="canonical" href="http://www.uhan-hospital.com/">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=5">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css?ver=1"/>
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css?ver=9"/> --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
	@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
 *{
	margin:0;
	padding:0;
 }
@media only screen and (min-width:1100px){
	header{
		width:100%;
		min-width:1200px;
		height:108px;
		position: fixed; 
		top: 0;
		left:0; 
		right:0;
		bottom:0;
		margin:0 auto;
		z-index: 99;
	}
	section{
		width:100%;
		min-width:1200px;
		margin-bottom:100px;
	}
	.mainBanner{
		width:100%;
	}
	.mainBanner div img{
		width:100%;
	}
	.slick-dots{
		bottom:30px;
	}
	.slick-dots li{
		width:28px;
	}
	.slick-dots li button:before{
		font-size:20px;
		color:gray;
		opacity:0.75;
	}
	.slick-dotted.slick-slider{
		margin-bottom:0;
	}
	.contentWrap{
		width:1200px;
		margin:0 auto;
		margin-bottom:100px;
		overflow: hidden;
	}
	.contentWrap > div{
		float:left;
	}
	.centerContent{
		margin: 0 14px;
	}
	.smallMenu{
		border-bottom:2px solid lightgray;
		padding-top:28px;
		padding-bottom:28px;
		margin-bottom:28px;
	}
	.smallMenu > a > span{
		display:block;
		text-align: center;
		font-size:15px;
		margin-top:15px;
	}
	.clinicMenu{
		width:551.84px;
		overflow:hidden;
	}
	.clinicMenu > a{
		float:left;
		width:33.33%;
	}
	.clinicMenu > a > img{
		width:100%;
	}
	.rightContent{
		float:right !important;
	}
	.rightContent > .rightContentMenuWrap{
		width:100%;
	}
	.rightContent > .rightContentMenuWrap > a{
		width:311px;
		display:block;
		height:52px;
		position: relative;
	}
	.rightContent > .rightContentMenuWrap > a > img{
		width:25px;
		margin:13px;
	}
	.rightContent > .rightContentMenuWrap > a > span{
		color:#fff;
		position:absolute;
		top:14px;
		font-size:15px;
	}
	.timeImg{
		width:309px;
		border-left:1px solid lightgray;
		border-right:1px solid lightgray;
		border-bottom:1px solid lightgray;
	}
	.timeImgTablet{
		display:none;
	}
}
@media only screen and (min-width:768px) and (max-width:1099px){
	header{
		width:100%;
		min-width:768px;
		height:75px;
		position: fixed; 
		top: 0;
		left:0; 
		right:0;
		bottom:0;
		margin:0 auto;
		z-index: 99;
	}
	section{
		width:100%;
		margin-bottom:100px;
	}
	.mainBanner{
		width:100%;
	}
	.mainBanner div img{
		width:100%;
	}
	.slick-dots{
		bottom:30px;
	}
	.slick-dots li{
		width:28px;
	}
	.slick-dots li button:before{
		font-size:20px;
		color:gray;
		opacity:0.75;
	}
	.slick-dotted.slick-slider{
		margin-bottom:0;
	}
	.contentWrap{
		width:768px;
		margin:0 auto;
		overflow:hidden;
	}
	.leftContent{
		float:left;
		width:276px;
		margin-left:2px;
	}
	.leftContent > a > img{
		width:100%;
	}
	.centerContent{
		float:right;
		width:483px;
		margin-right:2px;
	}
	.smallMenu{
		width:100%;
		margin:0 auto;
		border-bottom:2px solid lightgray;
		padding-top:25px;
		padding-bottom:25px;
		margin-bottom:25px;
		text-align: center;
		overflow: hidden;
	}
	.smallMenu > a{
		width:16.5%;
		float:left;
	}
	.smallMenu > a > img{
		width:100%;
	}
	.smallMenu > a > span{
		display:block;
		text-align: center;
		font-size:15px;
		margin-top:15px;
	}
	.clinicMenu{
		overflow:hidden;
	}
	.clinicMenu > a{
		float:left;
		width:33.33%;
	}
	.clinicMenu > a > img{
		width:100%;
	}
	.rightContent{
		float:left;
		width:100%;
	}
	.rightContentMenuWrap{
		float:left;
		margin-left:2px;
	}
	.rightContent > .rightContentMenuWrap > a{
		display:block;
		width:276px;
		height:77.5px;
		position: relative;
	}
	.rightContent > .rightContentMenuWrap > a > img{
		width:25px;
		margin:27px;
	}
	.rightContent > .rightContentMenuWrap > a > span{
		color:#fff;
		position:absolute;
		top:27px;
		font-size:16px;
	}
	.rightContent > .timeImg{
		display:none;
	}
	.rightContent > .timeImgTablet{
		float:right;
		width:481px;
		margin-right:2px;
		border:1px solid lightgray;
	}
}
@media only screen and (min-width:320px) and (max-width:767px){
	header{
		width:100%;
		height:75px;
	}
	section{
		width:100%;
		margin:0 auto;
	}
	.mainBanner{
		width:100%;
	}
	.mainBanner div img{
		width:100%; 
		height:160px;
		z-index:-9999;
	}
	.slick-dots{
		bottom:5px;
	}
	.slick-dots li{
		width:28px;
	}
	.slick-dots li button:before{
		font-size:15px;
		color:gray;
		opacity:0.75;
	}
	.slick-dotted.slick-slider{
		margin-bottom:0;
	}
	.contentWrap{
		width:100%;
		margin: 0 auto;
	}
	.leftContent{
	
	}
	.leftContent > a{
	
	}
	.leftContent > a > img{
	
	}
	.centerContent{
		width:100%;
	}
	.centerContent{
		width:100%;
	}
	.smallMenu{
		width:100%;
		margin:0 auto;
		text-align: center;
	}
	.smallMenu > a > img{
		width:56px;
	}
	.smallMenu > a > span{
		display:block;
	}
	.clinicMenu{
		width:100%;
		margin:0 auto;
		overflow:hidden;
	}
	.clinicMenu > a{
		width:33.33%;
		float:left;
	}
	.clinicMenu > a > img{
		width:100%;
	}
	.rightContent{
		width:100%;
		margin:0 auto;
	}
	.rightContentMenuWrap{
		width:100%;
		overflow: hidden;
	}
	.rightContentMenuWrap > a{
		width:33.33%;
		height:37px;
		float:left;
		position: relative;
	}
	.rightContentMenuWrap > a > img{
		width:17px;
		margin:8px;
	}
	.rightContentMenuWrap > a > span{
		color:#fff;
		position:absolute;
		top:8px;
		font-size:12px;
	}
	
	.timeImg{
		display:none;
	}
	.timeImgTablet{
		width:100%;
	}
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
			dots:true,
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
			<div><img src="${pageContext.request.contextPath}/resources/images/slide_4.png" alt="유한통증의학과"></div>
			<div><img src="${pageContext.request.contextPath}/resources/images/slide_3.jpg" alt="유한통증의학과"></div>
		</div>
		<div class="contentWrap">
			<div class="leftContent">
				<a href="${pageContext.request.contextPath}/info04">
					<img src="${pageContext.request.contextPath}/resources/images/mainVision.png">
				</a>
			</div><!-- leftContent end -->
			<div class="centerContent">
				<div class="smallMenu">
					<a href="${pageContext.request.contextPath}/info1">
						<img src="${pageContext.request.contextPath}/resources/images/mainSmallIcon1.png">
						<span>인사말</span>
					</a>
					<a href="${pageContext.request.contextPath}/info1">
						<img src="${pageContext.request.contextPath}/resources/images/mainSmallIcon2.png">
						<span>둘러보기</span>
					</a>
					<a href="${pageContext.request.contextPath}/info1">
						<img src="${pageContext.request.contextPath}/resources/images/mainSmallIcon3.png">
						<span>공지사항</span>
					</a>
					<a href="${pageContext.request.contextPath}/info1">
						<img src="${pageContext.request.contextPath}/resources/images/mainSmallIcon4.png">
						<span>언론보도</span>
					</a>
					<a href="${pageContext.request.contextPath}/info1">
						<img src="${pageContext.request.contextPath}/resources/images/mainSmallIcon5.png">
						<span>시술후기</span>
					</a>
					<a href="${pageContext.request.contextPath}/info1">
						<img src="${pageContext.request.contextPath}/resources/images/mainSmallIcon6.png">
						<span>오시는길</span>
					</a>
				</div><!-- smallMenu end -->
				<div class="clinicMenu">
					<a href=""><img src="${pageContext.request.contextPath}/resources/images/mainClinic3.png"></a>
					<a href=""><img src="${pageContext.request.contextPath}/resources/images/mainClinic2.png"></a>
					<a href=""><img src="${pageContext.request.contextPath}/resources/images/mainClinic1.png"></a>
				</div><!-- clinicMenu end -->
			</div><!-- centerContent end -->
			<div class="rightContent">
				<div class="rightContentMenuWrap">
					<a href="" style="background:#e44b0e;"><img src="${pageContext.request.contextPath}/resources/images/asdftest3.png"><span>진료시간안내</span></a>
					<a href="" style="background:#e3800c;"><img src="${pageContext.request.contextPath}/resources/images/asdftest.png"><span>진료비용안내</span></a><!-- mainRightMenu1.png -->
					<a href="" style="background: #f5a241;"><img src="${pageContext.request.contextPath}/resources/images/asdftest2.png"><span>자주하는 질문</span></a>
				</div>
				<img class="timeImg" src="${pageContext.request.contextPath}/resources/images/mainTime.png">
				<img class="timeImgTablet" src="${pageContext.request.contextPath}/resources/images/mainTimeTablet2.png">
			</div><!-- rightContent end -->
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>