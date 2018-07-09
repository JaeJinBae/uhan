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
		min-width:1250px;
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
		font-family: 'NanumSquare';
		font-weight: bold;
	}
	.mainClinic p{
		font-size: 19px;
		letter-spacing: -1.5px;
		line-height: 35px;
		color:#666666;
	}
	.mainClinic>a{
		margin-top:50px;
	}
	.barogo{
		display: none;
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
		background:url("../images/noticeBg.png");
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
		font-family: 'NanumSquare';
	}
	.notice .noticeTextDiv p{
		font-size:15px;
		color:#666666;
		font-family: 'NanumSquare';
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
		border-top:2px solid #c2c2c3;
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
		font-family: 'NanumSquare';
	}
	.notice table tr td a{
		font-family: 'NanumSquare';
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
		font-family: 'NanumSquare';
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
		font-family: 'NanumSquare';
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
		font-size:15px;
		font-family: 'NanumSquare';
	}
	#box2 ul li:first-child{
		margin-top:15px;
	}
	#box2 ul li img{
		width:21px;
		float:left;
		margin-right:15px;
	}
	#box2 ul li:first-child img{
		margin-top:5px;
	}
	.bottomBannerWrap{
		width:100%;
		height:453px;
		background: url("../images/bottomBannerBg.png");
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
		font-family: 'NanumSquare';
	}
	.bottomContent>h2{
		margin-bottom:14px;
	}
	.bottomContent>h2>a{
		color:#666666;
		font-size:22px; 
	}
	.bottomContent>h2>a:hover{
		font-weight: 600;
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
	
}
@media only screen and (min-width:768px) and (max-width:1099px){
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
		/* width:1200px; */
		width:100%;
		margin:0 auto;
		/* position: relative;
		top:-50px; */
		margin-bottom:50px;
	}
	.contentWrap .content1Wrap{ 
		width:768px; 
		margin:0 auto;
		text-align:center;
		margin-bottom:50px;
		overflow: hidden;
	}
	.mainClinic{
		width:242px;
		height:260px;
		float:left;
		/* margin-right:9px; */
		background: #ffffff;
		position: relative;
	} 
	.mainClinic:last-child{
		margin:0; 
	}
	.mainClinic .clinicIcon{
		margin-top:12px;
	}
	.mainClinic:last-child .clinicIcon{
		margin-top:8px;
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
		font-size:25px;
		margin-bottom:20px;
		font-family: 'NanumSquare';
		font-weight: bold;
	}
	.mainClinic p{
		font-size: 16px;
		letter-spacing: -1.5px;
		line-height: 35px;
		color:#666666;
	}
	.mainClinic>a{
		margin-top:50px;
	}
	.barogo{
		display: none;
	}
	.boldText{
		font-weight: bold;
		font-size:16px;
		color:#666666;
	}
	.contentWrap .content2Wrap{
		/* width:100%; */
		width:768px;
		margin:0 auto;
		margin-bottom:50px;
		overflow: hidden;
	}
	.contentWrap .content2Wrap .notice{
		width:586px;
		margin:0 auto;
		height:276px; 
		background:url("../images/noticeBg.png");
		border:1px solid #e3e3e3;
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
		font-family: 'NanumSquare';
	}
	.notice .noticeTextDiv p{
		font-size:15px;
		color:#666666;
		font-family: 'NanumSquare';
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
		border-top:2px solid #c2c2c3;
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
		font-family: 'NanumSquare';
	}
	.notice table tr td a{
		font-family: 'NanumSquare';
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
		/* margin-left:62px; */
		margin-top:50px;
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
		font-family: 'NanumSquare';
		font-weight: 500;
	}
	#box1{
		margin-left:96px;
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
		font-family: 'NanumSquare';
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
		padding-bottom:15px;
		margin-top:15px;
		font-size:15px;
		font-family: 'NanumSquare';
	}
	#box2 ul li a{
		color:white !important;
	} 
	#box2 ul li:first-child{
		margin-top:15px;
	}
	#box2 ul li img{
		width:21px;
		float:left;
		margin-right:15px;
	}
	#box2 ul li:first-child img{
		margin-top:5px;
	}
	.bottomBannerWrap{
		width:100%;
		/* height:453px; */
		background: url("../images/bottomBannerBg.png");
	}
	.contentDiv{
		/* width:100%; */
		width:700px;
		height:265px;
		margin:0 auto;
		padding-top:25px;
		overflow:hidden;
	}
	.bottomBanner{
		width:378px;
		float:right;
		/* position: relative;
		top:-100px;
		float:left; */
	}
	.bottomBanner div img{
		width:100%;
	}
	.bottomContent{
		/* float:right; */
		float:left;
	}
	.bottomContent>h1{
		color:#00b4ae;
		font-size: 30px;
		margin-bottom:12px;
		font-family: 'NanumSquare';
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
}
@media only screen and (min-width:320px) and (max-width:767px){
	body{
		font-family: 'Noto Sans', sans-serif;
		font-size: 20px;
	} 
	.mainBanner>div>img{
		width:100%; 
		height:250px;
		z-index:-9999;
	}
	.contentWrap .clinicIcon img{
		display: none;
	}
	.contentWrap hr{
		margin:0px auto;
		margin-top:25px;
		margin-bottom:10px;
		width:20px;
	}
	.contentWrap .mainClinic{
		text-align:center;
		height:150px;
		margin-bottom:10px;
		padding-bottom: 10px;
	}
	.contentWrap .mainClinic h1{
		font-size: 1.5em;
		margin-bottom:10px;
		font-weight: bold;
	}
	.mainClinic .barogo{
		display: none;
	}
	.mainClinic p{
		font-size: 1.2em;
		letter-spacing: 0.5px;
		line-height: 20px;
		color:#666666;
	}
	.boldText{
		font-weight: bold;
		font-size:1em;
		color:#666666;
	}
	.contentWrap .content2Wrap .notice{
		width:90%;
		margin:0 auto;
		margin-top:25px;
		margin-bottom:18px;
		border: 1px solid #e3e3e3;
		padding:20px 15px;
	}
	.contentWrap .content2Wrap .notice .noticeLogo{
		width:45px !important;
		height:45px;
		float: left;
	}
	.contentWrap .content2Wrap .notice .noticeLogo{
		width:45px !important;
		height:45px;
		float: left;
		margin-right: 7px;
	}
	.notice .noticeTextDiv{
		float:left;
	}
	.notice .noticeTextDiv h1{
		font-weight:bold;
		font-size: 1.5em;
		margin-bottom:3px;
		font-family: 'NanumSquare', sans-serif;
	}
	.notice .noticeTextDiv p{
		color:#666666;
		font-weight:500;
		font-family: 'NanumSquare';
		font-size: 1em;
	}
	.notice .noticeMoreBtn{
		float:right;
		margin-top: 5px;
	}
	.notice .noticeMoreBtn img{
		width:40px !important;
		height:40px;
	}
	.notice hr{
		clear: both;
		width:100%;
		margin-top: 60px;
		border:0;
		height:1px;
		background: #c2c2c3;
	}
	.notice table{
		width:93%;
		margin: 0 auto;
		margin-top: 7px;
	}
	.notice table tr{
		display: table-row;
		vertical-align: inherit;
		border-color: inherit;
	}
	.notice table tr td:FIRST-CHILD{
		padding-left: 7px;
	}
	.notice table tr td:LAST-CHILD{
		text-align: right;
	}
	.notice table tr td img{
		margin-right: 5px;
	}
	.notice table tr td{
		padding-top:5px;
		color:#666666;
		font-size: 1em;
		font-family: 'NanumSquare';
	}
	.notice table tr td a{
		color:#666666;
		font-size: 1em;
		font-family: 'NanumSquare'; 
		display: inline-block;
	}
	.box{
		width:48%;
		margin:10px 3px;
		float: left;
		color: white;
		text-align: center;
		padding-bottom: 20px;
		height:200px;
	}
	.box hr{
		border:0px;
		border:1px solid white;
		width: 8%;
	}
	.box h1{
		font-weight: 300;
		font-size: 1.2em;
	}
	.box p{
		color:#ec9631;
		font-size: 1.5em;
		padding: 5px 0px;
	}
	#box1 ul{
		width:82%;
		margin:0 auto;
		text-align:center;
	}
	#box1 ul li:before{
		content:"- ";
	}
	.bottomBannerWrap{
		clear: both;
	}
	#box1 ul li{
		font-size: 0.9em;
		width:100%;
	}
	#box1 ul li{
		color:#c1c2cc;
		margin-top:12px;
		padding-bottom:3px;
		margin:0 auto;
		font-weight:normal;
		text-align:left;
	}
	#box1 ul li .number{
		font-weight:normal;
		font-size:1em;
	}
	#box1 ul li .smallText{
		font-size: 1em;
		font-weight:normal;
	}
	#box1{
		margin-left: 5px;
	}
	#box2 ul{
		margin:0 auto;
		text-align:center;
		margin-top: 8px;
		width:90%;
	}
	#box2 ul li{
		font-size: 0.8em;
		font-weight:normal;
		color:white !important;
	}
	#box2 ul li{
		width:100%;
		border-bottom: 1px solid rgba(255,255,255,0.4);
		text-align: left;
	}
	#box2 ul li a{
		color:white !important;
	} 
	#box2 ul li img{
		width:15px;
		height:20px;
		float: left;
		margin-right: 5px;
		margin-left:5px;
	}
	#box2 ul li:NTH-CHILD(1){
		height:50px;
	}
	#box2 ul li:NTH-CHILD(1) img{
		margin-top: 5px;
	}
	#box2 ul li:NTH-CHILD(2) img,#box2 ul li:NTH-CHILD(3) img{
		margin-top: 13px;
	}
	#box2 ul li:NTH-CHILD(2), #box2 ul li:NTH-CHILD(3){
		height:40px;
		line-height: 40px;
	}
	.bottomBanner{
		width:100%;
	}
	.slick-slide img{
		max-width:100%;
		display: block;
	}
	.mobileContent{
		margin-top:290px;
		padding:20px;
		background: url("${pageContext.request.contextPath}/resources/images/bottomBannerBg.png");
	}
	.mobileContent h1{
		color:#00b4ae;
		font-size: 1.5em;
		margin-bottom: 5px;
		font-family: 'NanumSquare';
	}
	.mobileContent h2 a{
		color:#666666;
		font-size: 1.4em;
	}
	.mobileContent hr{
		border:0;
		height:1px;
		background: #dcdcdc;
		margin: 8px 0px;
	}
		.mobileContent p{
		color:#919191;
		padding-bottom:2px;
		letter-spacing: -1px;
	}
}
</style>
<script type="text/javascript">

	$(function(){
		
		detectmob();
		if(detectmob()==true){
			$("#box2 ul li").eq(0).css("height","50px");
			$("#box2 ul li").eq(0).find("img").css("margin-top","5px");
			$("#box2 ul li").eq(1).css({"height":"40px","line-height":"40px"});
			$("#box2 ul li").eq(1).find("img").css("margin-top","13px");
			$("#box2 ul li").eq(2).css({"height":"40px","line-height":"40px"});
			$("#box2 ul li").eq(2).find("img").css("margin-top","13px");
			
			$(".bottomContent").css("display","none");
			$(".contentDiv").prepend("<div class='mobileContent'><h1>Welcome to Our Clinic</h1><h2><a href='info03'>병원시설 둘러보기</a></h2><hr><p>언제나 평안하고 깨끗한 시설로 환자분을</p><p>맞이하는 유한통증의학과입니다.</p></div>");
			
			$(".mainClinic").click(function(){
				var a = $(this).find("a").attr("href");
				location.href=a;
			});
		}else{
			$(".bottomContent").css("display","block");
			$(".mobileContent").css("display","none");
		}
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
		if(detectmob()==false){
			//mainClinic Hover
			$(".mainClinic:first-child").mouseover(function(){
				$(this).find("p:not(.clinicIcon)").css("display","none");
				$(this).css("background","#ec9631");
				$(this).find(".clinicIcon>img").attr("src","${pageContext.request.contextPath}/resources/images/icon_1_hover.png");
				$(this).find("hr").css("border-top","2px solid white");
				$(this).find("h1").css("color","white");
				$(this).find(".barogo").css("display","inline");
			});
			$(".mainClinic:first-child").mouseout(function(){
				$(this).find("p:not(.clinicIcon)").css("display","block");
				$(this).css("background","white");
				$(this).find(".clinicIcon>img").attr("src","${pageContext.request.contextPath}/resources/images/icon_01.png");
				$(this).find(".clinicIcon>img").attr("style='width:45px;'");
				$(this).find("hr").css("border-top","2px solid #000000");
				$(this).find("h1").css("color","black");
				$(this).find(".barogo").css("display","none");
			});
			
			$(".mainClinic:nth-child(2)").mouseover(function(){
				$(this).find("p:not(.clinicIcon)").css("display","none");
				$(this).css("background","#6b5b95");
				$(this).find(".clinicIcon>img").attr("src","${pageContext.request.contextPath}/resources/images/icon_2_hover.png");
				
				$(this).find("hr").css("border-top","2px solid white");
				$(this).find("h1").css("color","white");
				$(this).find(".barogo").css("display","inline");
			});
			$(".mainClinic:nth-child(2)").mouseout(function(){
				$(this).find("p:not(.clinicIcon)").css("display","block");
				$(this).css("background","white");
				$(this).find(".clinicIcon>img").attr("src","${pageContext.request.contextPath}/resources/images/icon_02.png");
				$(this).find(".clinicIcon>img").attr("style='width:35px;'");
				$(this).find("hr").css("border-top","2px solid #000000");
				$(this).find("h1").css("color","black");
				$(this).find(".barogo").css("display","none");
			});
			
			$(".mainClinic:last-child").mouseover(function(){
				$(this).find("p:not(.clinicIcon)").css("display","none");
				$(this).css("background","#00b4ae");
				$(this).find(".clinicIcon>img").attr("src","${pageContext.request.contextPath}/resources/images/icon_3_hover.png");
				$(this).find("hr").css("border-top","2px solid white");
				$(this).find("h1").css("color","white");
				$(this).find(".barogo").css("display","inline");
			});
			$(".mainClinic:last-child").mouseout(function(){
				$(this).find("p:not(.clinicIcon)").css("display","block");
				$(this).css("background","white");
				$(this).find(".clinicIcon>img").attr("src","${pageContext.request.contextPath}/resources/images/icon_03.png");
				$(this).find(".clinicIcon>img").attr("style='width:31px;'");
				$(this).find("hr").css("border-top","2px solid #000000");
				$(this).find("h1").css("color","black");
				$(this).find(".barogo").css("display","none");
			});
			
		}
		
		
	});
	
	function detectmob() { 
		 if(window.innerWidth <= 767) {
		     alert("767px 보다 작아요");
			 return true;
		   } else {
			 alert("767px 보다 커요");
		     return false; 
		   }
	}
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
					<p>분석하여 정확하게 통증을 치료하는</p>
					<p>유한통증의학과만의 <span class="boldText">비수술 클리닉</span></p>
					<a href="clinic01_00"><img class="barogo" src='${pageContext.request.contextPath}/resources/images/barogo.png'></a>
				</div>
				<div class="mainClinic" style="border:7px solid #6b5b95;">
					<p class="clinicIcon"><img src="${pageContext.request.contextPath}/resources/images/icon_02.png" style="width:35px;"></p>
					<hr>
					<h1>대상포진 클리닉</h1>
					<p><span class="boldText">오랜기간 풍부한 임상경험</span>으로</p>
					<p>빠른 통증치료와 만족감을 주는</p>
					<p>유한통증의학과만의 <span class="boldText">대상포진 클리닉</span></p>
					<a href="clinic02"><img class="barogo" src='${pageContext.request.contextPath}/resources/images/barogo.png'></a>
				</div>
				<div class="mainClinic" style="border:7px solid #00b4ae;">
					<p class="clinicIcon"><img src="${pageContext.request.contextPath}/resources/images/icon_03.png" style="width:31px;"></p>
					<hr>
					<h1>관절통증 클리닉</h1>
					<p>수술 부담감을 줄여주는</p>
					<p><span class="boldText">스포츠재활치료</span>, <span class="boldText">주사치료</span>를 통한</p>
					<p>유한통증의학과의 <span class="boldText">관절통증 클리닉</span></p>
					<a href="clinic03_01"><img class="barogo" src='${pageContext.request.contextPath}/resources/images/barogo.png'></a>
				</div>
			</div><!-- content1Wrap end -->
			<div class="content2Wrap">
				<div class="notice">
					<img class="noticeLogo" src="${pageContext.request.contextPath}/resources/images/notice_btn.png" style="width:64px;">
					<div class="noticeTextDiv">
						<h1>공지사항</h1>
						<p>유한통증의학과의 새로운 소식입니다.</p>
					</div>
					<a class="noticeMoreBtn" href="${pageContext.request.contextPath}/notice"><img src="${pageContext.request.contextPath}/resources/images/more_btn.png" style="width:46px;"></a>
					<hr>
					<table>
						<c:choose>
					    <c:when test="${fn:length(list) == 0}">
				        	<tr>
				        		<td colspan="5" style=" text-align: center;">등록된 게시물이 없습니다.</td>
				        	</tr>
					    </c:when>
					    <c:otherwise>
					        <c:forEach var="item" items="${list}" end="2">
							<tr>
								<td><img src="${pageContext.request.contextPath}/resources/images/list.png"><a href="${pageContext.request.contextPath}/noticeRead?bno=${item.bno}">${item.title}</a></td>
								<td><fmt:formatDate type="date" value="${item.regdate}"/></td>
							</tr>
						</c:forEach>
					    </c:otherwise> 
					</c:choose>
						
					</table>
				</div>
				<div class="box" id="box1" style="background: #3c416c;">
					<hr>
					<h1>진료시간안내</h1>
					<p>09:00 ~ 18:30</p>
					<ul>
						<li>&nbsp;점심시간<span class="number"> : 12:30 ~ 14:00</span></li> 
						<li>&nbsp;토요일<span class="number"> : 09:00 ~ 15:00</span><br>
							&nbsp;&nbsp;&nbsp;<span class="smallText">(점심시간 없음)</span>
						</li> 
						<li>&nbsp;일요일 및 공휴일 휴무<br>
							&nbsp;&nbsp;&nbsp;<span class="smallText">(대체공휴일은 정상진료)</span>
						</li>
					</ul>
				</div>
				<div class="box" id="box2" style="background:#ec9631;">
					<hr>
					<h1>CONTACT US</h1>
					<ul>
						<li><img src="${pageContext.request.contextPath}/resources/images/location_icon.png">대구광역시 수성구 달구벌대로<br>2372, 4층(범어동)</li>
						<li style="color:white;"><img src="${pageContext.request.contextPath}/resources/images/tel_icon.png">진료예약 :&nbsp;053.753.6001</li>
						<li><img src="${pageContext.request.contextPath}/resources/images/fax_icon.png">FAX : 053.753.6007</li>
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
					<h2><a href="${pageContext.request.contextPath}/info03">병원시설 둘러보기</a></h2>
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