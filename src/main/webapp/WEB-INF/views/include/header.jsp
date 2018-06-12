<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
@media only screen and (min-width:1100px){
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
		width:33.24%;
		height:20px;
		float: left; 
		text-align: center;
		margin-top:43px;
		line-height: 20px;
	}
	.mainMenu>li:nth-child(2){
		border-left:1px solid #dcdcdc;
		border-right:1px solid #dcdcdc;
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
		margin-top:38px;
	}
	.mainMenu .dropdown:nth-child(2){
		width:248.3px;
		border-left:1px solid #fafafa;
		border-right:1px solid #fafafa;
	}
	.mainMenu .mainSubMenu:not(#lastMainSubMenu){
		height:200px;
		border-right:1px solid #E1F3F2;
	}
	.mainMenu .mainSubMenu>li{
		line-height: 40px;
		width:120px;
		margin:0 auto;
		text-align: left;
	}
	.mainSubMenu li a{
		font-size: 18px;
		width:135px;
		font-weight: 300;
	}
	.mainSubMenu li:hover a{
		color:#00B4AE; 
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
		width:768px;
		height:75px;
		margin:0 auto;
		border:1px solid #e3e3e3;
		background: white;
		position: relative;
		z-index: 99;
	}
	.headerWrap>.mainLogo{
		/* height:37px; */
		margin-top:25px;
		margin-left:30px;
		float:left;
	}
	.headerWrap>.mainLogo>img{
		width:160px;
	}
	.mainMenu{
		width:550px;
		float:right;
		height:75px;
	}
	.mainMenu > li{
		width:33.2%;
		height:20px;
		float: left; 
		text-align: center;
		margin-top:29px;
		line-height: 20px;
	}
	.mainMenu>li:nth-child(2){ 
		border-left:1px solid #dcdcdc;
		border-right:1px solid #dcdcdc;
	}
	.mainMenu>li>a{ 
		font-size: 18px;
		height:23px;
		display: inline;
		padding-bottom:20px;
	}
	.mainMenu>li:hover>a{
		border-bottom:4px solid #00B4AE;
	}
	.mainMenu .dropdown{
		display: none;
		height:240px;
		background: #fafafa;
		padding-top:30px;
		margin-top:25px;
	}
	.mainMenu .dropdown:nth-child(2){
		width:182.3px;
		border-left:1px solid #fafafa;
		border-right:1px solid #fafafa;
	}
	.mainMenu .mainSubMenu:not(#lastMainSubMenu){
		height:200px;
		border-right:1px solid #E1F3F2;
	}
	.mainMenu .mainSubMenu>li{
		line-height: 40px;
		width:100px;
		margin:0 auto;
		text-align: left;
	}
	.mainSubMenu li a{
		font-size: 16px;
		width:135px; 
		font-weight: 300;
	}
	.mainSubMenu li:hover a{
		color:#00B4AE; 
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
}
</style>
<script type="text/javascript">
	$(function(){
		$("section").bind("touchstart",function(){
			if(window.innerWidth <= 767){
			$(".menuClose").trigger("click");
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
		
		$(".mainMenu").mouseover(function(){
			$(".dropdown").css("display","block");
		});
		$(".mainMenu").mouseout(function(){
			$(".dropdown").css("display","none");
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
<div class="headerWrap">
	<a class="mainLogo" href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/logo.png"></a>
	<a class="mobileMenu" href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/mobileMenu.png"></a>
	<a class="menuClose" href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/x.png"></a>
	<ul class="mainMenu">
		<li class="mainMenu_li">
			<a href="${pageContext.request.contextPath}info01">병원소개</a>
			<div class="dropdown">
				<ul class="mainSubMenu">
					<li><a href="${pageContext.request.contextPath}/info01">인사말</a></li>
					<li><a href="${pageContext.request.contextPath}/info02">의료진 소개</a></li>
					<li><a href="${pageContext.request.contextPath}/info03">병원 둘러보기</a></li>
					<li><a href="${pageContext.request.contextPath}/info04">진료안내</a></li>
					<li><a href="${pageContext.request.contextPath}/location">오시는 길</a></li>
				</ul>
			</div>
			<img class="arrow" src="${pageContext.request.contextPath}/resources/images/arrow_down.png">
		</li>
		<li class="mainMenu_li">
			<a href="${pageContext.request.contextPath}/clinic01_01">진료분야</a>
			<div class="dropdown">
				<ul class="mainSubMenu">
					<li><a href="${pageContext.request.contextPath}/clinic01_01">비수술 클리닉</a></li>
					<li><a href="${pageContext.request.contextPath}/clinic02">대상포진 클리닉</a></li>
					<li><a href="${pageContext.request.contextPath}/clinic03_01">관절통증 클리닉</a></li>
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
					<li><a href="${pageContext.request.contextPath}/advice">진료/비용 상담</a></li>
					<li><a href="${pageContext.request.contextPath}/freqQuestion">자주하는 질문</a></li>
				</ul>
			</div>
			<img class="arrow" src="${pageContext.request.contextPath}/resources/images/arrow_down.png">
		</li>
	</ul><!-- mainMenu end -->
	
</div><!-- headerWrap end -->