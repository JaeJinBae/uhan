<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	#header{
		width:100%;
		min-width:1180px;
		/* border:1px solid black; */
		overflow: hidden;
		margin-bottom:40px;
		background: white;
	}
	#header #headerGroup{
		width:1180px;
		margin:0 auto !important;
		overflow: hidden;
	}
	#header #headerGroup #headerTopMenu{ 
		/* display:inline-block; */
		float:right;
	}
	#header #headerGroup #headerTopMenu #topMenu{
		/* float:right; */
		padding:10px 68px 0 0;
	}
	#header #headerGroup #headerTopMenu #topMenu li{
		display:inline;
		padding-left:15px;
	}
	#header #headerGroup>h1{
		/* width:200px;
		height:160px; */
		padding-left: 42px;
		padding-top: 16px;
		text-align: center;
		float:left;
	}
	#header #headerGroup>h1>#mainlogo{
		/* width:195px;
		height:155px; */
		margin:0 auto;
		padding:50px;
		padding-left:100px;
		border:1px solid red;
		line-height: 150px;
	}
	#header #headerGroup #mainMenu{
		/* width:780px; */
		display:inline-block;
		clear:both;
		float:right;
		margin-bottom:10px;
	}
	#header #headerGroup #mainMenu ul{
		
	}
	#header #headerGroup #mainMenu ul li{
		width:100px;
		display:inline-block;
		padding-left:20px;
	}
	#header #headerGroup #mainMenu ul li a{
		width:100%;
		font-size:20px; 
		font-weight:900;
	}
	#header #headerGroup #mainMenu ul li a:hover{
		color:#22741C;
		text-decoration: underline;
	}
</style>
	<div id="header">
		<div id="headerGroup">
			<div id="headerTopMenu">
				<ul id="topMenu">
					<li><a href="#">Home</a></li>
					<li><a href="#">관리자</a></li>
					<li><a href="#">사이트맵</a></li>
				</ul>
			</div><!-- headerTopMenu종료 -->
			<h1><span id="mainlogo">메인로고</span></h1>
			<div id="mainMenu">
				<ul>
					<li><a href="board">메뉴1</a></li>
					<li><a href="#">메뉴2</a></li>
					<li><a href="#">메뉴3</a></li>
					<li><a href="#">메뉴4</a></li>
					<li><a href="#">메뉴5</a></li>
				</ul>
			</div><!-- mainMenu종료 -->
		</div><!-- headerGroup종료 -->
	</div><!-- header종료 -->