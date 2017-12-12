$(document).ready(function () {
  data = [];
  navigator.geolocation.getCurrentPosition(positionSet, positionError);
  if (data['location']['error'] == null) {
    weatherCurrent();
    weatherForecast();
  }
  else {
    weatherError();
  }
});

function positionSet(position) {
  data['location']['error'] = null;
  data['location']['lat'] = position.coords.latitude;
  data['location']['long'] = position.coords.longitude;
}

function positionError(error) {
  switch(error.code) {
    case error.PERMISSION_DENIED:
      data['location']['error'] = 'GEOLOCATION DENIED';
      break;
    case error.POSITION_UNAVAILABLE:
      data['location']['error'] = 'GEOLOCATION UNAVAILABLE';
      break;
    case error.TIMEOUT:
      data['location']['error'] = 'GEOLOCATION TIMEOUT';
      break;
    case error.UNKNOWN_ERROR:
      data['location']['error'] = 'GEOLOCATION UNKNOWN ERROR';
      break;
  }
}

function weatherCurrent() {
  $.ajax({
    method: 'GET',
    url: 'https://api.openweathermap.org/data/2.5/weather?lat=' + data['location']['lat'] + '&lon=' + data['location']['long'],
    dataType: json,
    crossDomain: true,
    success: function (data) {

    },
    error: function (error) {

    }
  });

}

function weatherForecast() {

}

function weatherError() {

}
