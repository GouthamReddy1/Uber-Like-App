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
  
    
    
  </head>
  <script type="text/javascript">
  <%
  String PickUpPlace = (String)request.getAttribute("PickUpPlace"); 
  String DropUpPlace = (String)request.getAttribute("DropUpPlace"); 
 // System.out.println("session_val"+session_val);
  %>

 
  </script>
  <body >
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
		<%-- <tr><td><input id="start" value="${sessionScope.PickUpPlace}" name="PickUpPlace" type="hidden" ></td></tr>
		  <tr><td><input id="end" value="${sessionScope.DropUpPlace}" name="DropUpPlace" type="hidden" ></td></tr> 
 --%>		 <!--  <tr><td> <input id="submit" type="button" autofocus class="controls" value="Submit" name="mysubmit" onclick="onSubmitHandler()"></td></tr> -->     
        </table>
  
	<div id="error"></div>
	</div>
    <script>
    
   function initMap() {
	 //  var session_obj= 
	//   alert("message"+session_obj);
	   var map = new google.maps.Map(document.getElementById('map'), {
		    center: {lat: 33.783823, lng: -118.114090},
		    zoom: 13
		  });
	  var from='<%=PickUpPlace%>';
	  var to='California State University,Long Beach';
	 // alert(from +"  " +to);
	  
	 calculateRoute(from,to);
	  }
	
	function calculateRoute(start, end) {
    
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
    //	  alert(status);
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
  //  alert(getDistance);
    $("#error").append("Distance is<br />"+getDistance);
    }

    </script>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&v=3&libraries=geometry"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCte1gu8YgsCVRdtD5JQ5eYByDbJbvVeNM&signed_in=false&libraries=places&callback=initMap"
        async defer></script>
  </body>
</html>