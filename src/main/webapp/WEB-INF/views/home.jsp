<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유한통증의학과</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=2">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/header.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
	body{
		font-family: 'Noto Sans', sans-serif;
	}
	#bodyWrap{
		width:100%;
		position: relative;
	}
	#header{
		width:100%;
		margin:0 auto;
		z-index: 9999;
	}
	/* #footer{
		width:100%;
		margin:0 auto;
	} */
	#mainBackground{
		width:100%;
		height:800px;
		background: url("${pageContext.request.contextPath}/resources/images/main_img.jpg") no-repeat;
		position:absolute;
		top:35px;
		left:50%;
		transform:translateX(-50%);
		z-index: -1;
	}
	#bodyWrap #contentWrap{
		width:1100px;
		margin:0 auto; 
		position:absolute; 
		top:440px;
		left:50%;
		transform:translateX(-50%);
		z-index: 2;
	}
	#bodyWrap #contentWrap #mainContent{
		width:550px; 
		height:530px; 
		text-align:center;
		background: url("${pageContext.request.contextPath}/resources/images/announcement.png") no-repeat;
		color:white;
		float:left;
	}
	#bodyWrap #contentWrap #mainContent>p{
		font-size:2.0em;
		margin-top:50px;
		margin-bottom:15px;
	}
	#bodyWrap #contentWrap #mainContent>h2{
		font-size:3em;
		/* font-weight: 600; */
		margin-bottom:70px;
	} 
	#bodyWrap #contentWrap #mainContent #anouncement{
		width:400px;
		margin:0 auto;
		text-align: left;
	}
	#bodyWrap #contentWrap #mainContent #anouncement>li{
		font-size: 1.40em;
		list-style: decimal;
		margin-bottom:18px; 
	}
	#bodyWrap #contentWrap #clinicContent{
		width:550px;
		float:right;
	}
	#bodyWrap #contentWrap #clinicContent .clinic{
		width:256px;
		height:256px;
		float:right;
		margin-left:15px;
		margin-bottom:15px;
		background: url("${pageContext.request.contextPath}/resources/images/box_1.png") no-repeat;
	}
	#bodyWrap #contentWrap #clinicContent .clinic:nth-child(4){
		background: url("${pageContext.request.contextPath}/resources/images/time_box.png") no-repeat;
	}
	#bodyWrap #contentWrap #clinicContent .clinic .clinic_icon{
		margin:25px;
	}
	.clinic .m{
		/* font-size: 2em; */
		padding-left:31px;
	}
	.clinic .cName{
		padding-left:27px;
		font-size: 2em;
	}
	.clinic .cSubName{
		padding-left:27px;
		font-size:1.1em;
		color:#808080;
		margin-top:10px;
	}
	.clinic .cBtn{
		width:80%;
		margin:0 auto;
		text-align: right;
		margin-top:20px;
	}
	#time{
		color:white;
		margin-left:30px;
		margin-top:20px;
		
	}
	.t1>b{
		font-size: 1.5em !important;
	}
	#mainBoard{
		width:100%;
		clear:both;
	}
	#mainBoard .board{
		width:48%;
		height:150px;
		border:1px solid black;
		float:left;
	}
</style>
<script>
	var num=0; 
	$(function(){
		$(".cBtnImg").mouseover(function(){
			$(this).attr("src","/uhan/resources/images/btn_on.png");
			/* alert($(this).index()); */
		});
		$(".cBtnImg").mouseout(function(){
			$(this).attr("src","/uhan/resources/images/btn_off.png");
		});
	});
</script>
</head>
<body>
	<div id="bodyWrap">
		<div id="header">
			<jsp:include page="include/header.jsp"></jsp:include>
		</div>
		<div id="mainBackground">
		</div>
		<div id="contentWrap">
			<div id="mainContent">
				<%-- <img src="${pageContext.request.contextPath}/resources/images/announcement.png"> --%>
				<p>ㅡ</p>
				<h2>우리의 선언</h2>
				<ol id="anouncement">
					<li>우리는 환자분을 따뜻하게 환대한다</li>
					<li>우리는 환자분의 말을 경청하고 공감한다.</li>
					<li>우리는 환자분의 통증을 정확히 진단한다.</li>
					<li>우리는 환자분의 통증 환화를 위해서 최선을 다한다.</li>
					<li>우리는 환자분과 통증 완화에 도움되는 운동 밑 심리적 지지를 한다.</li>
				</ol>
			</div><!-- mainContent 종료 -->
			<div id="clinicContent">
				<div class="clinic">
					<p class="clinic_icon"><img src="${pageContext.request.contextPath}/resources/images/icon_2.png"></p>
					<p class="m">――</p>
					<p class="cName">대상포진클리닉</p>
					<P class="cSubName">유한통증의학만의 대상포진클리닉</P>
					<p class="cBtn"><a href=""><img class="cBtnImg" src="${pageContext.request.contextPath}/resources/images/btn_off.png"></a></p>
				</div>
				<div class="clinic">
					<p class="clinic_icon"><img src="${pageContext.request.contextPath}/resources/images/icon_1.png"></p>
					<p class="m">――</p>
					<p class="cName">비수술클리닉</p>
					<P class="cSubName">유한통증의학만의 비수술클리닉</P>
					<p class="cBtn"><a href=""><img class="cBtnImg" src="${pageContext.request.contextPath}/resources/images/btn_off.png"></a></p>
				</div>
				<div class="clinic">
					<p class="clinic_icon"><img src="${pageContext.request.contextPath}/resources/images/icon_3.png"></p>
					<p class="m">――</p>
					<p class="cName">관절클리닉</p>
					<P class="cSubName">유한통증의학만의 관절클리닉</P>
					<p class="cBtn"><a href=""><img class="cBtnImg" src="${pageContext.request.contextPath}/resources/images/btn_off.png"></a></p>
				</div>
				<div class="clinic">
					<div id="time">
						<p class="mm">――</p>
						<p class="t1"><b>진료시간 : 09:00~18:30</b></p><br>
						<p>- 토요일 : <b>09:00~13:00</b></p>
						<p>(점심시간 없음)</p><br>
						<p class="t1"><b>*일요일 및 공휴일 휴무</b></p>
						<p>단, 대체공휴일은 정상진료</p><br>
						<p class="t1"><b>점심시간: 12:30~14:00</b></p>
					</div>
				</div>
			</div>
			<div id="mainBoard">
				<div class="board">
				
				</div>
				<div class="board">
				
				</div>
			</div>
			
		</div><!-- contentWrap 종료 -->
	</div><!-- bodyWrap 종료 -->
	
</body>
</html>
