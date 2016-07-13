$(document).ready(function() {

  if ("geolocation" in navigator) {
    console.log("browser has geolocation!");
    navigator.geolocation.getCurrentPosition(showPosition , handleError)
  }
  else {
    console.log("Browser doesnt have geolocation :(" );
  }

  function showPosition(position) {
    console.log("-----------");
    console.log(arguments);
    var lat = position.coords.latitude;
    var lng = position.coords.longitude;

    var html = `
      <h2> Your Postiion </h2>
      <ul>
        <li> latitude: ${lat} </li>
        <li> latitude: ${lng} </li>
      </ul>
    `;

    $('body').prepend(html);

    var image = `
     <img src="https://maps.googleapis.com/maps/api/staticmap?center=${lat},${lng}&size=640x400&zoom=15">
    `;

    $('body').append(image);
  }

  function handleError(error) {
    console.log("Weeoe getting position.");
    console.log(error);

    if (error.code === 1) {
      var html = `<h2> Come on! Give me your locatiooon </h2>`
      $('body').prepend(html)
    }
  }

});