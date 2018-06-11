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
		margin-left:55px;
		width:20px;
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
		height:60px; 
		line-height: 60px !important;
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
	.registerForm{
		width:100%;
		margin:0 auto;
	}
	.registerForm #f1{ 
		width:100%;
		max-width:1000px;
		margin:0 auto;
	}
	.registerForm #f1 table{
		width:100%;
		border-top:5px solid #e3e3e3;
	}
	#f1 table tr td{
		font-size:14px;
		border-bottom:1px solid #e3e3e3;
		padding:10px 0;
	}
	#f1 table tr td:first-child{
		width:8%;
		text-align: right;
	}
	#f1 table tr td:nth-child(2){
		width:70%;
		text-align: left;
		padding-left:30px;
	}
	#f1 table tr:nth-child(4) td:last-child input{
		width:600px;
	}
	#f1 table tr:last-child td{
		padding-top:20px;
	}
	.star{
		color:#0b8783;
		/* font-size:20px; */
	}
	.stick{
		margin-left:10px;
		color:lightgray;
	}
	.warn{
		margin-left:15px;
	}
	.btnWrap{
		width:100%;
		margin-top:10px;
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
	.btnWrap .goListBtn>button{
		width:50px;
	}
	.btnWrap .submitBtn{
		width:50px;
		height:24px;
		background: #00b4ae;
		color:white;
		border:none;
		border-radius: 3px;
		font-size:15px;
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
		margin-left:55px;
		width:20px;
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
		height:60px;
		line-height: 60px !important;
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
	.sub_title h1{
		font-size:30px;
		font-weight: 500;
	}
	.registerForm{
		width:100%;
		margin:0 auto;
	}
	.registerForm #f1{ 
		width:100%;
		max-width:1000px;
		margin:0 auto;
	}
	.registerForm #f1 table{
		width:100%;
		border-top:5px solid #e3e3e3;
	}
	#f1 table tr td{
		font-size:14px;
		border-bottom:1px solid #e3e3e3;
		padding:10px 0;
	}
	#f1 table tr td:first-child{
		width:8%;
		text-align: right;
	}
	#f1 table tr td:nth-child(2){
		width:70%;
		text-align: left;
		padding-left:30px;
	}
	#f1 table tr:nth-child(4) td:last-child input{
		width:600px;
	}
	#f1 table tr:last-child td{
		padding-top:20px;
	}
	.star{
		color:#0b8783;
		/* font-size:20px; */
	}
	.stick{
		margin-left:10px;
		color:lightgray;
	}
	.warn{
		margin-left:15px;
	}
	.btnWrap{
		width:100%;
		margin-top:10px;
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
	.btnWrap .goListBtn>button{
		width:50px;
	}
	.btnWrap .submitBtn{
		width:50px;
		height:24px;
		background: #00b4ae;
		color:white;
		border:none;
		border-radius: 3px;
		font-size:15px;
	}
	input[type=submit] {-webkit-appearance:none;}
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
		letter-spacing: 0.1em;
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
		margin-bottom: 10px;
	}
	.sub_title h1{
		text-align: center;
		font-size: 1rem;
		font-weight: 550;
	}
	.registerForm{
		width:100%;
		margin:0 auto;
	}
	.registerForm #f1{ 
		width:100%;
		margin:0 auto;
	}
	.registerForm #f1 table{
		width:100%;
		border-top:5px solid #e3e3e3;
	}
	#f1 table tr td{
		font-size:14px;
		border-bottom:1px solid #e3e3e3;
		padding:10px 0;
	}
	#f1 table tr td:first-child{
		width:23%;
		text-align: right;
	}
	#f1 table tr td:nth-child(2){
		width:75%;
		text-align: left;
		padding-left:10px;
	}
	#f1 table tr:nth-child(4) td:last-child input{
		width:85%;
	}
	#f1 table tr:last-child td{
		padding-top:20px;
	}
	.star{
		color:#0b8783;
		/* font-size:20px; */
	}
	.stick{
		margin-left:10px;
		color:lightgray;
	}
	.warn{
		margin-left:15px;
		display:block;
	}
	.btnWrap{
		width:100%;
		margin-top:10px;
	}
	.btnWrap .goListBtn>button{
		width:50px;
	}
	.btnWrap .submitBtn{
		width:50px;
	}
	.btnWrap .cancelBtn>button{
		width:50px;
	}
	input[type=submit] {-webkit-appearance:none;}
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
      //예외처리
    	$("#f1").submit(function(){
    		if($("input[name='writer']").val()==""||$("input[name='writer']").val()==null){
    			alert("작성자를 입력해주세요.");
    			return false;
    		}else if($("input[name='title']").val()==""||$("input[name='title']").val()==null){
    			alert("제목을 입력해주세요.");
    			return false;
    		}
    	})
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
						<a href="notice">병원소식<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="info01">병원소개</a></li>
							<li><a href="clinic01_01">진료분야</a></li>
						</ul>
					</li>
					<li>
						<a href="advice">진료/비용 상담<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="notice">공지사항</a></li>
							<li><a href="broadcasting">언론보도</a></li>
							<li><a href="comment">시술후기</a></li>
							<li><a href="freqQuestion">자주하는 질문</a></li>
						</ul>	
					</li>
				</ul><!-- navUl end -->
			</div><!-- navWrap end -->
		</div><!-- mainBackground end -->
		<div class="contentWrap">
			<div class="quick">
				<ul>
					<li><p>Quick<br>Menu</p></li>
					<li><a href="advice"><img src="${pageContext.request.contextPath}/resources/images/quick_sangdam.png" style="width:40px;"><br><span>진료/비용 상담</span></a></li>
					<li><a href="freqQuestion"><img src="${pageContext.request.contextPath}/resources/images/quick_freqQues.png" style="width:40px;"><br><span>자주하는 질문</span></a></li>
					<li><a href="location"><img src="${pageContext.request.contextPath}/resources/images/quick_location.png" style="width:30px;"><br><span>오시는 길</span></a></li>
					<li><a href=""><img src="${pageContext.request.contextPath}/resources/images/quick_top.png" style="width:20px;"><br><span>TOP</span></a></li>
				</ul>
			</div><!-- quick end -->
			<div class="sub_title">
				<p>|</p>
				<h1>진료/비용 상담</h1>				
			</div>
			<div class="registerForm">
				<form id="f1" method="post" action="adviceUpdate${pageMaker.makeSearch(pageMaker.cri.page)}">
					<input type="hidden" name="bno" value="${item.bno}">
					<table>
						<tr>
							<td><span class="star">*</span> 공개여부<span class="stick">|</span></td>
							<td>
								<input type="radio" name="pwtype" value="o">공개 &nbsp;&nbsp;
								<input type="radio" name="pwtype" value="x" checked="checked">비공개
							</td>
						</tr>
						<tr>
							<td><span class="star">*</span> 비밀번호<span class="stick">|</span></td>
							<td><input type="text" name="pw" style="width:150px;" readonly><span class="warn">※ 비공개 선택 시 비밀번호는 필수 입니다.</span></td> 
						</tr>
						<tr>
							<td><span class="star">*</span> 작성자<span class="stick">|</span></td>
							<td><input type="text" name="writer" style="width:150px;" value="${item.writer}"></td>
						</tr>
						<tr>
							<td><span class="star">*</span> 제목<span class="stick">|</span></td>
							<td><input type="text" name="title" value="${item.title}"></td>
						</tr>
						<tr>
							<td colspan="2">
								<textarea id="editor1" name="content">${item.content}</textarea>
								<script>
									CKEDITOR.replace('content',{filebrowserUploadUrl:"${pageContext.request.contextPath}/admin/imgUpload"});
								</script>
							</td>
						</tr>
					</table>
					<div class="btnWrap">
						<a href="advice${pageMaker.makeSearch(pageMaker.cri.page)}" class="goListBtn"><button type="button">목록</button></a>
						<input type="submit" value="수정" class="submitBtn">
						<a href="adviceRead${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${item.bno}" class="cancelBtn"><button type="button">취소</button></a>
					</div>
				</form>
			</div>
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>