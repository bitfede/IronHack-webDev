"use strict";

var Car = require("./models/car.js");

var sleep = require("./lib/sleep.js")
//-----------------------


var ferrari = new Car("Ferrari","VVVVRRRREEEEOOOMMM");

ferrari.makeNoise()


//--


sleep(5, function() {
	console.log("5 seconds have elapsed");
});

