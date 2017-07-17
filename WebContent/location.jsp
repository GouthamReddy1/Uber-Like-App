<!DOCTYPE html>
<html>
<head>
<style>
  html, body, #map-canvas {
    height: 100%;
    margin: 0px;
    padding: 0px
  }
</style>
<script src="https://maps.googleapis.com/maps/api/js?"></script>
<script>
function initialize() {
    loadFile('test.txt');
}
var mapOptions = {
        zoom: 10,
        center: new google.maps.LatLng(33.790802,-118.135482),
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };


function loadFile(uri) {
    var r = new XMLHttpRequest();
    r.open('GET', uri, true);
    r.onreadystatechange = function() {
        if (r.readyState == 4) {
            var lines = r.responseText.split('\n');
            loadMap(lines);
        }
    }
    r.send(null);
}

function loadMap(lines) {
    // Create the map.
    
    var map = new google.maps.Map(
        document.getElementById('map-canvas'),
        mapOptions
    );
    for( var i = 0;  i < lines.length; i++ ) { 
        var segments = lines[i].split('\t');
		
        var lat1 = segments[0];
        var lng1 = segments[1];
        var myLatlng = new google.maps.LatLng(lat1,lng1);
        // Construct the circle for each value in citymap.
        // Note: We scale the population by a factor of 20.
       
        marker = new google.maps.Marker({
            position: new google.maps.LatLng(lat1,lng1),
            map: map
            
          });
        // Add the circle for this city to the map.
         (function(marker, i) {
                        // add click event
                        google.maps.event.addListener(marker, 'click', function() {
                            infowindow = new google.maps.InfoWindow({
                                content: 'Hello, World!!'
                            });
                            infowindow.open(map, marker);
                        });
                    })(marker, i);
                
    }
}

google.maps.event.addDomListener(window, 'load', initialize);

</script> 
</head>
<body>
    <div id="map-canvas"></div>
</body>
</html>
