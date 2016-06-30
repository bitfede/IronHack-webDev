"use strict";

class Saxon {
	constructor() {
		this.HP = Math.floor((Math.random() * 20) + 1);
		this.attack = Math.floor((Math.random() * 10) + 1);
	}

	makeNoise() {
		console.log("Saxon shouts:  "+"aaaaaaaaa")
	}
}

module.exports = Saxon;