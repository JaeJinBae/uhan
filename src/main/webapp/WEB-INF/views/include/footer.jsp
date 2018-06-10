<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@media only screen and (min-width:1100px){
	#footer1{
		width:100%;
		height:100px;
		background: #1D1E1D;
		color:#828282;
		text-align: center;
		line-height: 30px;
		padding-top:25px;
		padding-bottom:15px;
	}
	#footer1 p{
		font-size:15px;
		opacity:0.7;
	}
	#footer1>table{ 
		width:435px;
		margin:0 auto;
		opacity:0.7;
	}
	#footer1>table tr td{
		font-size:15px;
	}
	#footer1 table td a{
		color:#828282;
	}
}
@media only screen and (min-width:768px) and (max-width:1099px){
	#footer1{
		width:100%;
		height:100px;
		background: #1D1E1D;
		color:#828282;
		text-align: center;
		line-height: 30px;
		padding-top:15px;
		padding-bottom:15px;
	}
	#footer1 p{
		font-size:15px;
		opacity:0.7;
	}
	#footer1>table{ 
		width:435px;
		margin:0 auto;
		opacity:0.7;
	}
	#footer1>table tr td{
		font-size:15px;
	}
	#footer1 table td a{
		color:#828282;
	}
}
@media only screen and (min-width:320px) and (max-width:767px){
 *{
		margin:0;
		padding:0;
	}
	#footer1{
		margin-top: 75px;
		width:100%;
		background: #1D1E1D;
		color:#828282;
		text-align: left;
		line-height: 20px;
		padding: 25px 0px;
		
	}
	#footer1 p{
		font-size:12px;
		padding-left: 20px;
		opacity:0.7;
	}
	#footer1 table{
		font-size:12px;
		padding-left: 18px;
		opacity:0.7;
	}
	#footer1 table td a{
		color:#828282;
	}

}
</style>
<script type="text/javascript">
	$(function(){
		if(detectmob()==true){
			$("#footer1").find("table").html("");
			$("#footer1").find("table").append("<tr><td>대표 : 유한목</td><td>TEL : 053-753-6001</td></tr><tr><td colspan='2'>사업자번호 : 829-92-00667</td></tr><tr><td colspan='2'>Copyrightⓒ유한통증의학과. All Rights Reserved</td></tr>");
		}
	});
	function detectmob() { 
		 if(window.innerWidth <= 767) {
		     return true;
		   } else {
		     return false;
		   }
	}
</script>
<div id="footer1">
	<p>대구광역시 수성구 달구벌대로 2372, 4층(범어동)</p>
	<table>
		<tr>
			<td>대표 : 유한목 |</td>
			<td>사업자번호 : 829-92-00667 |</td>
			<td>TEL : 053-753-6001</td>
		</tr>
		<tr>
			<td colspan="3">Copyrightⓒ유한통증의학과. All Rights Reserved</td>
		</tr>
	</table>
</div>