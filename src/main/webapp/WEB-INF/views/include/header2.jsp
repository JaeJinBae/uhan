<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	@CHARSET "UTF-8";
	#headerWrap{
		width:1073px;
		height:108px;
		margin:0 auto;
		background: url("${pageContext.request.contextPath}/resources/images/gnb_bg.png") no-repeat;
		z-index: 9999;
	}
	#mainLogo{
		width:200px;
		height:40px;
		margin-top:35px;
		margin-left:40px;
	}
	#mainLogo>img{
		width:200px;
	}
	#main_menu{
		width:700px;
		height:103px;
		float:right;
		text-align: center;
	}
	#main_menu #menu{
		width:700px;
		height:103px;
		margin:0 auto;
	}
	#main_menu #menu>li{
		width:33%;
		height:103px;
		margin:0 auto;
		display:inline-block;
	}
	#main_menu #menu>li>a{
		font-size:1.5em;
		width:100px;
		line-height:100px;
		margin:0 auto;
		display: block;
		text-align: center; 
		/* border-bottom:5px solid white; */
	}
	/* #main_menu #menu>li:hover>a{
		border-bottom:5px solid green;
	}*/
	.dropdown_menu{
		width:700px;
		height:200px;
		background: white;
		display:none;
	}
	.column{
		width:33%;
		float:left;
	}
	.column .dropdown_menu1>li a{
		font-size:16px;
		line-height: 30px;
	}
	.column .dropdown_menu1>li a:hover{
		color:#00B4AE;
		font-weight: bold;
	}
	.dropdown_menu1:not(#lastChild){
		border-right:2px solid #E1F3F2;
		height:180px;
	}
</style>
<script>
	$(function(){
		$("#main_menu #menu>li").mouseover(function(){
			//$(this).children("a").css("border-bottom","5px solid green");
			$(".dropdown_menu").css("display","block");
			//$(".dropdown_menu").slideDown("fast");
		});
		$("#main_menu #menu>li").mouseout(function(){
			//$(".bm").css("border-bottom","5px solid white");
			$(".dropdown_menu").css("display","none");
			//$(".dropdown_menu").slideUp("fast");
		});
	})
</script>
<div id="headerWrap">
	<a id="mainLogo" href="${pageContext.request.contextPath}"><img src="${pageContext.request.contextPath}/resources/images/logo.png"></a>
	<div id="main_menu">
		<ul id="menu">
			<li>
				<a class="bm" href="info01">병원소개</a>
				<div class="dropdown_menu">
					<div class="column">
						<ul class="dropdown_menu1">
							<li><a href="info01">인사말</a></li>
							<li><a href="info02">의료진 소개</a></li>
							<li><a href="info03">병원 둘러보기</a></li>
							<li><a href="info04">진료안내</a></li>
							<li><a href="info05">진료절차</a></li>
							<li><a href="location">오시는 길</a></li>
						</ul>
					</div>
					<div class="column">
						<ul class="dropdown_menu1">
							<li><a href="clinic_info01">비수술 클리닉</a></li>
							<li><a href="clinic_info02">대상포진 클리닉</a></li>
							<li><a href="clinic_info03">관절통증 클리닉</a></li>
						</ul>
					</div>
					<div class="column">
						<ul class="dropdown_menu1" id="lastChild">
							<li><a href="notice">공지사항</a></li>
							<li><a href="broadcasting">언론보도</a></li>
							<li><a href="comment">시술 후기</a></li>
							<li><a href="advice">진료/비용 상담</a></li>
							<li><a href="freqQuestion">자주하는 질문</a></li>
						</ul>
					</div>
				</div>
			</li>
			<li>
				<a class="bm" href="clinic_info01">진료분야</a>
			</li>
			<li>
				<a class="bm" href="notice">병원소식</a>
			</li>
		</ul>
	</div><!-- mainMenu 종료 -->
</div><!-- headerWrap 종료 -->

