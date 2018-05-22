<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		font-size: 20px;
		height:23px;
		display: inline;
		padding-bottom:32px;
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
		border-right:1px solid #E1F3F2;
	}
	.mainMenu .mainSubMenu>li{
		line-height: 40px;
	}
	.mainSubMenu li a{
		font-size: 18px;
		width:135px;
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
			<a href="info01">병원소개</a>
			<div class="dropdown">
				<ul class="mainSubMenu">
					<li><a href="info01">인사말</a></li>
					<li><a href="info02">의료진 소개</a></li>
					<li><a href="info03">병원 둘러보기</a></li>
					<li><a href="info04">진료안내</a></li>
					<li><a href="location">오시는 길</a></li>
				</ul>
			</div>
		</li>
		<li>
			<a href="clinic01_01">진료분야</a>
			<div class="dropdown">
				<ul class="mainSubMenu">
					<li><a href="clinic01_01">비수술 클리닉</a></li>
					<li><a href="clinic02">대상포진 클리닉</a></li>
					<li><a href="clinic03_01">관절통증 클리닉</a></li>
				</ul>
			</div>
		</li>
		<li>
			<a href="notice">병원소식</a>
			<div class="dropdown">
				<ul class="mainSubMenu" id="lastMainSubMenu">
					<li><a href="notice">공지사항</a></li>
					<li><a href="broadcasting">언론보도</a></li>
					<li><a href="comment">시술 후기</a></li>
					<li><a href="advice">진료/비용 상담</a></li>
					<li><a href="freqQuestion">자주하는 질문</a></li>
				</ul>
			</div>
		</li>
	</ul><!-- mainMenu end -->
</div><!-- headerWrap end -->