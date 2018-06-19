<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>진료/비용 상담 | 유한통증의학과</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=2">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditorBasic/ckeditor.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
@media only screen and (min-width:1100px){
	body{
		font-family: 'Noto Sans', sans-serif;
	}
	header{
		width:100%;
		height:108px;
		position: absolute;
		top: 0;
		left:0;
		right:0;
		bottom:0;
		margin:0 auto;
		z-index: 99;
	}
	section{
		width:100%;
		margin-top:54px;
		margin-bottom:150px;
	}
	section .mainBackground{
		width:100%;
	}
	section .mainBackground>.bgImg{
		width:100%;
		/* min-width:1200px; */
		height:346px;
		float:left;
	} 
	.bgText{
		width:1200px;
		position: absolute;
		top:170px;
		left:0;
		right:0;
		bottom:0;
		margin:0 auto;
	}
	.bgText>h1{
		color:white;
		font-size:40px;
		font-weight:500;
		margin-bottom:15px;
		opacity:0.9;
	}
	.bgText>p{
		color:white;
		font-size:20px;
		font-weight: 300;
		opacity:0.8;
	}
	section .mainBackground .navWrap{
		width:100%;
		height:70px;
		clear:both;
		background: #0B8783;
		position: relative;
		z-index: 99;
	}
	section .mainBackground .navWrap .navUl{
		width:1200px;
		margin:0 auto;
	}
	section .mainBackground .navWrap .navUl>li{
		height:70px;
		border-left:1px solid #3C9F9C;
		float:left;
		text-align: center;
	}
	section .mainBackground .navWrap .navUl>li a{  
		font-size: 20px;
		color:white;
		line-height: 70px;
		margin:0 40px;
	}
	section .mainBackground .navWrap .navUl>li:first-child{
		text-align: center;
	}
	section .mainBackground .navWrap .navUl>li:last-child{
		border-right:1px solid #3C9F9C;
	}
	section .mainBackground .navWrap .navUl>li:first-child a{
		line-height: 75px;
	}
	section .mainBackground .navWrap .navUl>li a>.btnArrow{
		margin-left:50px; 
		margin-top:26px;
		float:right;
		width:22px;
	}
	.sub_subDropdown{
		display: none;
		background: #376d6a;
	} 
	.sub_subDropdown>li{
		text-align: left;
		border-bottom:1px solid #9bb6b5;
	}
	.sub_subDropdown>li a{
		height:52px; 
		line-height: 52px !important;
		font-size: 18px !important;
	}
	.sub_subDropdown>li a:hover{
		font-weight: bold;
	}
	section .mainBackground .navWrap .navUl>li:hover >.sub_subDropdown {
		display: block;
	}
	section .contentWrap{
		width:100%;
		max-width:1200px;
		margin:0 auto;
		margin-top:100px;
		text-align: center;
		clear:both;
		position:relative;
	}
	.contentWrap>img{
		width:700px;
	}
	/* quick menu */
	.quick{
		width:110px;
		text-align: center;
		position: absolute;
		top:0;
		right:-150px;
		z-index: 999;
	}
	.quick ul li{
		width:100%;
		height:100px;
		border-bottom:1px solid rgba(255,255,255, 0.5);
		background: #becdcd;
	}
	.quick ul li:first-child{
		background: #0b8783;
	}
	.quick ul li:first-child p{
		color:white;
		font-size:22px;
		padding-top:17px;
	}
	.quick ul li a{
		width:100px;
		height:100px;
		color:white;
	}
	.quick ul li a img{
		margin-top:18px;
		margin-bottom:12px;
	}
	.quick ul li:last-child a img{
		margin-top:27px;
		margin-bottom:5px;
	}
	.quick ul li a span{
		font-size:14px;
	}
	.quick ul li:last-child a span{
		font-size:16px;
	}
	.sub_title{
		width:100%;
		margin:0 auto;
		margin-bottom:70px;
	}
	.sub_title p{
		font-size:25px;
		margin-bottom:20px; 
	}
	.sub_title h1{
		font-size:35px;
		font-weight: 500;
	}
	.sub_title>p>img{
		width:40px;
	}
	.custom{
		width:100%;
		margin:0 auto;
	}
	.custom>table{
		width:1000px;
		margin:0 auto;
		border-top:5px solid #e3e3e3;
		border-bottom:5px solid #e3e3e3;
		text-align:left;
	}
	.custom>table td{
		padding:10px 15px;
	}
	.custom>table tr:first-child td{
		border-bottom:2px solid #e3e3e3;
	}
	.customContent{
		width:100%;
		max-width:970px;
		margin:0 auto;
		padding:20px 15px;
		text-align: left;
	}
	.btnWrap{
		margin-top:50px;
	}
	.btnWrap button{
		width:50px;
		height:24px;
		background: #00b4ae;
		color:white;
		border:none;
		border-radius: 3px;
		font-size:15px;
	}
	.reply{
		width:100%;
		margin:100px auto;
	}
	.reply>table{
		width:1000px;
		margin:0 auto;
		border-top:5px solid #e3e3e3;
		border-bottom:5px solid #e3e3e3;
		text-align:left;
	}
	.reply>table td{
		padding:10px 15px;
	}
	.reply>table tr:first-child td{
		border-bottom:2px solid #e3e3e3;
	}
	.replyContent{
		width:100%;
		max-width:970px;
		margin:0 auto;
		padding:20px 15px;
		text-align: left;
	}
	.replyContent img{
		max-width:1000px;
	}
}
@media only screen and (min-width:768px) and (max-width:1099px){
	body{
		font-family: 'Noto Sans', sans-serif;
	}
	header{
		width:100%;
		height:75px;
		position: absolute;
		top: 0;
		left:0;
		right:0;
		bottom:0;
		margin:0 auto;
		z-index: 99;
	}
	section{
		width:100%;
		margin-top:27px;
		margin-bottom:100px;
	}
	section .mainBackground{
		width:100%;
	}
	section .mainBackground>.bgImg{
		width:100%;
		height:346px;
		float:left;
	}
	.bgText{
		width:95%;
		position: absolute;
		top:170px;
		left:15px;
		right:0;
		bottom:0;
		margin:0 auto;
	}
	.bgText>h1{
		color:white;
		font-size:40px;
		font-weight:500;
		margin-bottom:15px;
		opacity:0.9;
	}
	.bgText>p{
		color:white;
		font-size:20px;
		font-weight: 300;
		opacity:0.8;
	}
	section .mainBackground .navWrap{
		width:100%;
		height:70px;
		clear:both;
		background: #0B8783;
		position: relative;
		z-index: 99;
	}
	section .mainBackground .navWrap .navUl{
		width:100%;
		margin:0 auto;
	}
	section .mainBackground .navWrap .navUl>li{
		height:70px;
		border-left:1px solid #3C9F9C;
		float:left;
		text-align: center;
	}
	section .mainBackground .navWrap .navUl>li a{  
		font-size: 20px;
		color:white;
		line-height: 70px;
		margin:0 40px;
	}
	section .mainBackground .navWrap .navUl>li:first-child{
		text-align: center;
	}
	section .mainBackground .navWrap .navUl>li:last-child{
		border-right:1px solid #3C9F9C;
	}
	section .mainBackground .navWrap .navUl>li:first-child a{
		line-height: 75px;
	}
	section .mainBackground .navWrap .navUl>li a>.btnArrow{
		margin-left:50px; 
		margin-top:26px;
		float:right;
		width:22px;
	}
	.sub_subDropdown{
		display: none;
		background: #376d6a;
	} 
	.sub_subDropdown>li{
		text-align: left;
		border-bottom:1px solid #9bb6b5;
	}
	.sub_subDropdown>li a{
		height:52px;
		line-height: 52px !important;
		font-size: 18px !important;
	}
	.sub_subDropdown>li a:hover{
		font-weight: bold;
	}
	section .mainBackground .navWrap .navUl>li:hover >.sub_subDropdown {
		display: block;
	}
	section .contentWrap{
		width:100%;
		max-width:1100px;
		margin:0 auto;
		margin-top:80px;
		text-align: center;
		clear:both;
		position:relative;
	}
	/* quick menu */
	.quick{
		display:none;
	}
	.sub_title{
		width:100%;
		margin:0 auto;
		margin-bottom:70px;
	}
	.sub_title p{
		font-size:25px;
		margin-bottom:20px; 
	}
	.sub_title>p>img{
		width:40px;
	}
	.sub_title h1{
		font-size:30px;
		font-weight: 500;
	}
	.custom{
		width:100%;
		margin:0 auto;
	}
	.custom>table{
		width:750px;
		margin:0 auto;
		border-top:5px solid #e3e3e3;
		border-bottom:5px solid #e3e3e3;
		text-align:left;
	}
	.custom>table td{
		padding:10px 15px;
	}
	.custom>table tr:first-child td{
		border-bottom:2px solid #e3e3e3;
	}
	.customContent{
		width:750px;
		margin:0 auto;
		padding:20px 30px;
		text-align: left;
	}
	.btnWrap{
		margin-top:50px;
	}
	.btnWrap button{
		width:50px;
		height:24px;
		background: #00b4ae;
		color:white;
		border:none;
		border-radius: 3px;
		font-size:15px;
	}
	.reply{
		width:100%;
		margin:100px auto;
	}
	.reply>table{
		width:1000px;
		margin:0 auto;
		border-top:5px solid #e3e3e3;
		border-bottom:5px solid #e3e3e3;
		text-align:left;
	}
	.reply>table td{
		padding:10px 15px;
	}
	.reply>table tr:first-child td{
		border-bottom:2px solid #e3e3e3;
	}
	.replyContent{
		width:100%;
		max-width:970px;
		margin:0 auto;
		padding:20px 15px;
		text-align: left;
	}
	.replyContent img{
		max-width:685px;
	}
}
@media only screen and (min-width:320px) and (max-width:767px){
	html{
		font-family: 'Noto Sans', sans-serif;
		font-size: 20px;
	}
	.quick{
		display: none;
	}
	.mainBackground>img{
		width:100%;
		min-height:160px;
		max-height: 160px;
		float:left;
	}
	.mainBackground{
		position: relative;
		margin-bottom: 20px;
	}
	.mainBackground .bgText{
		position: absolute;
		top:30px;
		left:15px;
		color:white;
		width:90%;
	}
	.mainBackground .bgText h1{
		font-weight: 400;
		margin-bottom: 15px;
		font-size: 1.5em;
		opacity:0.9;
	}
	.mainBackground .bgText p{
		font-weight: 300;
		opacity:0.8;
	}
	section .mainBackground .navWrap{
		width:100%;
		height:45px;
		clear:both;
		background: #0B8783;
		position: relative;
		z-index: 10;
	}
	section .mainBackground .navWrap .navUl{
		width:100%;
		margin:0 auto;
	}
	section .mainBackground .navWrap .navUl>li{
		height:45px;
		border-left:1px solid #3C9F9C;
		float:left;
		text-align: center;
	}
	section .mainBackground .navWrap .navUl>li:last-child{
		width:45%;
		text-align: left;
	}
	section .mainBackground .navWrap .navUl>li a{  
		font-size: 17px;
		color:white;
		line-height: 45px;
		margin:0 15px;
	}
	section .mainBackground .navWrap .navUl>li:first-child{
		text-align: center;
	}
	section .mainBackground .navWrap .navUl>li:last-child{
		border-right:1px solid #3C9F9C;
	}
	section .mainBackground .navWrap .navUl>li:first-child a{
		line-height: 51px;
	}
	section .mainBackground .navWrap .navUl>li a>.btnArrow{
		margin-left:25px; 
		margin-top:14px;
		float:right;
		width:20px;
	}
	section .mainBackground .navWrap .navUl>li:last-child a>.btnArrow{
		margin-left:7px;
	}
	.sub_subDropdown{
		display: none;
		background: #376d6a;
	} 
	.sub_subDropdown>li{
		text-align: left;
		border-bottom:1px solid #9bb6b5;
	}
	.sub_subDropdown>li a{
		height:40px; 
		line-height: 40px !important;
		font-size: 16px !important;
	}
	.sub_subDropdown>li a:hover{
		font-weight: bold;
	}
	section .mainBackground .navWrap .navUl>li:hover >.sub_subDropdown {
		display: block;
	}
	.sub_title{
		width:100%;
		margin:0 auto;
		margin-bottom:25px;
		text-align: center;
	}
	.sub_title p{
		text-align: center;
		margin:0 auto;
		margin-bottom: 10px;
	}
	.sub_title>p>img{
		width:30px;
	}
	.sub_title h1{
		text-align: center;
		font-size: 1rem;
		font-weight: 550;
	}
	.custom{
		width:100%;
		margin:0 auto;
	}
	.custom>table{
		width:361px;
		margin:0 auto;
		border-top:5px solid #e3e3e3;
		border-bottom:5px solid #e3e3e3;
		text-align:left;
	}
	.custom>table td{
		padding:10px 1px;
	}
	.custom>table tr:first-child td{
		border-bottom:2px solid #e3e3e3;
	}
	.custom>table tr:last-child td{
		width:150px;
		display:inline-block;
		padding:0;
	}
	.customContent{
		width:91%;
		margin:0 auto;
		padding:20px 15px;
		text-align: left;
	}
	.btnWrap{
		margin-top:50px;
		text-align: center;
	}
	.btnWrap button{
		width:50px;
		height:24px;
		background: #00b4ae;
		color:white;
		border:none;
		border-radius: 3px;
		font-size:15px;
	}
	.reply{
		width:100%;
		margin:100px auto;
	}
	.reply>table{
		width:361px;
		margin:0 auto;
		border-top:5px solid #e3e3e3;
		border-bottom:5px solid #e3e3e3;
		text-align:left;
	}
	.reply>table td{
		padding:10px 1px;
	}
	.reply>table tr:first-child td{
		border-bottom:2px solid #e3e3e3;
	}
	.reply>table tr:last-child td{
		width:150px;
		display:inline-block;
		padding:0;
	}
	.replyContent{
		width:91%;
		max-width:970px;
		margin:0 auto;
		padding:20px 15px;
		text-align: left;
	}
	.replyContent img{
		max-width:340px;
	}
}
</style>
<script type="text/javascript">
	$(function(){
		//quick menu
		$(window).scroll(function() {
            var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
            if(position>500){
            	$(".quick").stop().animate({"top":position-450+"px"},1000);	
            }
            if(position<=500){
            	$(".quick").stop().animate({"top":0+"px"},1000);
            }
        });
        $(".quick ul li:last-child a").click(function(){
        	$("html").animate({scrollTop:"0"},500);
        	return false;
        });
	});
</script>
</head>
<body>
	<header>
		<jsp:include page="../include/header.jsp"></jsp:include>
	</header>
	<section>
		<div class="mainBackground">
			<img class="bgImg" src="${pageContext.request.contextPath}/resources/images/news_top_bg.png">
			<div class="bgText">
				<h1>병원소식</h1>
				<p>
					최선을 다해 최고의 만족감을<br>
					안겨드리는 유한통증의학과를 만나보세요.
				</p>
			</div>
			<div class="navWrap">
				<ul class="navUl"> 
					<li><a href="${pageContext.request.contextPath}/"><img class="btnHome" src="${pageContext.request.contextPath}/resources/images/home.png"></a></li>
					<li>
						<a href="${pageContext.request.contextPath}/notice">병원소식<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="${pageContext.request.contextPath}/info01">병원소개</a></li>
							<li><a href="${pageContext.request.contextPath}/clinic01_01">진료분야</a></li>
						</ul>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/advice">진료/비용 상담<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="${pageContext.request.contextPath}/notice">공지사항</a></li>
							<li><a href="${pageContext.request.contextPath}/broadcasting">언론보도</a></li>
							<li><a href="${pageContext.request.contextPath}/comment">시술후기</a></li>
							<li><a href="${pageContext.request.contextPath}/freqQuestion">자주하는 질문</a></li>
						</ul>	
					</li>
				</ul><!-- navUl end -->
			</div><!-- navWrap end -->
		</div><!-- mainBackground end -->
		<div class="contentWrap">
			<div class="quick">
				<ul>
					<li><p>Quick<br>Menu</p></li>
					<li><a href="${pageContext.request.contextPath}/advice"><img src="${pageContext.request.contextPath}/resources/images/quick_sangdam.png" style="width:40px;"><br><span>진료/비용 상담</span></a></li>
					<li><a href="${pageContext.request.contextPath}/freqQuestion"><img src="${pageContext.request.contextPath}/resources/images/quick_freqQues.png" style="width:40px;"><br><span>자주하는 질문</span></a></li>
					<li><a href="${pageContext.request.contextPath}/location"><img src="${pageContext.request.contextPath}/resources/images/quick_location.png" style="width:30px;"><br><span>오시는 길</span></a></li>
					<li><a href=""><img src="${pageContext.request.contextPath}/resources/images/quick_top.png" style="width:20px;"><br><span>TOP</span></a></li>
				</ul>
			</div><!-- quick end -->
			<div class="sub_title">
				<p><img src="${pageContext.request.contextPath}/resources/images/sLogo.png"></p>
				<h1>진료/비용 상담</h1>				
			</div>
			<div class="custom">
				<table>
					<tr>
						<td colspan="4">제목: ${item.title}</td>
					</tr>
					<tr>
						<td>작성자: ${item.writer}</td>
						<td>등록일: <fmt:formatDate type="date" value="${item.regdate}"/>
						<td>답변상태: ${item.state}</td>
						<td>조회: ${item.cnt}</td>
					</tr>
				</table>
				<div class="customContent">
					${item.content}
				</div>
				<div class="btnWrap">
					<a href="${pageContext.request.contextPath}/advice${pageMaker.makeSearch(pageMaker.cri.page)}" class="btn"><button>목록</button></a>
					<!-- <a href="adviceUpdate"><button>수정</button></a>
					<a href="adviceDelete"><button>삭제</button></a> -->
					<c:if test="${item.pwtype=='x'}">
						<a href="${pageContext.request.contextPath}/adviceUpdate${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${item.bno}"><button>수정</button></a>
						<a href="${pageContext.request.contextPath}/adviceDelete${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${item.bno}"><button>삭제</button></a>
					</c:if>
				</div>
			</div><!-- custom end -->
			<div class="reply">
				<c:if test="${item.state=='답변완료'}">
					<table>
						<tr>
							<td colspan="4">제목: Re] ${item.title}</td>
						</tr>
						<tr>
							<td>작성자: 관리자</td>
							<td>답변일: <fmt:formatDate type="date" value="${reply.regdate}"/></td>
							<td>답변상태: 답변완료</td>
							<td>조회수: ${item.cnt}</td>
						</tr>
					</table>
				<div class="replyContent">
					${reply.replytext}
				</div>
				</c:if>
<%-- 				<c:if test="${item.state=='답변대기'}">
					
				</c:if> --%>
				
			</div><!-- reply end -->
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>