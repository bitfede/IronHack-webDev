$(document).ready( function() {
	 $(document).foundation();
	 $('.js-submit').fadeToggle(1);
	 $('.js-submit').fadeToggle(1000);

	 function getArtist(event) {
	 $('.artists').empty()
	 event.preventDefault();
	 var artist = $('.js-artist-src').val();
	 sendArtReq(artist);

		}

	function sendArtReq(artist) {
		var urlArt = `https://api.spotify.com/v1/search?type=artist&query=${artist}`;
		
	 $.ajax({
	 	url: urlArt,
	 	error: error,
	 	success: successArtist
	 });

	}

	function error() {
		console.log("ERROR");
		alert('error');
	}

	function successArtist(obj) {
		var artists = obj.artists.items;
		printToPage(artists);
	}

	function sendAlbumReq(artistID) {

	}

	function printToPage(artists) {

		for (var i = 0; i < artists.length; i++) {
		art = artists[i];
		console.log(art);
		var imgs = makeGrid(art);

		modal = `
		<div class="reveal" id="Modal${art.id}" data-reveal>
	  <h1>${art.name}</h1>
	  <p class="lead">This artist ID is ${art.id}</p>
	  <p>Data about artist to be added soon!</p>
	  <button class="close-button" data-close aria-label="Close modal" type="button">
    <span aria-hidden="true">&times;</span>
	  </button>
		</div>
		`;
		$('.artists').prepend(modal);
		html = `
			
			<hr>
			<h3><a data-open="Modal${art.id}">${art.name}</a></h3>
			${imgs}
		`;

		$('.artists').append(html)
		$(document).foundation();
		}
	}

	function makeGrid(artist) {
	if (artist.images.length === 0) {
			return "[no pictures]";
		}
		else {
			html = `<div class="row small-up-1 medium-up-2 large-up-4">`
			html = `${html}<div class="column"><img src="${artist.images[0].url}" class="thumbnail" alt="">
			</div>
			`;
			html = `${html}</div>`;
			return html
		}
	}

	$('#js-submit').on('click', getArtist);

});