<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>인사말 | 유한통증의학과</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=5">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css?ver=1"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css?ver=8"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">

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
					<p>분석하여 빠르게 통증을 줄이는</p>
					<p>유한통증의학과만의 <span class="boldText">비수술 클리닉</span></p>
					<a href="clinic01_01"><img class="barogo" src='${pageContext.request.contextPath}/resources/images/barogo.png'></a>
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
						<li>&nbsp;토요일<span class="number"> : 09:00 ~ 13:00</span><br>
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
						<li><img src="${pageContext.request.contextPath}/resources/images/fax_icon.png">FAX : 053.123.4567</li>
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