
function sortEpisodes(episodes) {

	var sortedEp = episodes.sort( function(a, b){
  	return a.number-b.number
  	} );


	return sortedEp;
}




var episodes = [

	{
		"title": "title1",
		"number": 2
	},

	{
		"title": "title2",
		"number": 3
	},

	{
		"title": "title3",
		"number": 1
	}


]

//---------------------


console.log(sortEpisodes(episodes))