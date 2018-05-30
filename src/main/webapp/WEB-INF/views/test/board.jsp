<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{
		margin:0;
		padding:0;
	}
	a{
		color:black;
		text-decoration: none;
	}
	.tbl_board{
		width:1024px;
		height:700px;
		margin:0 auto;
		border:1px solid black;
		padding-top:30px;
		position:relative;
	}
	.tbl_board table{
		width:800px;
		margin:0 auto;
		border-collapse: collapse;
		font-size:0.95em; 
	}
	.tbl_board table .tbl_header th{
		border-top:2px solid #e3e3e3;
		border-bottom:2px solid #00B4AE;
		padding:8px 5px;
	}
	.tbl_board table .tbl_header th:nth-child(2){
		width:400px;
	}
	.tbl_board table td{
		padding:8px 5px;
		border-bottom:1px solid #e3e3e3;
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
	.btnWrite{
		margin-top:15px;
		float:right;
		position:absolute;
		right:120px;
	}
	.btnWrite>p{
		padding:5px 15px;
		background: #00B4AE;
		border-radius: 10px;
	}
	.btnWrite>p>a{
		color:white;
	}
	img{
		width:12px;
	}
	.page{
		clear:both;
		width:626px; 
		margin:70px auto;
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
	.page ul li:nth-child(2){
		background: #00B4AE;
	}
	.page ul li:nth-child(2)>a{
		font-weight: bold;
		color:white;
	}
	.page ul li a{
		font-size:1.1em;
		line-height: 40px;
	}
</style>
</head> 
<body>
	<div class="tbl_board">
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
		<div class="btnWrite">
			<p><a href="#">글쓰기</a></p>
		</div>
		<div class="page">
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
		</div><!-- page end -->
	</div><!-- tbl_board -->
</body>
</html>