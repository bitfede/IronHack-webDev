$(document).ready( function () {
	//---------------------------------//
	//--------Global variables---------//
	//---------------------------------//


	//---------------------------------//
	//-----------Functions-------------//
	//---------------------------------//
	function searchArtist(event) {
		event.preventDefault();

		if ( $('.js-btnPlay').hasClass('playing') === true ) {
      $('.js-player').trigger('pause');
      $('.js-btnPlay').removeClass('playing')
		}
		var searchInput = $('.js-searchSng').val();
		var apiURL = `https://api.spotify.com/v1/search?q=${searchInput}&type=track`

		$.ajax({
			url: apiURL,
			error: function() {alert("ERROR 1")},
			success: function (response) {
				var firstRes = response.tracks.items[0];
				console.log(firstRes);
				if (firstRes === undefined) {
					//handle this
					alert('no')
				}
				else {
					$('.js-albumname').text(firstRes.album.name)
					$('.js-songtitle').text(firstRes.name)
					$('.js-artistname').text(firstRes.artists[0].name)
					$('.js-player').attr('src', firstRes.preview_url)
					$('.js-albumimg').attr('src',firstRes.album.images[0].url )
				}
			}
		})
	}

	function playsong() {
		if ( $('.js-btnPlay').hasClass('playing') === true ) {
      $('.js-player').trigger('pause');
      $('.js-btnPlay').removeClass('playing')
		}
		else {
			$('.js-player').trigger('play');
			$('.js-btnPlay').addClass('playing');
		}
	}

	function printTime() {
	  var current = $('.js-player').prop('currentTime');
	  $('.js-progBar').attr('value', current)
	  //console.debug('Current time: ' + current);
	}

	//---------------------------------//
	//----------instructions-----------//
	//---------------------------------//

	$('.js-searchBtn').on('click' , searchArtist);
	$('.js-btnPlay').on('click', playsong);
	$('.js-player').on('timeupdate', printTime);
});