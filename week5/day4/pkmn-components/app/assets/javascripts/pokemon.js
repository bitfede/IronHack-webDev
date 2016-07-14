// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

PokemonApp.Pokemon = class {

	constructor(pokemonUri) {
		this.id = PokemonApp.idFromUri( pokemonUri );
	}

	render() {
		console.log("rendering pokemon: #" + this.id);

		$.ajax({
			url: "/api/pokemon/" + this.id,
			success: function (response) {
				console.log("Pokemon Info:");
				console.log(response);
				console.log("-------------");

				//clear forms
				$('.js-pokename').text(response.name);
				$('.js-pokeID').text(response.pkdx_id);
				$('.js-pokeheight').text(response.height);
				$('.js-pokeweight').text(response.weight);
				$('.js-pokeHP').text(response.hp);
				$('.js-pokeAttack').text(response.attack);
				$('.js-pokeDefense').text(response.defense);
				$('.js-pokeSpAttack').text(response.sp_atk);
				$('.js-pokeSpDefense').text(response.sp_def);
				$('.js-pokeSpeed').text(response.speed);
				var poketypes = response.types[0].name;
				for (var i = 1; i < response.types.length; i++) {
					poketypes = poketypes + ", " + response.types[i].name;
				}
				$('.js-pokeType').text(poketypes);



			},
			error: function() {
				alert("error");
			}
		});

		$.ajax({
			url: "/api/sprite/" + this.id,
			success: function (response) {

			var imgurl = 'http://pokeapi.co' + response.image
			$('.js-pokeIMG').attr('src' , imgurl);
			},
			error: function() {alert('error')}
		});


		$.ajax({
			url: "/api/description/" + this.id,
			success: function (response) {
				//log everything in modalbody-right
				console.log(response);
				$('.pokeDescription').text(response.description)
			},
			error: function() { alert("ERROR!!!");}
		});



		$(".js-pokemon-modal").modal("show");		
	}

}

PokemonApp.idFromUri = function (pokemonUri) {
	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];
}

$(document).on("ready", function() {

	$(".js-show-pokemon").on("click", function (event) {
		var $button = $(event.currentTarget);
		var pokemonUri = $button.data("pokemon-uri");

		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render(); 			
	});



});