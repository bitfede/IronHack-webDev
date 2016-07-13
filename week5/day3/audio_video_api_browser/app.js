$(document).ready(function () {



	function addbutton(	) {
		var urlvid = prompt("insert video URL");
		window.localStorage.setItem('url' , urlvid)
		addvideo(urlvid)
	}

 function addvideo(urlvid) {
 			html = `
			<video src="${urlvid}" width="30%" controls></video>
		`;
		$('.videorow').prepend(html)
 }

	$('.js-add').on('click' , addbutton);


});