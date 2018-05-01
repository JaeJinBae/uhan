<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유한통증의학과 오시는 길</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=uFwNagnnR3Ef3GygBT7t&submodules=drawing"></script>
</head>
<body>
	<div id="map" style="width:800px;height:400px;"></div>
	
	<script>
		var mapOptions = {
		    center: new naver.maps.LatLng(35.859189, 128.621849),
		    zoom: 11
		};
		
		var map = new naver.maps.Map('map', mapOptions);
		
		var marker = new naver.maps.Marker({
		    position: new naver.maps.LatLng(35.859189, 128.621849),
		    map: map
		});
		
	</script>

</body>
</html>