<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<title>회원가입 | 유한통증의학과</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=2">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
@media only screen and (min-width:1100px){
	body{
		font-family: 'Noto Sans', sans-serif;
	}
	header{
		width:100%;
		min-width:1250px;
		height:108px;
		position: fixed;
		top: 0;
		left:0;
		right:0;
		bottom:0;
		margin:0 auto;
		z-index: 9991;
	}
	section{
		width:100%;
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
	.sub_title>p>img{
		width:40px;
	}
	.sub_title h1{
		font-size:35px;
		font-weight: 500;
	}
	/* update form */
	.formWrap{
		width:780px;
		margin:0 auto;
	}
	.formWrap > h2{
		font-size: 23px;
		margin-bottom:20px;
	}
	.formDiv{
		width:100%;
		margin:0 auto;
		padding:20px 15px;
		border-top:2px solid lightgray;
		border-bottom:2px solid lightgray;
	}
	.agreeInfoWrap{
		width:100%;
		text-align: left;
	}
	.warning{
		color:orange;
		margin-top:15px;
		font-size:16px;
		text-align: center;
	}
	.agreeInfoWrap > h2{
		font-size:23px;
		margin:15px 0 7px 0;
	}
	.txtWrap{
		width:99%;
		height:200px;
		border:1px solid lightgray;
		padding:5px;
		overflow: scroll;
	}
	input[type='checkbox']{
		margin:10px;
	}
	hr{
		margin:15px 0;
		margin-bottom:35px;
	}
	.formTitle{
		font-size:23px;
		margin:15px 0 7px 0;
		text-align: left;
	}
	.formDiv > form{
		width:100%;
	}
	.formDiv > form > table{
		width:95%;
		margin:0 auto;
		margin-top:20px;
	}
	.formDiv > form > table tr{
		display:block;
		border-bottom:1px solid lightgray;
	}
	.formDiv > form > table tr:first-child{
		border-top:1px solid lightgray;
	}
	.formDiv > form > table th{
		font-size:17px;
		padding:5px 0 5px 10px;
		text-align: left;
		background: #f5f8f9;
		width:110px;
	}
	.formDiv > form > table td:not(.idConfirmBtn){
		text-align: left;
		padding-left:15px;
	}
	.formDiv > form > table td > input{
		padding-left:3px;
		border-radius:5px;
		width:180px;
	} 
	.idConfirmBtn > input{
		border-radius:5px;
		padding: 0 3px;
		margin:0 7px;
		width:70px !important;
	}
	.submitDiv{
		width:100%;
		text-align: center;
		margin-top:10px;
	}
	.submitDiv > input[type='submit']{
		background: #00B4AE;
		color:#fff;
		border:1px solid lightgray;
		border-radius: 5px;
		padding:3px 10px;
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
		position: fixed;
		top: 0;
		left:0;
		right:0;
		bottom:0;
		margin:0 auto;
		z-index: 999;
	}
	section{
		width:100%;
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
	.formWrap{
		width:93%;
		margin:0 auto;
	}
	.formWrap > h2{
		font-size: 23px;
		margin-bottom:20px;
	}
	.formDiv{
		width:100%;
		margin:0 auto;
		padding:20px 15px;
		border-top:2px solid lightgray;
		border-bottom:2px solid lightgray;
	}
	.agreeInfoWrap{
		width:100%;
		text-align: left;
	}
	.warning{
		color:orange;
		margin-top:15px;
		font-size:16px;
		text-align: center;
	}
	.agreeInfoWrap > h2{
		font-size:23px;
		margin:15px 0 7px 0;
	}
	.txtWrap{
		width:95%;
		height:200px;
		border:1px solid lightgray;
		padding:5px;
		overflow: scroll;
	}
	input[type='checkbox']{
		margin:10px;
	}
	hr{
		margin:15px 0;
		margin-bottom:35px;
	}
	.formTitle{
		font-size:23px;
		margin:15px 0 7px 0;
		text-align: left;
	}
	.formDiv > form{
		width:100%;
	}
	.formDiv > form > table{
		width:95%;
		margin:0 auto;
		margin-top:20px;
	}
	.formDiv > form > table tr{
		display:block;
		border-bottom:1px solid lightgray;
	}
	.formDiv > form > table tr:first-child{
		border-top:1px solid lightgray;
	}
	.formDiv > form > table th{
		font-size:17px;
		padding:5px 0 5px 10px;
		text-align: left;
		background: #f5f8f9;
		width:110px;
	}
	.formDiv > form > table td:not(.idConfirmBtn){
		text-align: left;
		padding-left:15px;
	}
	.formDiv > form > table td > input{
		padding-left:3px;
		border-radius:5px;
		width:180px;
	} 
	.idConfirmBtn > input{
		border-radius:5px;
		padding: 0 3px;
		margin:0 7px;
		width:70px !important;
	}
	.submitDiv{
		width:100%;
		text-align: center;
		margin-top:10px;
	}
	.submitDiv > input[type='submit']{
		background: #00B4AE;
		color:#fff;
		border:1px solid lightgray;
		border-radius: 5px;
		padding:3px 10px;
		font-size:15px;
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
	.formWrap{
		width:93%;
		margin:0 auto;
	}
	.formWrap > h2{
		font-size: 17px;
		margin-bottom:20px;
	}
	.formDiv{
		width:100%;
		margin:0 auto;
		padding:20px 6px;
		border-top:2px solid lightgray;
		border-bottom:2px solid lightgray;
	}
	.agreeInfoWrap{
		width:100%;
		text-align: left;
	}
	.warning{
		color:orange;
		margin-top:15px;
		font-size:14px;
		text-align: center;
	}
	.agreeInfoWrap > h2{
		font-size:18px;
		margin:15px 0 7px 0;
	}
	.txtWrap{
		width:95%;
		height:200px;
		border:1px solid lightgray;
		padding:5px;
		overflow: scroll;
	}
	input[type='checkbox']{
		margin:10px;
	}
	hr{
		margin:15px 0;
		margin-bottom:35px;
	}
	.formTitle{
		font-size:18px;
		margin:15px 0 7px 0;
		text-align: left;
	}
	.formDiv > form{
		width:100%;
	}
	.formDiv > form > table{
		width:98%;
		margin:0 auto;
		margin-top:20px;
	}
	.formDiv > form > table tr{
		display:block;
		border-bottom:1px solid lightgray;
	}
	.formDiv > form > table tr:first-child{
		border-top:1px solid lightgray;
	}
	.formDiv > form > table th{
		font-size:15px;
		padding:5px 0 5px 5px;
		text-align: left;
		background: #f5f8f9;
		width:90px;
	}
	.formDiv > form > table td:not(.idConfirmBtn){
		text-align: left;
		padding-left:7px;
	}
	.formDiv > form > table td > input{
		padding-left:3px;
		border-radius:5px;
		width:130px;
	} 
	.idConfirmBtn > input{
		border-radius:5px;
		padding: 0 3px;
		
		width:70px !important;
	}
	.idTxt{
		display:none;
	}
	.submitDiv{
		width:100%;
		text-align: center;
		margin-top:10px;
	}
	.submitDiv > input[type='submit']{
		background: #00B4AE;
		color:#fff;
		border:1px solid lightgray;
		border-radius: 5px;
		padding:3px 10px;
		font-size:15px;
	}
}
</style>
<script type="text/javascript">
	$(function(){
        $(window).scroll(function() {
            var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
            if(position>500){
            	$(".quick").stop().animate({"top":position-350+"px"},1000);	
            }
            if(position<=500){
            	$(".quick").stop().animate({"top":0+"px"},1000);
            }
        });
        
        $(".quick ul li:last-child a").click(function(){
        	$("html").animate({scrollTop:"0"},500);
        	return false;
        });
        
        
        //아이디 정규표현식
        var idReg=/^[A-Za-z0-9+]{5,15}$/;
        
        //아이디 중복확인
        $(".idConfirmBtn > input[type='button']").click(function(){
        	var id_=$("input[name='id']").val();
        	
        	
        	console.log(idReg.test(id_));
        	
        	if(id_==""||id_==null){
        		alert("아이디를 입력해주세요.");
        		return false;
        	}else if(!idReg.test(id_)){
        		alert("아이디가 조건에 맞지 않습니다.");
        		return false;
        	}else{
        		idCheck(id_);
        	}
        });
        
        var idChk=0;
        
        function idCheck(id){
        	$.ajax({
        		url:"${pageContext.request.contextPath}/idCheck/"+id,
        		type:"post",
        		dataType:"text",
        		success:function(json){
        			console.log(json);
        			if(json=="ok"){
        				alert("사용가능한 아이디 입니다.");
        				idChk=1;
        			}else{
        				alert("이미 존재하는 아이디입니다.");
        				idChk=0;
        			}
        		}
        	})
        }
        
		
		$("#formTag").submit(function(){
			var chkBox1=$("input[type='checkbox']").eq(0).prop("checked");
			var chkBox2=$("input[type='checkbox']").eq(1).prop("checked");
			var name=$("input[name='name']").val();
			var id=$("input[name='id']").val();
			var pw=$("input[name='pw']").val(); 
			var pwConfirm=$("input[name='pwConfirm']").val();
			var mail=$("input[name='mail']").val();
			
			name=name.toLowerCase();
			id=id.toLowerCase();
			pw=pw.toLowerCase();
			pwConfirm=pwConfirm.toLowerCase();
			mail=mail.toLowerCase();
			
			if(chkBox1==false || chkBox2==false){
				alert("회원가입약관 및 개인정보처리방침안내의 내용에 동의하지 않으면  회원가입을 할 수 없습니다.");
				return false;
			}
			else if(name == ""){
				alert("이름을 입력하세요.");
				return false;
				
			}else if(id==""){
				alert("아이디를 입력해주세요.");
				return false;
				
			}else if(pw != pwConfirm){
				alert("비밀번호가 일치하지 않습니다.");
				return false;
				
			}else if(mail == ""){
				alert("이메일을 바르게 입력해주세요.");
				return false;
				
			}else if(idChk == 0){
				alert("아이디 중복확인을 해주세요.");
				return false;
			}
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
			<img class="bgImg" src="${pageContext.request.contextPath}/resources/images/location_top_image.png">
			<div class="bgText">
				<h1>멤버쉽</h1>
				<p> 
					유한통증의학과를 방문해주셔서 감사합니다.<br>
					최선을 다해 빠른 쾌유를 돕겠습니다.
				</p>
			</div>
			<div class="navWrap">
				<ul class="navUl"> 
					<li><a href="${pageContext.request.contextPath}/"><img class="btnHome" src="${pageContext.request.contextPath}/resources/images/home.png"></a></li>
					<li>
						<a href="${pageContext.request.contextPath}/intro1">멤버쉽<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="${pageContext.request.contextPath}/info01">병원소개</a></li>
							<li><a href="${pageContext.request.contextPath}/clinic01_00">진료분야</a></li>
							<li><a href="${pageContext.request.contextPath}/intro1">진료안내</a></li>
							<li><a href="${pageContext.request.contextPath}/notice">병원소식</a></li>
						</ul>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/userSignIn">회원가입<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
						<ul class="sub_subDropdown">
							<li><a href="${pageContext.request.contextPath}/">로그인</a></li>
							<li><a href="${pageContext.request.contextPath}/">회원정보찾기</a></li>
							<li><a href="${pageContext.request.contextPath}/">이용약관</a></li>
							<li><a href="${pageContext.request.contextPath}/">개인정보취급방침</a></li>
							
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
					<li><a href="${pageContext.request.contextPath}/intro3"><img src="${pageContext.request.contextPath}/resources/images/quick_freqQues.png" style="width:40px;"><br><span>자주하는 질문</span></a></li>
					<li><a href="${pageContext.request.contextPath}/location"><img src="${pageContext.request.contextPath}/resources/images/quick_location.png" style="width:30px;"><br><span>오시는 길</span></a></li>
					<li><a href=""><img src="${pageContext.request.contextPath}/resources/images/quick_top.png" style="width:20px;"><br><span>TOP</span></a></li>
				</ul>
			</div><!-- quick end -->
			<div class="sub_title">
				<p><img src="${pageContext.request.contextPath}/resources/images/sLogo.png"></p>
				<h1>회원가입</h1>				
			</div>			
			<div class="formWrap"> 
				<h2>서비스를 이용하기 위해서는 회원가입이 필요합니다.</h2>
				<div class="formDiv">
					<div class="agreeInfoWrap">
						<p class="warning">※회원가입약관 및 개인정보처리방침안내의 내용에 동의하셔야 회원가입 하실 수 있습니다.※</p>
						<h2>회원가입약관</h2>
						<div class="txtWrap">
							<jsp:include page="signInText1.jsp"></jsp:include>
						</div>
						<input type="checkbox">회원가입약관의 내용에 동의합니다.
						<hr>
						
						<h2>개인정보처리방침</h2>
						<div class="txtWrap">
							<jsp:include page="signInText2.jsp"></jsp:include>
						</div>
						<input type="checkbox">개인정보처리방침의 내용에 동의합니다.
						<hr>
					</div>
					<h2 class="formTitle">회원정보입력</h2>
					<form id="formTag" method="post" action="userSignIn">
						<table>
						<tr>
							<th>이름</th>
							<td colspan='2'><input type="text" name="name" onkeyup="this.value=this.value.toLowerCase();"></td>
						</tr>
						<tr>
							<th>아이디</th>
							<td><input type="text" name="id" onkeyup="this.value=this.value.toLowerCase();"></td>
							<td class="idConfirmBtn"><input type="button" value="중복확인"><span class="idTxt">영문, 숫자만 가능. 최소 5자리 이상 입력하세요.</span></td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td colspan='2'><input type="password" name="pw" onkeyup="this.value=this.value.toLowerCase();"></td>
						</tr>
						<tr>
							<th>비밀번호확인</th>
							<td colspan='2'><input type="password" name="pwConfirm" onkeyup="this.value=this.value.toLowerCase();"></td>
						</tr>
						<tr>
							<th>이메일</th>
							<td colspan='2'><input type="text" name="mail" onkeyup="this.value=this.value.toLowerCase();"></td>
						</tr>
					</table>
					<p class="warning">
						※비밀번호 분실 시 입력한 이메일로 정보가 발송되오니 정확하게 입력해주세요.※
					</p>
					<div class="submitDiv">
						<input type="submit" value="회원가입">
					</div>
					</form>
				</div><!-- formDiv end -->
				
			</div><!-- loginFormWrap end -->
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>