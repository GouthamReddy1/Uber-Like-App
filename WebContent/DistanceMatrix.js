
function initMaps(origin1,destinationA) {
	var bounds = new google.maps.LatLngBounds;

	/*var origin1 = {
		lat : 55.93,
		lng : -3.118
	};
	var origin2 = 'Greenwich, England';
	var destinationA = 'Stockholm, Sweden';
	var destinationB = {
		lat : 50.087,
		lng : 14.421
	};*/



	var service = new google.maps.DistanceMatrixService;
	service.getDistanceMatrix({
		origins : [ origin1 ],
		destinations : [ destinationA ],
		travelMode : google.maps.TravelMode.DRIVING,
		unitSystem : google.maps.UnitSystem.IMPERIAL,
		avoidHighways : false,
		avoidTolls : false
	}, function(response, status) {
		if (status !== google.maps.DistanceMatrixStatus.OK) {
			alert('Error was: ' + status);
		} else {
			var originList = response.originAddresses;
			var destinationList = response.destinationAddresses;
			var outputDiv = document.getElementById('nav');
			outputDiv.innerHTML = '';

			for (var i = 0; i < originList.length; i++) {
				var results = response.rows[i].elements;

				for (var j = 0; j < results.length; j++) {

					outputDiv.innerHTML += originList[i] + ' to '
							+ destinationList[j] + ': '
							+ results[j].distance.text + ' in '
							+ results[j].duration.text + '<br>';
				}
			}
		}
	});
}
