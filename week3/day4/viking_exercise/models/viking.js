"use strict";

class Viking {
	constructor(name) {
		this.HP = Math.floor((Math.random() * 100) + 1);
		this.attack = Math.floor((Math.random() * 10) + 1);
		this.name = name;
	}

	makeNoise() {
		console.log("Viking " + this.name + " " +"BWAAAAAARGH")
	}
}

module.exports = Viking;
