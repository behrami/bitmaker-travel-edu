// This example requires the Places library. Include the libraries=places
// parameter when you first load the API. For example:
// <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

function initMap() {
  var myMap = document.getElementById('map');
  var latitude = parseFloat(myMap.getAttribute('data-lat'));
  var longitude = parseFloat(myMap.getAttribute('data-lng'));
  var map = new google.maps.Map(myMap, {
    center: {lat: latitude, lng: longitude},
    zoom: 15
  });





  var infowindow = new google.maps.InfoWindow();
  var service = new google.maps.places.PlacesService(map);
  var hotelId = myMap.getAttribute('data-place-id');

  service.getDetails({
    placeId: hotelId
  }, function(place, status) {
    if (status === google.maps.places.PlacesServiceStatus.OK) {
      var marker = new google.maps.Marker({
        map: map,
        position: place.geometry.location
      });
      google.maps.event.addListener(marker, 'click', function() {
        infowindow.setContent('<div><strong>' + place.name + '</strong><br>' +
          // 'Place ID: ' + place.place_id + '<br>' +
          place.formatted_address + '</div>');
        infowindow.open(map, this);
      });
    }
  });
}
