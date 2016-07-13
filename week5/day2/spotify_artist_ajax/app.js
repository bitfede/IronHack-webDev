$(document).ready( function() {

	 $('.js-submit').fadeToggle(1);
	 $('.js-submit').fadeToggle(1000);

	 function clickbutton() {
	 var artist = $('.js-artist-src').val()


	 $.ajax({
	 	url: "https://api.spotify.com/v1/search?type=artist&query=" + artist,
	 	error: function() {alert('ERROR')},
	 	success: function() {alert('GOOD')}
	 });

	}


	$('#js-submit').on('click', clickbutton);

});