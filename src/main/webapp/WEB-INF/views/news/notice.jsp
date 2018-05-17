<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항|유한통증의학과</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=2">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style type="text/css">
	body{
		font-family: 'Noto Sans', sans-serif;
	}
	#bodyWrap{
		width:100%;
		height:2400px;
		position: relative;
	}
	#header{
		width:100%;
		margin:0 auto;
		z-index: 9999;
	}
	#footer{
		width:100%;
		position: absolute;
		bottom:0;
	}
	#mainBackground{
		width:100%;
		max-width:2000px;
		height:346px;
		clear:both;
		background: url("${pageContext.request.contextPath}/resources/images/news_top_bg.png") no-repeat;
		background-size:cover;
		position:absolute;
		top:54px;
		left:0;
		right:0;
		bottom:0;
		margin:0 auto;
		z-index: -1;
	}
	#mainBackground #mainIntro{
		width:500px;
		height:100px;
		margin-top:130px;
		margin-left:18%;
		color:white;
	}
	#mainBackground #mainIntro h2{
		font-size: 2.7em;
		margin-bottom:13px;
	}
	#mainBackground #mainIntro p{
		font-size: 1.4em;
		margin-bottom:5px;
	}
	#centerNav{
		width:100%;
		height:60px;
		background: #0B8783;
		position: absolute;
		top:400px;
	}
	#centerNav>ul{
		width:600px;
		height:60px;
		/* line-height: 60px; */
		margin-left:16%;
	}
	#centerNav>ul li{
		width:200px;
		height:60px;
		float:left;
		color:white;
		font-size: 1.3em;
		border-right:1px solid #3C9F9C;
		border-left:1px solid #3c9f9c;
		padding-right:15px;
		padding-left:15px; 
		line-height: 60px;
		text-align: center;
	}
	#centerNav>ul li:first-child{
		width:50px;
		line-height: 70px;
	}
	#contentWrap{
		width:1200px;
		max-width:1200px;
		margin:0 auto;
		position: absolute;
		top:500px;
		left:0;
		right:0;
		bottom:0;
		text-align: center;
	}
	#contentWrap>img{
		width:700px;
	}
	#tbl_board{
		width:1024px;
		height:700px;
		margin:0 auto;
		padding-top:30px;
		position:relative;
	}
	#tbl_board table{
		width:800px;
		margin:0 auto;
		border-collapse: collapse;
		font-size:0.95em; 
	}
	#tbl_board table .tbl_header th{
		border-top:2px solid #e3e3e3;
		border-bottom:2px solid #00B4AE;
		padding:8px 5px;
	}
	#tbl_board table .tbl_header th:nth-child(2){
		width:400px;
	}
	#tbl_board table td{
		padding:8px 5px;
		border-bottom:1px solid #e3e3e3;
	}
	#tbl_board table td:not(.title){
		text-align: center;
	}
	.replyCnt{
		font-weight: 600;
	}
	.title>a:hover{
		color:red;
	}
	#btnWrite{
		margin-top:15px;
		float:right;
		position:absolute;
		right:120px;
	}
	#btnWrite>p{
		padding:5px 15px;
		background: #00B4AE;
		border-radius: 10px;
	}
	#btnWrite>p>a{
		color:white;
	}
	img{
		width:12px;
	}
	#page{
		clear:both;
		width:626px; 
		margin:70px auto;
	}
	#page ul li{
		width:45px;
		height:40px;
		margin:0 auto;
		list-style: none;
		display: inline-block;
		text-align:center;
		border:1px solid #e9e9e9;
	}
	#page ul li:nth-child(2){
		background: #00B4AE;
	}
	#page ul li:nth-child(2)>a{
		font-weight: bold;
		color:white;
	}
	#page ul li a{
		font-size:1.1em;
		line-height: 40px;
	}
</style>
</head>
<body>
	<div id="bodyWrap">
		<div id="header">
			<jsp:include page="../include/header2.jsp"></jsp:include>
		</div>
		<div id="mainBackground">
			<div id="mainIntro">
				<h2>병원소식</h2>
				<p>유한통증의학과의 다양한 소식을 만나볼 수 있습니다.</p>
			</div>
		</div>
		<div id="centerNav">
			<ul>
				<li><a href="${pageContext.request.contextPath}/"><img id="btnHome" src="${pageContext.request.contextPath}/resources/images/home.png"></a></li>
				<li>병원소식&nbsp;&nbsp;&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/images/arrow.png"></li>
				<li>공지사항&nbsp;&nbsp;&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/images/arrow.png"></li>
			</ul>
		</div>
		<div id="contentWrap">
			<div id="tbl_board">
				<table>
					<tr class="tbl_header">
						<th>번호</th>
						<th>제목</th>
						<th>글쓴이</th>
						<th>등록일</th> 
						<th>상태</th>
						<th>조회</th>
					</tr>
					<tr>
						<td>4</td>
						<td class="title"><img src="${pageContext.request.contextPath}/resources/images/lock1.PNG">&nbsp;<a href="#">진료비 관련 문의드립니다.<span class="replyCnt">[0]</span></a></td>
						<td>홍**</td>
						<td>2018-05-05</td>
						<td>답변대기</td>
						<td>3</td>
					</tr>
					<tr>
						<td>3</td>
						<td class="title"><img src="${pageContext.request.contextPath}/resources/images/lock1.PNG">&nbsp;<a href="#">진료비 관련 문의드립니다.<span class="replyCnt">[0]</span></a></td>
						<td>홍**</td>
						<td>2018-05-05</td>
						<td>답변대기</td>
						<td>3</td>
					</tr>
					<tr>
						<td>2</td>
						<td class="title"><img src="${pageContext.request.contextPath}/resources/images/lock1.PNG">&nbsp;<a href="#">진료비 관련 문의드립니다.<span class="replyCnt">[0]</span></a></td>
						<td>홍**</td>
						<td>2018-05-05</td>
						<td>답변대기</td>
						<td>3</td>
					</tr>
					<tr>
						<td>1</td>
						<td class="title"><img src="${pageContext.request.contextPath}/resources/images/lock1.PNG">&nbsp;<a href="#">시술방법이 궁급합니다.<span class="replyCnt">[1]</span></a></td>
						<td>이**</td>
						<td>2018-03-03</td>
						<td>답변완료</td>
						<td>5</td>
					</tr>
				</table>
				<div id="btnWrite">
					<p><a href="">글쓰기</a></p>
				</div>
				<div id="page">
					<ul>
						<li><a href="#">&laquo;</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li> 
						<li><a href="#">5</a></li>
						<li><a href="#">6</a></li>
						<li><a href="#">7</a></li>
						<li><a href="#">8</a></li>
						<li><a href="#">9</a></li>
						<li><a href="#">10</a></li>
						<li><a href="#">&raquo;</a></li>
					</ul>
				</div>
			</div>
		</div><!-- contentWrap 종료 --> 
		<div id="footer">
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</div>
	</div><!-- bodyWrap 종료 -->
	

</body>
</html>