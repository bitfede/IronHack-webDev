"use strick";

var read = require('read');

var options = {prompt: "insert char: "};

read(options, function(err, result) {

	if (err) {
		console.log("ERROR")
	}

	console.log(result + "!!!!!!!")

 })