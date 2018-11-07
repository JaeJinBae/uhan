<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유한통증의학과 관리자페이지</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=2">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
	*{ 
		margin:0;
		padding:0;
	}
	a{
		display:inline-block;
		color:black;
		text-decoration: none;
	}
	#headerDiv #headerMenu #boardCtr{
		background: white;
		color:black;
	}
	.contentWrap{
		width:100%;
		min-width:1280px;
		/* height:700px; */
		margin:0 auto;
		padding:20px;
		background: lightgray;
		overflow: hidden;
	}
	.contentWrap .leftMenu{
		width:250px; 
		height:100%;
		margin-right:20px;
		padding-top:15px;
		padding-bottom:15px;
		border-radius: 10px; 
		float:left;
		text-align: center;
		background:white;
	}
	.contentWrap .leftMenu h2{
		width:220px;
		margin:0 auto;
		margin-bottom:15px;
		background: url('${pageContext.request.contextPath}/resources/images/arrow2.gif') no-repeat 10px center;
		font-size:26px;
		font-weight:bold;
	}
	.contentWrap .leftMenu ul{
		width:80%;
		margin-left:40px;
		text-align: left;
	}
	.contentWrap .leftMenu ul li{
		list-style:none;
		margin-bottom:10px;
	}
	.contentWrap .leftMenu ul li:before{
		content:">";
	}
	.contentWrap .leftMenu ul li a{
		/* font-weight: bold; */
		font-size:17px;
	}
	.contentWrap .centerMenu{
		width:70%;
		min-width:700px;
		height:100%;
		border-radius:10px;
		float:left;
		background:white;
	}
	.boardTitle{
		width:90%;
		max-width:860px;
		margin:0 auto;
		font-size:20px;
		margin-top:33px;
	}
	
	/* 공지사항 */
	.tbl_board{
		width:90%;
		max-width:860px;
		height:700px;
		margin:0 auto;
		padding-top:30px;
		position:relative;
	}
	.tbl_board table{
		width:800px;
		margin:0 auto;
		border-collapse: collapse; 
	}
	.tbl_board table .tbl_header th{
		border-top:2px solid #e3e3e3;
		border-bottom:2px solid #00B4AE;
		padding:8px 13px;
		font-size:15px;
	}
	/* .tbl_board table .tbl_header th:nth-child(2){
		width:400px;
	} */
	.tbl_board table td{
		padding:8px 13px;
		border-bottom:1px solid lightgray;
		font-size:15px;
	}
	.tbl_board table td a{
		font-size:15px;
	}
	.tbl_board table tr:not(first-child) td:nth-child(2){
		text-align: left;
	}
	.tbl_board table td:not(.title){
		text-align: center;
	}
	.replyCnt{
		font-weight: 600;
	}
	.title>a:hover{
		color:red;
	}
	.title>img{
		width:12px;
	}
	.page{
		clear:both;
		width:626px; 
		margin:70px auto;
		text-align: center;
	}
	.page ul li{
		width:45px;
		height:40px;
		margin:0 auto;
		list-style: none;
		display: inline-block;
		text-align:center;
		border:1px solid #e9e9e9;
	}
	.active1{
		background: #00B4AE;
	}
	.active2{
		font-weight: bold;
		color:white;
	}
	.page ul li a{
		font-size:1.1em;
		line-height: 40px;
	}
	.registerBtn{
		float:right;
		margin-right:35px;
		margin-top:31px;
	}
</style>
<script type="text/javascript">
	$(function(){
		//게시판 검색
        $("#searchBtn").click(function(){
        	var s=$("select[name='searchType']").val();
    		var searchType = encodeURIComponent(s);
    		var k=$("input[name='keyword']").val();
    		var keyword = encodeURIComponent(k);
    		location.href="adminComment${pageMaker.makeQuery(1)}&searchType="+searchType+"&keyword="+keyword;
    	});
		
	});
</script>
</head>
<body>
	<jsp:include page="include/header.jsp"/>
	<div class="contentWrap">
		<div class="leftMenu">
			<h2>회원 리스트</h2>
			<ul> 
				<li> <a href="${pageContext.request.contextPath}/admin/member"> 회원관리</a></li>
			</ul>
		</div>
		<div class="centerMenu">
			<h1 class="boardTitle">&lt;회원 관리&gt;</h1>
			<div class="tbl_board">
				<table>
					<tr>
						<th>이름</th>
						<td><input type="text" name="name" value="${vo.name}" readonly></td>
					</tr>
					<tr>
						<th>아이디</th>
						<td><input type="text" name="id" value="${vo.id}" readonly></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="text" name="pw" value="${vo.pw}"></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text" name="mail" value="${vo.mail}"></td>
					</tr>
					<tr>
						<th>가입일</th>
						<td><input type="text" name="regdate" value="<fmt:formatDate pattern = "yyyy-MM-dd" value = "${vo.regdate}"/>" readonly></td>
					</tr>
				</table>
			</div><!-- tbl_board -->
		</div>
	</div>
</body>
</html>