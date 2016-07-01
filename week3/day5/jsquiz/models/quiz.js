"use strict";
var read = require('read');

class Quiz {
	constructor() {
		this.questions = [];
		this.currentQ = 0;
		this.score = 0;
	}

	addQuestion(question) {
	this.questions.push(question);
	}
	
	playQuiz() {
		var Quiz = this;
		var questioncounter = 0;
			var options = {prompt: this.questions[questioncounter].question }
			
			read(options , function(err, result) {
				
				if (err) {
					console.log("NOOO");
				}
				
				if (result === Quiz.questions[questioncounter].answer) {
					console.log("CORRECT!");
					this.questioncounter++;
				}
				else {
					console.log("INCORRECT");
				}
				//buggy!!!!!!!!! TODO
			 })

		}


	callback(quiz, result) {
		if (result === "79") {
			console.log("CIAOO");
		}

	}


}

module.exports = Quiz;