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
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@master/nanumsquare.css">
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
 .popup{
 	display:none;
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
		position: relative;
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
		width:1100px;
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
	#mVision{
		display:none;
	}
	.smallMenu{
		border-bottom:2px solid lightgray;
		padding-top:30px;
		padding-bottom:30px;
		margin-bottom:50px;
	}
	.smallMenu > a{
		margin-right:10px;
	}
	.smallMenu > a:last-child{
		margin:0;
	}
	.smallMenu > a > span{
		display:block;
		text-align: center;
		font-size:15px;
		margin-top:15px;
	}
	.clinicMenu{
		width:600px;
		overflow:hidden;
	}
	.clinicMenu > a{
		float:left;
	}
	.clinicMenu > a:nth-child(2){
		margin:0 26px;
	}
	.clinicMenu > a > img{
		width:100%;
	}
	.rightContent{
		float:right !important;
	}
	.rightContent > .rightContentMenuWrap{
		width:100%;
		margin-bottom:5px;
	} 
	.rightContentMenuWrap > p{
		background: #00b4ae;
		color:#fff;
		text-align: center;
		font-size:20px;
		padding:10px 0;
	}
	.rightContentMenuWrap > form > table{
		border:1px solid lightgray;
		width:100%;
	}
	.rightContentMenuWrap > form > table tr{
		display:block;
		border-bottom:1px solid lightgray;
		padding:2px 0;
	}
	.rightContentMenuWrap > form > table tr:last-child{
		border:0;
	}
	.rightContentMenuWrap > form > table tr:last-child td{
		display:block;
		width:70px;
		margin:0 auto;
	}
	.rightContentMenuWrap > form > table tr:last-child td > input{
		width:100%;
		color:white;
		font-size:14px;
		background: #00b4ae;
		border:0;
		border-radius: 5px;
		cursor:pointer;
	}
	.rightContentMenuWrap > form > table tr .tTitle{
		font-size:15px;
		width:70px;
		padding-left:15px;
	}
	.rightContentMenuWrap > form > table tr .tContent{
		width:335px; 
	}
	.rightContentMenuWrap > form > table tr .tContent input{
		border: 1px solid lightgray;
	}
	.rightContentMenuWrap > form > table tr .tContent input[name="title"]{
		width:335px;
	}
	.rightContentMenuWrap > form > table tr .tContent textarea{
		width:100%;
		height:90px;
		border:1px solid lightgray;
	}
	.timeImgTablet{
		width:450px;
		border:1px solid lightgray;
	}
	/* .popup{
		display:none;
	} */
	.popup{
		width:600px;
		position:absolute;
		top:150px;
		left:100px;
		background: #f1f1f1;
	}
	.popup:last-child{
		left:420px;
	}
	.popup > img{
		width:100%;
	}
	.popup > p{
		width:95%;
		text-align: right;
		background: #f1f1f1;
		padding-right:15px;
		padding-bottom:5px;
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
	/* .leftContent{
		float:left;
		width:276px;
		margin-left:2px;
	} */
	#mVision{
		display:none;
	}
	.leftContent > a > img{
		width:100%;
	}
	.centerContent{
		/* float:right; */
		width:550px;
		/* margin-right:2px; */
		margin:0 auto;
		margin-bottom:30px;
		
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
		width:32.1%;
	}
	.clinicMenu > a:nth-child(2){
		margin:0 10px;
	}
	.clinicMenu > a > img{
		width:100%;
	}
	.rightContent{
		float:left;
		width:100%;
	}
	.rightContentMenuWrap{
		/* float:left;
		margin-left:2px; */
		width:550px;
		margin:0 auto;
	}
	.rightContentMenuWrap > p{
		background: #00b4ae;
		color:#fff;
		text-align: center;
		font-size:20px;
		padding:10px 0;
	}
	.rightContentMenuWrap > form > table{
		border:1px solid lightgray;
		width:100%;
	}
	.rightContentMenuWrap > form > table tr{
		display:block;
		border-bottom:1px solid lightgray;
		padding:2px 0;
	}
	.rightContentMenuWrap > form > table tr:last-child{
		border:0;
	}
	.rightContentMenuWrap > form > table tr:last-child td{
		display:block;
		width:70px;
		margin:0 auto;
	}
	.rightContentMenuWrap > form > table tr:last-child td > input{
		-webkit-appearance: none;
		-webkit-border-radius: 0;
		width:100%;
		color:white;
		font-size:14px;
		background: #00b4ae;
		border:0;
		border-radius: 5px;
		cursor:pointer;
		
	}
	.rightContentMenuWrap > form > table tr .tTitle{
		font-size:15px;
		width:70px;
		padding-left:15px;
	}
	.rightContentMenuWrap > form > table tr .tContent{
		width:430px; 
	}
	.rightContentMenuWrap > form > table tr .tContent input{
		border: 1px solid lightgray;
	}
	.rightContentMenuWrap > form > table tr .tContent input[name="title"]{
		width:430px;
	}
	.rightContentMenuWrap > form > table tr .tContent textarea{
		width:100%;
		height:100px;
		border:1px solid lightgray;
	}
	.rightContent > .timeImg{
		display:none;
	}
	.rightContent > .timeImgTablet{
		/* float:right; */
		display:block;
		width:550px;
		/* margin-right:2px; */
		margin:0 auto;
		margin-top:30px;
		border:1px solid lightgray;
	}
	/* .popup{
		display:none;
	} */
	.popup{
		width:440px;
		position:absolute;
		top:150px;
		left:100px;
		background: #f1f1f1;
	}
	.popup:last-child{
		left:40px;
	}
	.popup > img{
		width:100%;
	}
	.popup > p{
		width:95%;
		text-align: right;
		background: #f1f1f1;
		padding-right:15px;
		padding-bottom:5px;
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
	.centerContent{
		width:100%;
	}
	.centerContent{
		width:100%;
	}
	.smallMenu{
		width:100%;
		margin:20px auto;
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
		width:99%;
		margin:0 auto;
	}
	.rightContentMenuWrap > p{
		background: #00b4ae;
		color:#fff;
		text-align: center;
		font-size:20px;
		padding:10px 0;
	}
	.rightContentMenuWrap > form > table{
		border:1px solid lightgray;
		width:100%;
	}
	.rightContentMenuWrap > form > table tr{
		display:block;
		border-bottom:1px solid lightgray;
		padding:4px 0;
	}
	.rightContentMenuWrap > form > table tr:last-child{
		border:0;
	}
	.rightContentMenuWrap > form > table tr:last-child td{
		display:block;
		width:70px;
		margin:0 auto;
	}
	.rightContentMenuWrap > form > table tr:last-child td > input{
		-webkit-appearance: none;
		-webkit-border-radius: 0;
		width:100%;
		color:white;
		font-size:14px;
		background: #00b4ae;
		border:0;
		border-radius: 5px;
		cursor:pointer;
		
	}
	.rightContentMenuWrap > form > table tr .tTitle{
		font-size:15px;
		width:80px;
		padding-left:10px;
	}
	.rightContentMenuWrap > form > table tr .tContent{
		width:240px; 
	}
	.rightContentMenuWrap > form > table tr .tContent input{
		border: 1px solid lightgray;
		width:150px;
	}
	.rightContentMenuWrap > form > table tr .tContent input[name="title"]{
		width:230px;
	}
	.rightContentMenuWrap > form > table tr .tContent textarea{
		width:100%;
		height:100px;
		border:1px solid lightgray;
	}
	
	.timeImg{
		display:none;
	}
	.timeImgTablet{
		display:block;
		width:99%;
		margin:0 auto;
		margin-top:10px;
		border:1px solid lightgray;
	}
	/* .popup{
		display:none;
	} */
	.popup{
		width:300px;
		position:absolute;
		top:77px;
		left:10px;
		background: #f1f1f1;
	}
	.popup > img{
		width:100%;
	}
	.popup > p{
		width:95%;
		text-align: right;
		background: #f1f1f1;
		padding-right:15px;
		padding-bottom:5px;
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
		
		$(".popup > p > a").click(function(){
			$(this).parent().parent(".popup").css("display","none");
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
			<div class="centerContent">
				<div class="smallMenu">
					<a href="${pageContext.request.contextPath}/info01">
						<img src="${pageContext.request.contextPath}/resources/images/mainSmallIcon1.png">
						<span>인사말</span>
					</a>
					<a href="${pageContext.request.contextPath}/info03">
						<img src="${pageContext.request.contextPath}/resources/images/mainSmallIcon2.png">
						<span>둘러보기</span>
					</a>
					<a href="${pageContext.request.contextPath}/notice">
						<img src="${pageContext.request.contextPath}/resources/images/mainSmallIcon3.png">
						<span>공지사항</span>
					</a>
					<a href="${pageContext.request.contextPath}/broadcasting">
						<img src="${pageContext.request.contextPath}/resources/images/mainSmallIcon4.png">
						<span>언론보도</span>
					</a>
					<a href="${pageContext.request.contextPath}/comment">
						<img src="${pageContext.request.contextPath}/resources/images/mainSmallIcon5.png">
						<span>시술후기</span>
					</a>
					<a href="${pageContext.request.contextPath}/location">
						<img src="${pageContext.request.contextPath}/resources/images/mainSmallIcon6.png">
						<span>오시는길</span>
					</a>
				</div><!-- smallMenu end -->
				<div class="clinicMenu">
					<a href="${pageContext.request.contextPath}/clinic01_00"><img src="${pageContext.request.contextPath}/resources/images/mainClinic3.png"></a>
					<a href="${pageContext.request.contextPath}/clinic02"><img src="${pageContext.request.contextPath}/resources/images/mainClinic2.png"></a>
					<a href="${pageContext.request.contextPath}/clinic03_01"><img src="${pageContext.request.contextPath}/resources/images/mainClinic1.png"></a>
				</div><!-- clinicMenu end -->
			</div><!-- centerContent end -->
			<div class="rightContent">
				<div class="rightContentMenuWrap">
					<p>진료/비용 간편문의</p>
					<form method="post" action="adviceRegister2">
						<input type="hidden" value="x" name="pwtype">
						<table>
							<tr>
								<td class="tTitle">제목</td>
								<td class="tContent"><input type="text" name="title"></td>
							</tr>
							<tr>
								<td class="tTitle">작성자</td>
								<td class="tContent"><input type="text" name="writer"></td>
							</tr>
							<tr>
								<td class="tTitle">비밀번호</td>
								<td class="tContent"><input type="password" name="pw"></td>
							</tr>
							<tr>
								<td class="tTitle">내용</td>
								<td class="tContent"><textarea name="content"></textarea></td>
							</tr>
							<tr>
								<td colspan="2"><input type="submit" value="등록"></td>
							</tr>
						</table>
					</form>
				</div>
				<%-- <img class="timeImg" src="${pageContext.request.contextPath}/resources/images/mainTime.png"> --%>
				<img class="timeImgTablet" src="${pageContext.request.contextPath}/resources/images/mainTimeTablet2.png">
			</div><!-- rightContent end -->
		</div><!-- contentWrap end -->
		<div class="popup">
			<img src="${pageContext.request.contextPath}/resources/popupImg/popup20181029.png">
			<p><a href="#none">[ 닫 기 ]</a></p>
		</div>
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>