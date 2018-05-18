<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=2">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style type="text/css">
	*{
		margin:0;
		padding:0;
	}
	.headerWrap{
		width:1073px;
		height:108px;
		margin:0 auto;
		background: url("${pageContext.request.contextPath}/resources/images/gnb_bg.png") no-repeat;
	}
	.headerWrap>.mainLogo{
		height:37px;
		margin-top:33px;
		margin-left:40px;
		float:left;
	}
	.headerWrap>.mainLogo>img{
		width:220px;
	}
	.mainMenu{
		width:750px;
		float:right;
		height:108px;
	}
	.mainMenu > li{
		width:33.33%;
		float: left;
		text-align: center;
		line-height: 100px;
	}
	.mainMenu>li>a{
		font-size: 23px;
		height:98px;
	}
	.mainMenu>li:hover>a{
		border-bottom:4px solid #00B4AE;
	}
	.mainMenu .dropdown{
		display: none;
		height:240px;
		background: #fafafa;
		padding-top:30px;
	} 
	.mainMenu .mainSubMenu:not(#lastMainSubMenu){
		height:200px;
		border-right:2px solid #E1F3F2;
	}
	.mainMenu .mainSubMenu>li{
		line-height: 40px;
	}
	.mainSubMenu li a{
		font-size: 18px;
	}
	.mainSubMenu li:hover a{
		color:#00B4AE; 
		font-weight: bold;
	}
</style>
<script type="text/javascript">
	$(function(){
		$(".mainMenu>li").mouseover(function(){
			$(".dropdown").css("display","block");
		});
		$(".mainMenu>li").mouseout(function(){
			$(".dropdown").css("display","none");
		});
	});
</script>
</head>
<body>
<div class="headerWrap">
	<a class="mainLogo" href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/logo.png"></a>
	<ul class="mainMenu">
		<li>
			<a href="#">병원소개</a>
			<div class="dropdown">
				<ul class="mainSubMenu">
					<li><a href="#">인사말</a></li>
					<li><a href="#">의료진 소개</a></li>
					<li><a href="#">진료안내</a></li>
					<li><a href="#">병원 둘러보기</a></li>
					<li><a href="#">오시는 길</a></li>
				</ul>
			</div>
		</li>
		<li>
			<a href="#">진료분야</a>
			<div class="dropdown">
				<ul class="mainSubMenu">
					<li><a href="#">비수술 클리닉</a></li>
					<li><a href="#">대상포진 클리닉</a></li>
					<li><a href="#">관절통증 클리닉</a></li>
				</ul>
			</div>
		</li>
		<li>
			<a href="#">병원소식</a>
			<div class="dropdown">
				<ul class="mainSubMenu" id="lastMainSubMenu">
					<li><a href="#">공지사항</a></li>
					<li><a href="#">언론보도</a></li>
					<li><a href="#">시술 후기</a></li>
					<li><a href="#">진료/비용 상담</a></li>
					<li><a href="#">자주하는 질문</a></li>
				</ul>
			</div>
		</li>
	</ul><!-- mainMenu end -->
</div><!-- headerWrap end -->
</body>
</html>