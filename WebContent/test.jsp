<!DOCTYPE html>
<html>
  <head>
    <title>Dynamic Scheduling</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
<!--      -->
<!--      -->
<!-- 	<link rel="stylesheet" href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css"> -->
    	<link rel="stylesheet" type="text/css" href="test.css">
    <!-- 	<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'> -->
  
    <script type="text/javascript">
		window.onload = function() {
		document.getElementById('submit').focus();
		}
    </script>
    
  </head>
  <body>
  <div id="title" >
	  		<h2>Dynamic Scheduling</h2>
	  </div>
	  <br><br>
<div id="header">

	<!-- <br><br> -->
  	
	  	
		<div id="menu" >
			<dropdown>	
			  <input id="toggle1" type="checkbox">
			  <label for="toggle1" class="animate">MENU<i class="fa fa-bars float-right"></i></label>
			  <ul class="animate">
			    <li class="animate">Book a Schedule<i class="fa fa-code float-right"></i></li>
			    <li class="animate">Book a Ride<i class="fa fa-arrows-alt float-right"></i></li>
			    <li class="animate">Settings<i class="fa fa-cog float-right"></i></li>
			  </ul>
			</dropdown>
		</div>

</div>


  <div id="nav">
  
  </div>
   
   <div id="section">
   <div id="map"></div>
    <table>
		  <tr><td><input id="start" class="controls" type="text" placeholder="Your Location" onFocus="setFocus()"></td></tr>
		  <tr> <td><input id="end" class="controls" type="text" placeholder="Enter a location" onFocus="setFocus()"></td></tr>
		  <tr><td> <input id="submit" type="button" autofocus class="controls" value="Submit" name="mysubmit" onclick="onSubmitHandler()"></td></tr>
		  <!-- <tr><td> <input id="Signup" type="button" class="controls" value="signup" name="mysignup" onclick="onSubmitHandler()"></td></tr>  -->     
          <tr><td><input id="signup" type=button class="buttons" onClick="parent.location='http://localhost:8086/New/Signup.jsp'" value='Sign Up'></td></tr>
          <tr><td><input id="login" type=button class="buttons" onClick="parent.location='http://localhost:8086/New/Loginpage.jsp'" value='Login'></td></tr>
        </table>
  
	<div id="error"></div>
	</div>
    <script>
    
function initMap() {
	var address1;
    var address2;
	//var directionsService = new google.maps.DirectionsService;
	  //var directionsDisplay = new google.maps.DirectionsRenderer;
  var map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 33.783823, lng: -118.114090},
    zoom: 13
  });
  var input1 = /** @type {!HTMLInputElement} */(
      document.getElementById('start'));
  var input2 = /** @type {!HTMLInputElement} */(
	      document.getElementById('end'));
  var enter=(document.getElementById('submit'));
  var signup=(document.getElementById('signup'));
  var login=(document.getElementById('login'));
  
  var types = document.getElementById('type-selector');
  map.controls[google.maps.ControlPosition.TOP_LEFT].push(input1);
  map.controls[google.maps.ControlPosition.TOP_LEFT].push(input2);
  map.controls[google.maps.ControlPosition.TOP_LEFT].push(types);
  map.controls[google.maps.ControlPosition.TOP_LEFT].push(enter);
  map.controls[google.maps.ControlPosition.TOP_RIGHT].push(signup);
  map.controls[google.maps.ControlPosition.TOP_RIGHT].push(login);
  var autocomplete1 = new google.maps.places.Autocomplete(input1);
  var autocomplete2 = new google.maps.places.Autocomplete(input2);
  autocomplete1.bindTo('bounds', map);
  autocomplete2.bindTo('bounds', map);
}
   function onSubmitHandler() {
	  var from=document.getElementById('start').value;
	  var to=document.getElementById('end').value;
	  /* $("#error").append("from is<br />"+from);
	  $("#error").append("to is<br />"+to);
	 // calculateRoute($("#start").val(), $("#end").val());
	 */  calculateRoute(from,to);
	  }
	 /* document.getElementById('start').addEventListener('change', onChangeHandler);
	  document.getElementById('end').addEventListener('change', onChangeHandler);
	  document.getElementById('end').addEventListener('submit', onSubmitHandler);

 */
 var rad = function(x) {
	  return x * Math.PI / 180;
	};

/* 	var getDistance = function(p1, p2) {
	  var R = 6378137; // Earth’s mean radius in meter
	  var dLat = rad(p2.lat() - p1.lat());
	  var dLong = rad(p2.lng() - p1.lng());
	  var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
	    Math.cos(rad(p1.lat())) * Math.cos(rad(p2.lat())) *
	    Math.sin(dLong / 2) * Math.sin(dLong / 2);
	  var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
	  var d = R * c;
	  return d; // returns the distance in meter
	};
 */function calculateRoute(start, end) {
    
    var myOptions = {
      zoom: 10,
      center: {lat: 33.783823, lng: -118.114090},
      mapTypeId: google.maps.MapTypeId.ROADMAP,
      position: google.maps.ControlPosition.LEFT_TOP
    };
    // Draw the map
    var mapObject = new google.maps.Map(document.getElementById("map"), myOptions);

    var directionsService = new google.maps.DirectionsService();
    var directionsRequest = {
      origin: start,
      destination: end,
      travelMode: google.maps.DirectionsTravelMode.DRIVING,
      unitSystem: google.maps.UnitSystem.METRIC
    };
    directionsService.route(
      directionsRequest,
      function(response, status)
      {
        if (status == google.maps.DirectionsStatus.OK)
        {
          new google.maps.DirectionsRenderer({
            map: mapObject,
            directions: response
          });
        }
        else
          $("#error").append("Unable to retrieve your route<br />"+status);
      }
    );
    var mystartLatlng=start
    var getDistance = google.maps.geometry.spherical.computeDistanceBetween (start, end);
    alert(getDistance);
    $("#error").append("Distance is<br />"+getDistance);
    }

    </script>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&v=3&libraries=geometry"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCte1gu8YgsCVRdtD5JQ5eYByDbJbvVeNM&signed_in=false&libraries=places&callback=initMap"
        async defer></script>
  </body>
</html>