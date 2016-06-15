function question1() {
	'use strict';
	var name;

	name = prompt('Please enter your name: ');
	user.name = name;
}

function question2() {

  var firstQuestion = prompt('Does null === 0 ? (Yes or No)')

// why do you need to convert the answer to lowercase?
  if (firstQuestion.toLowerCase() === 'yes') {
    firstQuestion = true
  } else if (firstQuestion.toLowerCase() === 'no') {
    firstQuestion = false
  } else {
// what if the user writes something other than yes or no? 
// they will have to answer the question again
    alert("Please answer either Yes or No");
    return question2();
  }
  responses.push(firstQuestion); // add the true or false value to the responses array
}

function question3() {
	var answer;
  var js = prompt('What was the original name for JavaScript: Java, LiveScript, JavaLive, or ScriptyScript?');
  js = js.toLowerCase();
  switch (js) {
    // your own answers
    case 'java':
    	answer = false;
    	responses.push(answer);
    	break;
  	case 'livescript':
    	answer = true;
    	responses.push(answer);
    	break;
  	case 'javalive':
    	answer = false;
    	responses.push(answer);
    	break;
  	case 'scriptyscript':
    	answer = false;
    	responses.push(answer);
    	break;
    default: 
    	alert("Incorrect answer, please choose among one of the provided answers");
    	question3();
  }
}

function question4() {
	var answer = prompt('what is the result of (2 + 2) * 2 ?');
	if (answer == '8') {
		responses.push(true)
	}
	else {
		responses.push(false);
	}
}

function question5() {
	var answer = prompt('input a number that is divisible by 3 and between 100 and 150');

	answer = parseInt(answer);

	if (answer % 3 == 0 && (answer >= 100 && answer <= 150) ) {
		responses.push(true);
	}
	else {
		responses.push(false);
	}
}

function evaluate(responsesArray) {

// declare two variables to store the totals
var correct = 0;
var incorrect = 0;

// populate the “totals” variables from the “responsesArray”
for (var i = 0; i < responsesArray.length; i++) {
	if (responsesArray[i] === true) {
		correct++;
	}
	else {
		incorrect++;
	}
}
// save the “totals” variables inside the user object
user['correct'] = correct;
user['incorrect'] = incorrect;

// call showResults
showResults();
}

function showResults() {

// display the user results
alert('User ' + user.name + ' Results:\n' + 'Correct Answers: ' + user.correct + '\nIncorrect Answers: ' + user.incorrect);

}



var user = {}
var responses = []

question1();
question2();
question3();
question4();
question5();

// call the function, passing it the responses array
evaluate(responses);
