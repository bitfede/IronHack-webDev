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
			
			var switcher = false;

			readQ();

			
		}

		readQ() {
				read(options , callback) 

				var switcher = false;


				while (switcher === false) {}

		}

	callback(err, result) {
				
				if (err) {
					console.log("NOOO");
				}
				
				if (result === Quiz.questions[questioncounter].answer) {
					console.log("CORRECT!");
					this.questioncounter++;
					return true;
				}
				else {
					console.log("INCORRECT");
					return true;
				}
				//buggy!!!!!!!!! TODO
			 }


}

module.exports = Quiz;