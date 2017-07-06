<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
 <head>
    <style>
       #map {
        height: 300px;
        width: 80%;
       }
    </style>
  </head>
  <body>
    <h3>My Google Maps Demo</h3>
    <div id="map"></div>
    <script>
      function initMap() {
        var uluru = {lat: 51.505558, lng: -0.075391};
        //구글 맵 장소 지정후 우클릭 > what's here?
        
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyArIw08bUoSkeg-nKIFtbaHejN5Jx0ZXtQ&callback=initMap">
    </script>
  </body>
</html>
