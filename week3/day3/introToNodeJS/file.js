// file.js

var colorsArray = ["indigo", "black","purple","indigo","chartreuse","indigo","indigo","magenta","magenta","chartreuse", "scarlet"];
 
function countColors(color , array) {
	var occurrences = 0;
	for (var i = 0; i < array.length; i++) {
		var theColor = array[i];
		if (theColor === color) {
			occurrences++;
		}

	}
	return occurrences;
}

function averageColon(numbers) {
	array = numbers.split(':')
	var avg = 0;
	for (var i = 0; i < array.length; i++) {
		avg = avg + parseInt(array[i]);
	}
	avg = avg / array.length
	return avg
}



var uppercaseColors = colorsArray.map(function uppercase(element) {
	element = element.toUpperCase();
	return element;
	
});


// console.log("Testing countColors function");

// console.log( countColors("magenta",colorsArray) === 2);

// console.log( countColors("black", colorsArray ) === 1);

// console.log( countColors("pink", colorsArray ) === 0);

console.log("TESTING averageColon function");

var numbers = '80:70:90:100';

console.log(averageColon(numbers) === 85);