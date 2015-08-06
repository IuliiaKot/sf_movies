// //var a =  '<%= j @m.to_s.html_safe %>';
// movie  = $('#movies').data('movies');
// markers = [];
// index = 0
//   function initialize() {
//     var mapCanvas = document.getElementById('map-canvas');
//     var map = new google.maps.Map(mapCanvas);
//
//     var mapOptions = {
//        center: new google.maps.LatLng(37.7631, -122.56),
//        zoom: 12
//     }
//
//     var map = new google.maps.Map(mapCanvas, mapOptions);
//     for(var i = 0; i < movie.length; i++) {
//       latlng = new google.maps.LatLng(parseFloat(movie[i].latitude), parseFloat(movie[i].longitude));
//       addMarker(latlng, map, movie[i]);
//     };
//   };
//
//
//   function isString(value) {
//     return typeof(value) == 'string';
//   }
//
//   function addMarker(location, map, info) {
//     var marker = new google.maps.Marker({
//       position: location,
//       map: map
//     });
//     markers.push(marker);
//
//     movie_array = []
//     for(var j in movie) {
//       if (movie[j].latitude === info.latitude && movie[j].longitude === info.longitude) {
//         movie_array.push(new Object());
//
//         Object.defineProperties(movie_array[movie_array.length - 1], {
//           'title': { value: movie[j].title },
//           'actors': {value: [movie[j].actor_first, movie[j].actor_second, movie[j].actor_third].filter(isString)},
//           'funfuct': {value: movie[j].funfuct},
//           'release_year': {value: movie[j].release_year},
//           'address': {value: movie[j].address}
//         });
//
//         //
//         // movie_array[movie_array.length - 1].title = movie[j].title;
//         // movie_array[movie_array.length - 1].actors = [movie[j].actor_first, movie[j].actor_second, movie[j].actor_third].filter(isString);
//         // movie_array[movie_array.length - 1].funfuct = "blabla";
//         // movie_array[movie_array.length - 1].release_year = movie[j].release_year;
//         // movie_array[movie_array.length - 1].address = "adrd";//movie[j].address;
//
//       }
//     }
//
//
//     content = "<div class='info'>";
//     for(var index in movie_array) {
//       content += "<div class='main'>" + "<p id='click'>" + movie_array[index].title +"</p>"+ "<div class='show-hide'>" + "<span class='movie'>Actors: </span>" +
//                 "<span class='info-movie'>" + movie_array[index].actors.join(", ") + "</span>" + "<br>" +
//                 "<span class='movie'>Release year: </span>" +
//                 "<span class='info-movie'>" + movie_array[index].release_year + "</span>" +
//                 "<br>" + "<span class='movie'>Address: </span>" + "<span class='info-movie'>" + movie_array[index].address + "</span>";
//     //  content += "<hr>";
//       if (movie_array[index].funfuct === null) {
//         content +=  "</div>"+"</div>";
//        }
//       else {
//
//           content += "<br>" + "<span class='movie'>Fun Fucts: </span>" + "<span class='info-movie'>" + movie_array[index].funfuct + "</span>"  + "</div>"+"</div>";
//
//         }
//     };
//     content += "</div>";
//     $('#click').click(function() {
//        $('.show-hide').slideToggle('fast');
//         return false;
//    });
//     var infowindow = new google.maps.InfoWindow()
//     google.maps.event.addListener(marker, 'click', (function(marker, content, infowindow){
//       return function() {
//         infowindow.setContent(content);
//         infowindow.open(map, marker);
//       };
//     })(marker, content, infowindow));
//
//   }
//
// google.maps.event.addDomListener(window, 'load', initialize)
// //
//
//
//   // $(document).ready(function(){
//   //   $(".chosen").data("placeholder","Select Frameworks...").chosen();
//   // });
//    $(document).ready(function() {
//      $(".combobox").select2({
//        placeholder: "Select a state"
//      });
//    });
