<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유한통증의학과</title>
<meta name="description" content="대구광역시 수성구 범어동, 비수술클리닉, 대상포진클리닉, 관절클리닉">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=2">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
	body{
		font-family: 'Noto Sans', sans-serif;
	}
	#bodyWrap{
		width:100%;
		height:2300px;
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
		height:800px;
		clear:both;
		background: url("${pageContext.request.contextPath}/resources/images/1111.png") no-repeat;/* main_img.jpg */
		background-size:contain;
		position:absolute;
		top:54px;
		left:50%;
		transform:translateX(-50%);
		z-index: -1;
	}
	#bodyWrap #contentWrap{
		width:1200px;
		margin:0 auto; 
		position:absolute; 
		top:540px;
		left:50%;
		transform:translateX(-50%);
		z-index: 2;
	}
	#bodyWrap #contentWrap #mainContent{
		width:615px; 
		height:571px; 
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
		font-size:2.3em;
		margin-bottom:70px;
	} 
	#bodyWrap #contentWrap #mainContent #anouncement{
		width:440px;
		margin:0 auto;
		text-align: left;
	}
	#bodyWrap #contentWrap #mainContent #anouncement>li{
		font-size: 1.40em;
		list-style: decimal;
		margin-bottom:18px; 
	}
	#bodyWrap #contentWrap #clinicContent{
		width:580px;
		float:right;
	}
	#bodyWrap #contentWrap #clinicContent .clinic{
		width:282px;
		height:282px;
		float:right;
		margin-left:8px;
		margin-bottom:8px;
		background: url("${pageContext.request.contextPath}/resources/images/box_1.png") no-repeat;
	}
	#bodyWrap #contentWrap #clinicContent .clinic:nth-child(4){
		background: url("${pageContext.request.contextPath}/resources/images/time_box.png") no-repeat;
	}
	#bodyWrap #contentWrap #clinicContent .clinic .clinic_icon{
		margin:25px;
		margin-top:35px;
	}
	.clinic .m{
		/* font-size: 2em; */
		padding-left:31px;
	}
	.clinic .cName{
		padding-left:27px;
		font-size: 1.8em;
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
		margin-left:25px;
		margin-top:22px;
	}
	.t1>b{
		font-size: 1.4em !important;
	}
	#mainBoard{
		width:100%;
		height:312px;
		clear:both;
		padding-top:30px;
		margin-bottom:30px;
	}
	#mainBoard .board{
		width:593px;
		height:312px;
		background: url("${pageContext.request.contextPath}/resources/images/notice_box.png") no-repeat;
		float:left;
	}
	#mainBoard .board:nth-child(2){
		margin-left:14px;
	}
	#mainBoard .board .bTitle{
		width:85%;
		margin:0 auto;
		margin-top:50px;
		border-bottom:1px solid #e3e3e3;
		padding-bottom:15px;
		
	}
	#mainBoard .board .bTitle>p{
		display: inline;
		font-size:1.7em;
		margin-left:10px;
	}
	#mainBoard .board .bTitle>a{
		width:36px;
		height:36px;
		float:right;
		margin-right:15px;
		padding-bottom:5px;
	}
	#mainBoard .board .bContent{
		width:80%;
		clear:both;
		margin:0 auto;
		margin-top:15px;
	}
	#lastContent{
		width:100%;
		min-width:1200px;
		height:500px;
		background: url("${pageContext.request.contextPath}/resources/images/bottom_img.png") no-repeat;
		position:relative;
	}
	#lastContent #bottomContent{
		width:540px;
		height:530px;
		background: url("${pageContext.request.contextPath}/resources/images/box_2.png") no-repeat;
		position: absolute;
		top:100px;
		right:0;
	}
	#lastContent #bottomContent #lastContentTitle{
		width:70%;
		margin:0 auto;
		margin-top:60px;
		margin-bottom:50px;
	}
	#lastContent #bottomContent #lastContentTitle p{
		font-size: 26px;
	}
	#lastContent #bottomContent #lastContentTitle p>#tc{
		font-size: 26px;
		color:#037C78;
		font-weight: bold;
	}
	#lastContent #bottomContent #lContentUL{
		width:70%;
		margin: 0 auto;
		margin-left:88.344px;
	}
	#lastContent #bottomContent #lContentUL li,li b{
		font-size: 20px;
	}
	#lastContent #bottomContent #lContentUL li{
		margin-bottom:15px;
	}
</style>
<script>
	var num=0; 
	$(function(){ 
		$(".cBtnImg").mouseover(function(){
			$(this).attr("src","/resources/images/btn_on.png");
		});
		$(".cBtnImg").mouseout(function(){
			$(this).attr("src","/resources/images/btn_off.png");
		});
		$(".bBtnImg").mouseover(function(){
			$(this).attr("src","/resources/images/plus_on.png");
		});
		$(".bBtnImg").mouseout(function(){
			$(this).attr("src","/resources/images/plus_off.png");
		});
	});
</script>
</head> 
<body>
	<div id="bodyWrap">
		<div id="header">
			<jsp:include page="../include/header2.jsp"></jsp:include>
		</div>
		<div id="mainBackground">
		</div>
		<div id="contentWrap">
			<div id="mainContent">
				<p>ㅡ</p>
				<h2>우리의 선언</h2>
				<ol id="anouncement">
					<li>우리는 환자분을 따뜻하게 환대한다</li>
					<li>우리는 환자분의 말을 경청하고 공감한다.</li>
					<li>우리는 환자분의 통증을 정확히 진단한다.</li>
					<li>우리는 환자분의 통증 완화를 위해서 최선을 다한다.</li>
					<li>우리는 환자분과 통증 완화에 도움되는 운동 및 심리적 지지를 한다.</li>
				</ol>
			</div><!-- mainContent 종료 -->
			<div id="clinicContent">
				<div class="clinic">
					<p class="clinic_icon"><img src="${pageContext.request.contextPath}/resources/images/icon_2.png"></p>
					<p class="m">――</p>
					<p class="cName">대상포진클리닉</p>
					<P class="cSubName">유한통증의학만의 대상포진클리닉</P>
					<p class="cBtn"><a href="clinic_info02"><img class="cBtnImg" src="${pageContext.request.contextPath}/resources/images/btn_off.png"></a></p>
				</div>
				<div class="clinic">
					<p class="clinic_icon"><img src="${pageContext.request.contextPath}/resources/images/icon_1.png"></p>
					<p class="m">――</p>
					<p class="cName">비수술클리닉</p>
					<P class="cSubName">유한통증의학만의 비수술클리닉</P>
					<p class="cBtn"><a href="clinic_info01"><img class="cBtnImg" src="${pageContext.request.contextPath}/resources/images/btn_off.png"></a></p>
				</div>
				<div class="clinic">
					<p class="clinic_icon"><img src="${pageContext.request.contextPath}/resources/images/icon_3.png"></p>
					<p class="m">――</p>
					<p class="cName">관절클리닉</p>
					<P class="cSubName">유한통증의학만의 관절클리닉</P>
					<p class="cBtn"><a href="clinic_info03"><img class="cBtnImg" src="${pageContext.request.contextPath}/resources/images/btn_off.png"></a></p>
				</div>
				<div class="clinic">
					<div id="time">
						<p class="mm">――</p>
						<p class="t1"><b>진료시간 : 09:00~18:30</b></p><br>
						<p>- 토요일 : <b>09:00~13:00</b></p>
						<p>(점심시간 없음)</p><br>
						<p class="t1"><b>*일요일 및 공휴일 휴무</b></p>
						<p>단, 대체공휴일은 정상진료</p><br>
						<p class="t1"><b>점심시간: 12:30~14:00</b></p><br>
						<p class="t1"><b>상담/예약문의 : 053-753-6001</b></p>
					</div>
				</div>
			</div>
			<div id="mainBoard">
				<div class="board">
					<div class="bTitle">
						<p>공지사항</p>
						<a href="notice"><img class="bBtnImg" src="${pageContext.request.contextPath}/resources/images/plus_off.png"></a>
					</div>
					<div class="bContent">
						<table>
							<tr>
								<td><img src="${pageContext.request.contextPath}/resources/images/list.png">&nbsp;&nbsp;등록된 게시물이 없습니다.</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="board">
					<div class="bTitle">
						<p>보도자료</p>
						<a href="broadcasting"><img class="bBtnImg" src="${pageContext.request.contextPath}/resources/images/plus_off.png"></a>
					</div>
					<div class="bContent">
						<table>
							<tr>
								<td><img src="${pageContext.request.contextPath}/resources/images/list.png">&nbsp;&nbsp;등록된 게시물이 없습니다.</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div id="lastContent">
				<div id="bottomContent">
					<div id="lastContentTitle">
						<p><span id="tc">유한통증의학과</span>만의</p>
						<p>특별한 서비스를 만나보세요!</p>
					</div>
					<ul id="lContentUL">
						<li><b>- 진료 및 치료 예약 시스템</b> : 30분 간격</li>
						<li><b>- 예약 문자 시스템</b> : 진료 하루전날</li>
						<li><b>- 점심시간 당직</b></li>
						<li><b>- 해피콜</b></li>
						<li><b>- 클리닉 영상</b>(질환별/Q&A/원내소개)</li>
						<li><b>- VIP할인 또는 서비스 제공</b></li>
						<li><b>- 다과 및 간식 제공</b></li>
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
