$(window).load(function() {
   loadScript();
});

var map;
// function initialize() {
        
//   var mapOptions = {
//           // center: new google.maps.LatLng(latitude, longitude),
//           zoom: 8,
//           mapTypeId: google.maps.MapTypeId.NORMAL,
//           panControl: true,
//           scaleControl: false,
//           streetViewControl: true,
//           overviewMapControl: true
//         };
//         // initializing map
//         map = new google.maps.Map(document.getElementById("map-canvas"),mapOptions);


// }




  function getLocation() {
      if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(showPosition);
      } else { 
          alert("We're sorry. Geolocation is not supported by this browser.");
      }
  }

  function showPosition(position) {
       latitude = position.coords.latitude; 
       longitude = position.coords.longitude;
      
      var mapOptions = {
          center: new google.maps.LatLng(-latitude, -longitude),
          zoom: 9,
          mapTypeId: google.maps.MapTypeId.NORMAL,
          panControl: true,
          // scaleControl: false,
          streetViewControl: true,
          overviewMapControl: true
        };
        // initializing map
        map = new google.maps.Map(document.getElementById("map-canvas"),mapOptions);

  }


function loadScript() {
  console.log("map loading ...");
  getLocation();
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp' +
    '&libraries=drawing'+
    '&callback=initialize';
  document.body.appendChild(script);
}