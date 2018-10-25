<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
@media only screen and (min-width:1100px){
 *{
		margin:0;
		padding:0;
	} 
	.headerWrap{
		width:100%;
		min-width:1200px;
		height:91px;
		margin:0 auto;
	}
	.headerWrap:hover{
		background: #f5a241;
	}
	/* login css */
	.loginDiv{
		width:100%;
		text-align: right;
		padding-top:5px;
	}
	.loginDiv > a{
		color:#fff;
		margin-right:20px;
	}
	.loginDiv > a > img{
		width:9px;
		margin-right:3px;
	}
	/* login css end */
	.headerWrap > .mainLogo{
		height:37px;
		position:absolute;
		top:34px; 
		left:40px;
	} 
	.headerWrap > .mainLogo > img{
		width:250px;
	}
	.mainMenu{
		/*width:750px;
		float:right; */
		width:100%;
		min-width:1024px;
		display:inline-block;
		height:90px;
		padding-left:26%;
	}
	
	.mainMenu > li{
		width:250px;
		height:20px;
		float: left; 
		text-align: center;
		margin-top:23px;
		line-height: 17px;
		
	}
	.mainMenu > li:nth-child(2){
		border-left:1px solid #dcdcdc;
		border-right:1px solid #dcdcdc;
	}
	.mainMenu > li:nth-child(3){
		border-right:1px solid #dcdcdc;
	}
	.mainMenu > li > a{ 
		font-size: 20px;
		height:23px;
		display: inline;
		padding-bottom:32px;
		color:white;
		font-weight:500;
	}
	.headerWrap:hover > .mainMenu > li > a{
		color:black;
	}
	/* .mainMenu>li:hover>a{
		border-bottom:4px solid #00B4AE;
	} */
	.mainMenu .dropdown{
		display: none;
		height:240px;
		/* background: #fafafa; */
		padding-top:30px;
		margin-top:38px;
	}
	.mainMenu .dropdown:nth-child(2){
		width:248.3px;
		/* border-left:1px solid #fafafa;
		border-right:1px solid #fafafa; */
	}
	.mainMenu .mainSubMenu:not(#lastMainSubMenu){
		height:200px;
		border-right:2px solid #E1F3F2;
	}
	.mainMenu .mainSubMenu > li{
		line-height: 40px;
		width:130px;
		margin:0 auto;
		text-align: center;
	}
	.secondSubMenu > li{
		width:155px !important;
	}
	.mainSubMenu li a{
		font-size: 18px;
		width:100%;
		font-weight: 300;
	}
	.mainSubMenu li:hover a{
		color:#00B4AE; 
		font-weight: 400;
		/* font-weight: bold; */
	}
	.mobileMenu{
		display: none;
	}
	.menuClose{
		display: none;
	}
	.arrow{
		display: none;
	}
}
@media only screen and (min-width:768px) and (max-width:1099px){
	*{
		margin:0;
		padding:0;
	}
	.headerWrap{
		width:100%;
		height:75px;
		margin:0 auto;
		/* border:1px solid #e3e3e3; */
		/* background: white; */
		position: relative;
		z-index: 99;
	}
	.headerWrap > .mainLogo{
		/* height:37px; */
		margin-top:25px;
		margin-left:30px;
		float:left;
	}
	.headerWrap > .mainLogo > img{
		width:160px;
	}
	.mainMenu{
		width:100%;
		/* float:right; */
		height:75px;
		padding-left:20%;
	}
	.mainMenu > li{
		width:145px;
		height:20px;
		float: left; 
		text-align: center;
		margin-top:29px;
		line-height: 20px;
	}
	.mainMenu > li:nth-child(2){ 
		border-left:1px solid #dcdcdc;
		border-right:1px solid #dcdcdc;
	}
	.mainMenu > li:nth-child(3){ 
		border-right:1px solid #dcdcdc;
	}
	.mainMenu > li > a{ 
		font-size: 18px;
		height:23px;
		display: inline;
		padding-bottom:20px;
		color:#fff;
	}
	.mainMenu > li:hover > a{
		border-bottom:4px solid #00B4AE;
	}
	.mainMenu .dropdown{
		display: none;
		height:220px;
		background: #fff;
		padding-top:25px;
		margin-top:25px;
	}
	.mainMenu .dropdown:nth-child(2){
		width:100%;
		/* border-left:1px solid #fafafa;
		border-right:1px solid #fafafa; */
	}
	.mainMenu .mainSubMenu:not(#lastMainSubMenu){
		height:200px;
		border-right:2px solid #E1F3F2;
	}
	.mainMenu .mainSubMenu > li{
		line-height: 40px;
		width:100%;
		margin:0 auto;
		text-align: center;
	}
	.mainSubMenu li a{
		font-size: 15px;
		width:100%; 
		font-weight: 300;
	}
	.mainSubMenu li:hover a{
		color:#00B4AE; 
		font-weight:400;
		/* font-weight: bold; */
	}
	.mobileMenu{
		display: none;
	}
	.menuClose{
		display: none;
	}
	.arrow{
		display: none;
	}
	.adminBtn{
		display:none;
	}
}
@media only screen and (min-width:320px) and (max-width:767px){
	*{
		margin:0;
		padding:0;
	}
	.headerWrap{
		position:relative;
		width:100%;
		height:75px;
	}
	.headerWrap .mainLogo img{
		width:180px;
		margin-left: 20px;
		margin-top: 25px;
	}
	.headerWrap .mainMenu{
		margin-top: 10.5px; 
		display: none;
		position:relative;
		z-index: 99;
		width:100%;
	}
	.headerWrap .mainMenu li{
		background:white;
	}
	.headerWrap .mobileMenu img{
		position:absolute;
		top:15px;
		right:5px;
		display:inline;
		width:40px;
		height:50px;
	}
	.menuClose{
		display: none; 
	}
	.menuClose img{
		position:absolute;
		top:25px;
		right:13px;
		display:inline;
		width:25px;
		z-index:100;
	}
	.mainMenu > li{
		position: relative;
	}
	.mainMenu > li > a{
		display:block; 
		border-bottom: 1px solid #dcdcdc;
		height:26px;
		line-height:26px;
		padding:18px 28px;
		font-size: 1.5em;
	}
	.mainMenu li .dropdown{
		background-color:#fafafa;
	}
	.dropdown .mainSubMenu li{
		background-color:#fafafa;
		padding-left: 38px;	
	}
	.dropdown .mainSubMenu li a{
		display:block;
		color:#888686;
		height:35px;
		line-height:35px;
		font-size: 1.3em;		
	}
	.mainMenu  li .dropdown .mainSubMenu{
	 	 display:none;  
	 	 padding-top: 10px;
	 	 padding-bottom: 10px;
	}
	.arrow{
		position: absolute;
		top:15px;
		right:8px;
	}
	.check{
	}
	.borderCss{
		border-bottom: 1px solid #dcdcdc;
	}
	.adminBtn{
		display:none;
	}
}
</style>
<script type="text/javascript">
	$(function(){
		if(window.innerWidth<767){
			$(".mainLogo>img").attr("src","${pageContext.request.contextPath}/resources/images/logo.png");
		}
		
		
		$("section").bind("touchstart",function(){
			if(window.innerWidth <= 767){
				$(".menuClose").trigger("click");
			}
			if(window.innerWidth>767 || window.innerWidth<1100){
				$(".dropdown").css("display","none");
			}
		})
			$(".mainMenu").find(".mainMenu_li > a").bind("touchstart",function(e){
					
				if(window.innerWidth <= 767){
				
					var $target=$(this).next(".dropdown").find(".mainSubMenu");
					$(this).parent("li").find(".arrow").attr("src","${pageContext.request.contextPath}/resources/images/arrow_up.png");
					$target.slideToggle(300);
					$(this).toggleClass("check");
					$(this).parent(".mainMenu_li").toggleClass("borderCss");
					
					var $other=$(".mainMenu .mainMenu_li  a").not(this).next(".dropdown").find(".mainSubMenu");
					$(".mainMenu .mainMenu_li  a").not(this).parent("li").find(".arrow").attr("src","${pageContext.request.contextPath}/resources/images/arrow_down.png");
					$(".mainMenu .mainMenu_li  a").not(this).removeClass("check");
					$(".mainMenu .mainMenu_li  a").not(this).parent(".mainMenu_li").removeClass("borderCss");
					$other.slideUp(300);
					
					if($(this).hasClass("check")==true){
						$(this).parent("li").find(".arrow").attr("src","${pageContext.request.contextPath}/resources/images/arrow_up.png");
					}else{
						$(this).parent("li").find(".arrow").attr("src","${pageContext.request.contextPath}/resources/images/arrow_down.png");
					}
						e.preventDefault();
					}
			});
			
			$(".mainMenu").find(".mainMenu_li img").bind("touchstart",function(e){
				if(window.innerWidth < 767){
					
					var $target=$(this).prevAll(".dropdown").find(".mainSubMenu");
					$(this).parent("li").find(".arrow").attr("src","${pageContext.request.contextPath}/resources/images/arrow_up.png");
					$target.slideToggle(300);
					$(this).toggleClass("check");
					$(this).parent(".mainMenu_li").toggleClass("borderCss");
					
					var $other=$(".mainMenu .mainMenu_li img").not(this).prevAll(".dropdown").find(".mainSubMenu");
					$(".mainMenu .mainMenu_li img").not(this).attr("src","${pageContext.request.contextPath}/resources/images/arrow_down.png");
					$(".mainMenu .mainMenu_li img").not(this).removeClass("check");
					$(".mainMenu .mainMenu_li img").not(this).parent(".mainMenu_li").removeClass("borderCss");
					$other.slideUp(300);
					
					if($(this).hasClass("check")==true){
						$(this).attr("src","${pageContext.request.contextPath}/resources/images/arrow_up.png");
					}else{
						$(this).attr("src","${pageContext.request.contextPath}/resources/images/arrow_down.png");
					}
					e.preventDefault();
				}
				
			});
		
		$(".headerWrap").mouseover(function(){
			if(window.innerWidth > 1099){				
				$(this).css("height","374px");
				$(this).css("background","#fff");
				$(".dropdown").css("display","block");
				$(".mainMenu").css("border-bottom","1px solid lightgray");
				$(".loginDiv").css("background","#f5a241");
				$(".mainMenu").css("background","#f5a241");
				$(".mainMenu>li>a").css("color","#fff");
				$(".mainLogo>img").attr("src","${pageContext.request.contextPath}/resources/images/logo.png");
				$(this).css("border-bottom","1px solid lightgray");
			}else if(window.innerWidth<1100 && window.innerWidth>767){
				/* $(".dropdown").css("display","block"); */
				$(this).css("height","330px");
				$(this).css("background","white");
				$(".dropdown").css("display","block");
				$(".mainMenu").css("background","#f5a241");
				$(".loginDiv").css("background","#f5a241");
				$(".mainMenu").css("border-bottom","1px solid lightgray");
				$(".mainMenu>li>a").css("color","#fff");
				$(".mainLogo>img").attr("src","${pageContext.request.contextPath}/resources/images/logo.png");
				$(this).css("border-bottom","1px solid lightgray");
				$(".adminBtn").css("color","#666");
			}
		});
		$(".headerWrap").mouseout(function(){
			if(window.innerWidth > 1099){
				$(this).css("height","90px");
				$(this).css("background","none");
				$(this).css("border","0");
				$(".mainMenu").css("border","0");
				$(".mainMenu").css("background","none");
				$(".loginDiv").css("background","none");
				$(".dropdown").css("display","none");
				$(".mainMenu>li>a").css("color","white");
				$(".mainLogo>img").attr("src","${pageContext.request.contextPath}/resources/images/whitelogo.png");
				$(".adminBtn").css("color","white");
				if($(window).scrollTop()>10){
					$(".headerWrap").css("background","#f5a241");
					$(".loginDiv").css("background","#f5a241");
	            	$(".mainMenu>li>a").css("color","#fff");
	            	$(".mainMenu").css("border-bottom","1px solid lightgray");
	            	$(".mainLogo>img").attr("src","${pageContext.request.contextPath}/resources/images/logo.png");
				}
			}else if(window.innerWidth<1100 && window.innerWidth>767){
				/* $(".dropdown").css("display","none"); */
				$(this).css("height","75px");
				$(this).css("background","none");
				$(this).css("border","0");
				$(".mainMenu").css("border","0");
				$(".mainMenu").css("background","none");
				$(".loginDiv").css("background","none");
				$(".dropdown").css("display","none");
				$(".mainMenu>li>a").css("color","white");
				$(".mainLogo>img").attr("src","${pageContext.request.contextPath}/resources/images/whitelogo.png");
				$(".adminBtn").css("color","white");
				if($(window).scrollTop()>10){
					$(".headerWrap").css("background","#f5a241");
					$(".loginDiv").css("background","#f5a241");
	            	$(".mainMenu>li>a").css("color","#fff");
	            	$(".adminBtn").css("color","#666");
	            	$(".mainMenu").css("border-bottom","1px solid lightgray");
	            	$(".mainLogo>img").attr("src","${pageContext.request.contextPath}/resources/images/logo.png");
				}
			}
			
		});
		
		/* 페이지 스크롤 될대 메뉴 css */
		$(window).scroll(function() {
			if(window.innerWidth > 1099){/* pc */
		    	var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
	        	if(position>10){
	        		$(".mainLogo>img").attr("src","${pageContext.request.contextPath}/resources/images/logo.png");
	            	$(".headerWrap").css("background","#f5a241");
	            	$(".loginDiv").css("background","#f5a241");
	            	$(".mainMenu>li>a").css("color","#fff");
	            	$(".mainMenu").css("height","90px");
	            	$(".mainMenu").css("border-bottom","1px solid lightgray");
	            }
	            if(position<10){
	            	$(".headerWrap").css("background","none");
	            	$(".loginDiv").css("background","none");
	            	$(".mainMenu>li>a").css("color","white");
	            	$(".mainLogo>img").attr("src","${pageContext.request.contextPath}/resources/images/whitelogo.png");
	            	$(".mainMenu").css("border","0");
	            }
			}
			else if(window.innerWidth > 767 && window.innerWidth < 1099){/* 테블릿 */
		    	var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
	        	if(position>10){
	        		$(".mainLogo>img").attr("src","${pageContext.request.contextPath}/resources/images/logo.png");
	            	$(".headerWrap").css("background","#f5a241");
	            	$(".loginDiv").css("background","#f5a241");
	            	$(".mainMenu>li>a").css("color","#fff");
	            	$(".mainMenu").css("height","75px");
	            	$(".mainMenu").css("border-bottom","1px solid lightgray");
	            	$(".headerWrap").css("height","75px");
	            }
	            if(position<10){
	            	$(".headerWrap").css("background","none");
	            	$(".loginDiv").css("background","none");
	            	$(".mainMenu>li>a").css("color","white");
	            	$(".adminBtn").css("color","white");
	            	$(".mainLogo>img").attr("src","${pageContext.request.contextPath}/resources/images/whitelogo.png");
	            	$(".mainMenu").css("border","0");
	            	console.log(position);
	            }
			}
		});
		
		$(".mobileMenu").click(function(e){
		
			$(".mainLogo").find("img").attr("src","${pageContext.request.contextPath}/resources/images/mobileMenuLogo.png");
			 $(".mainLogo").find("img").css({"margin-top":"19px","width":"200px","height":"40px","margin-left":"14px"}); 
			 
		
			$(".mobileMenu").css("display","none"); 
			$(".menuClose").css("display","block");
			
			$(".headerWrap").css("background","#00b4ae");
			$(".mainMenu").slideDown("slow", function() {
				$(".mainMenu").css("display","block");
			 	
			
			});
			
			e.preventDefault();
		});
		
		$(".menuClose").click(function(e){
			$(".mainLogo").find("img").attr("src","${pageContext.request.contextPath}/resources/images/logo.png");
			$(".mainLogo").find("img").css({"margin-top":"25px","width":"180px","height":"30px","margin-left":"20px"});
			$(".mobileMenu").css("display","block");
			$(".menuClose").css("display","none");
			$(".headerWrap").css("background","white");
			$(".mainMenu").slideUp("slow", function() {
				$(".mainMenu").css("display","none");
			});
			
			e.preventDefault();
		});
		 $(".navUl>li:not(:first-child)>a").click(function(){
			return false;
        });
		 
		
	});	
</script>
<div class="loginDiv">
	<a href="${pageContext.request.contextPath}/login">로그인</a>
	<a href="#none">회원가입</a>
	<a class="adminBtn" href="${pageContext.request.contextPath}/adminLogin"><img src="${pageContext.request.contextPath}/resources/images/lock777.png">관리자</a>
</div>
<div class="headerWrap">
	<a class="mainLogo" href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/whitelogo.png"></a>
	<a class="mobileMenu" href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/mobileMenu.png"></a>
	<a class="menuClose" href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/x.png"></a>
	<ul class="mainMenu">
		<li class="mainMenu_li">
			<a href="${pageContext.request.contextPath}/info01">병원소개</a>
			<div class="dropdown">
				<ul class="mainSubMenu">
					<li><a href="${pageContext.request.contextPath}/info01">인사말</a></li>
					<li><a href="${pageContext.request.contextPath}/info02">의료진 소개</a></li>
					<li><a href="${pageContext.request.contextPath}/info04">진료철학</a></li>
					<li><a href="${pageContext.request.contextPath}/info03">병원 둘러보기</a></li>
					<li><a href="${pageContext.request.contextPath}/location">오시는 길</a></li>
				</ul>
			</div>
			<img class="arrow" src="${pageContext.request.contextPath}/resources/images/arrow_down.png">
		</li> 
		<li class="mainMenu_li">
			<a href="${pageContext.request.contextPath}/clinic01_00">진료분야</a>
			<div class="dropdown">
				<ul class="mainSubMenu secondSubMenu">
					<li><a href="${pageContext.request.contextPath}/clinic01_00">비수술 척추 클리닉</a></li>
					<li><a href="${pageContext.request.contextPath}/clinic02">대상포진 클리닉</a></li>
					<li><a href="${pageContext.request.contextPath}/clinic03_01">관절통증 클리닉</a></li>
				</ul>
			</div>
			<img class="arrow" src="${pageContext.request.contextPath}/resources/images/arrow_down.png">
		</li>
		<li class="mainMenu_li">
			<a href="${pageContext.request.contextPath}/intro1">진료안내</a>
			<div class="dropdown">
				<ul class="mainSubMenu">
					<li><a href="${pageContext.request.contextPath}/intro1">진료시간</a></li>
					<li><a href="${pageContext.request.contextPath}/intro2">진료비용</a></li>
					<li><a href="${pageContext.request.contextPath}/intro3">자주하는 질문</a></li>
				</ul>
			</div>
			<img class="arrow" src="${pageContext.request.contextPath}/resources/images/arrow_down.png">
		</li>
		<li class="mainMenu_li">
			<a href="${pageContext.request.contextPath}/notice">병원소식</a>
			<div class="dropdown">
				<ul class="mainSubMenu" id="lastMainSubMenu">
					<li><a href="${pageContext.request.contextPath}/notice">공지사항</a></li>
					<li><a href="${pageContext.request.contextPath}/broadcasting">언론보도</a></li>
					<li><a href="${pageContext.request.contextPath}/comment">시술 후기</a></li>
					<li><a href="${pageContext.request.contextPath}/news">유한소식</a></li>
					<li><a href="${pageContext.request.contextPath}/advice">진료/비용 상담</a></li>
				</ul>
			</div>
			<img class="arrow" src="${pageContext.request.contextPath}/resources/images/arrow_down.png">
		</li>
	</ul><!-- mainMenu end -->
</div><!-- headerWrap end -->