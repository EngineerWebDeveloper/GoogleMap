<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
     <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script
    src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&key=AIzaSyDshjGvu_ILQ1J4w2Cs4hlbEMJY9r-87MA"></script>
<script>
var map;
function initialize() {
  var mapOptions = {
    zoom: 8,
    center: new google.maps.LatLng(-34.397, 150.644)
  };
  map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);
  
  
  


	var address = "chicago";
	//alert(address);
	 var geocoder= new google.maps.Geocoder();
	geocoder.geocode( { 'address': address}, function(results, status) {
	if (status == google.maps.GeocoderStatus.OK) {
	      map.setCenter(results[0].geometry.location);
	      var marker = new google.maps.Marker({
	          map: map,
	          position: results[0].geometry.location
	      });
	} else {
	      alert('Geocode was not successful for the following reason: ' + status);
	    }
	});

	 
	     
	    }
google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>
<body>
 <div id="map-canvas" style="height:300px; width:500px"></div>
</body>
</html>