"use strick";

var read = require('read');
var Quiz = require("./models/quiz.js");
var Question = require("./models/question.js");

var quiz = new Quiz() 

var q1 = new Question("How old is Morgan Freeman?", "79", 0);
var q2 = new Question("2 + 2 = ", "4", 1)

quiz.addQuestion(q1);
quiz.addQuestion(q2);

quiz.playQuiz();