<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	@CHARSET "UTF-8";
	#headerWrap{
		width:1073px;
		height:108px;
		margin:0 auto;
		background: url("${pageContext.request.contextPath}/resources/images/gnb_bg.png") no-repeat;
		padding:15px 12px 12px 12px;
		z-index: 9999;
	}
	#main_logo{
		display:inline;
		width:238px;
		height:40px;
		float:left;
		line-height: 108px;
		margin-left:30px;
	}
	#main_logo>a{
		width:100%;
		height:40px;
	}
	#main_logo>a>img{
		width:238px;
		height:40px;
	}
	#main_menu{
		display:inline;
		width:700px;
		float:right;
		overflow: hidden;
	}
	.nav{
		width:100%;
		line-height: 108px;
	}
	.nav>li{
		width:120px;
		margin:0 55px;
		display:inline;
		text-align: center;
		float:left;
	}
	.nav>li>a{
		width:120px;
		font-weight:500;
		font-size: 1.3em;
		text-align: center;
	}
	.nav>li>.dropdown_menu{
		width:120px;
		background:white;
		display:none;
		padding-top:10px;
	}
	.nav>li>.dropdown_menu a{
		font-size:1.1em;
	}
	.nav>li:hover>a{
		color:#00B4AE;
		font-weight:bold;
	}
	.nav>li:hover>.dropdown_menu{
		display:block;
	}
	.dropdown_menu>li:hover>a{
		color:#00B4AE;
		font-weight:bold;
	}
	
</style>
<div id="headerWrap">
	<div id="main_logo">
		<a href="#"><img src="${pageContext.request.contextPath}/resources/images/logo.png"></a>
	</div>
	<div id="main_menu">
		<ul class="nav">
			<li>
				<a href="#">병원소개</a>
				<ul class="dropdown_menu">
					<li><a href="#">인사말</a></li>
					<li><a href="#">의료진 소개</a></li>
					<li><a href="#">병원 둘러보기</a></li>
					<li><a href="#">진료안내</a></li>
					<li><a href="#">진료절차</a></li>
					<li><a href="#">오시는 길</a></li>
				</ul>
			</li>
			<li>
				<a href="#">진료분야</a>
				<ul class="dropdown_menu">
					<li><a href="#">비수술 클리닉</a></li>
					<li><a href="#">대상포진 클리닉</a></li>
					<li><a href="#">관절통증 클리닉</a></li>
				</ul>
			</li>
			<li>
				<a href="#">병원소식</a>
				<ul class="dropdown_menu">
					<li><a href="#">공지사항</a></li>
					<li><a href="#">언론보도</a></li>
					<li><a href="#">시술 후기</a></li>
					<li><a href="#">진료/비용 상담</a></li>
					<li><a href="#">자주하는 질문</a></li>
				</ul>
			</li>
		</ul><!-- nav 종료 -->
	</div><!-- mainMenu 종료 -->
</div><!-- headerWrap 종료 -->