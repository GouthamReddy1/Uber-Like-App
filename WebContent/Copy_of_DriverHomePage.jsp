<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="com.controller.ScheduleInfo"%>
<html>
  <head>
    <title>Dynamic Scheduling</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
<!--      -->
<!--      -->
<!-- 	<link rel="stylesheet" href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css"> -->
    	<link rel="stylesheet" type="text/css" href="TableCSSCode.css">
    	<link rel="stylesheet" type="text/css" href="test.css">
    <!-- 	<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'> -->
  
    <script type="text/javascript">
		window.onload = function() {
		document.getElementById('submit').focus();
		}
		
		<%%>
		
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
   	<table class="CSSTableGenerator">
		  <tr><td>No.</td><td>Customer Name</td><td>Pick Up Place</td><td>Destination</td><td>Pick Up Time</td><td>Drop Time</td><td>Navigate</td></tr>
		  <tr><%!ScheduleInfo sch=null; %>
		  <%
				ArrayList<ScheduleInfo> arr = (ArrayList) session.getAttribute("SCHEDULEINFO");
			   // Iterator<ScheduleInfo> itr=arr.iterator();
			   if(arr!=null){
			    for(int i=0;i<arr.size();i++){ 
			    	ScheduleInfo sch=arr.get(i);
			
			%>
			
			<td><%=i+1%></td>
			<td><%=sch.getCustomerName() %></td>
			<td><%=sch.getPickUpPlace() %></td>
			<td><%=sch.getDropUpPlace() %></td>
			<td><%=sch.getPickup_time() %></td>
			<td></td>
			<td><a href="Controller?action=navigate&PickUpPlace=<%=sch.getPickUpPlace()%>
			&DropUpPlace=<%=sch.getDropUpPlace() %>">View</a></td>
			
			</tr>
			<%} }%> 
		  
        </table>
   <div id="map"></div>
    
  
	<div id="error"></div>
	</div>
   
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&v=3&libraries=geometry"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCte1gu8YgsCVRdtD5JQ5eYByDbJbvVeNM&signed_in=false&libraries=places&callback=initMap"
        async defer></script>
  </body>
</html>