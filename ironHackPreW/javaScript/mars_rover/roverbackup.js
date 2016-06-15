//This program will deploy two rovers on Mars, myRover and Rover2.
//it will ask the user for directions for the first rover, and then it will ask directions for the second rover

//TO TEST BONUS: move any rover against one of the obstacles, the easiest one is to do 'fffff' for rover1
//TO TEST BONUS BONUS: move the second rover at (0,-5) up against the other one at (0,0)
//                     with the command 'fffff', it will alert the user that there is an obstacle,
//                     (which is actually the other rover)


var myRover = {
  name: 'myRover',
  position: [0,0], 
  direction: 'N'
};

var Rover2 = {
  name: 'Rover2',
  position: [0,-5],
  direction: 'N'
};

var obstacles = [ [0,4] , [1,3], [-3,4] , [-2,-1] ]; //these are the coordinates where the obstacles are located

function checkBoundaries() {
  if (myRover.position[0] > 5 || myRover.position[0] < -5) {
    myRover.position[0] = myRover.position[0] % 5;
  }
  if (myRover.position[1] > 5 || myRover.position[1] < -5) {
    myRover.position[1] = myRover.position[1] % 5;
  }
}

function checkObstacles() {
 for (var i = 0; i < obstacles.length; i++) {
  if ((myRover.position[1]) === (obstacles[i][1]) && (myRover.position[0]) === (obstacles[i][0])) {
    return true; //the rover is potentially running against an obstacle
  }
  else if ((myRover.position[1]) === (Rover2.position[1]) && (myRover.position[0]) === (Rover2.position[0])) {
    return true; //the rover is potentially running against another rover
  }
}
return false;
}

function goForward(rover) {
  switch(rover.direction) {
    case 'N':
      rover.position[1]++
      var check = checkObstacles();
      if (check === true) { //there is an obstacle! we cannot change position. revert back
        alert('The rover cannot move in this direction because there is an obstacle at ' + rover.position);
        console.log("Obstacle Detected!");
        rover.position[1]--;
        break;
      }
        break;
    case 'E':
      rover.position[0]++
      var check = checkObstacles();
      if (check === true) { //there is an obstacle! we cannot change position. revert back
        alert('The rover cannot move in this direction because there is an obstacle at ' + rover.position);
        console.log("Obstacle Detected!");
        rover.position[0]--;
        break;
      }
      break;
    case 'S':
      rover.position[1]--
      var check = checkObstacles();
      if (check === true) { //there is an obstacle! we cannot change position. revert back
        alert('The rover cannot move in this direction because there is an obstacle at ' + rover.position);
        console.log("Obstacle Detected!");
        rover.position[1]++;
        break;
      }
        break;
    case 'W':
      rover.position[0]--
      var check = checkObstacles();
      if (check === true) { //there is an obstacle! we cannot change position. revert back
        alert('The rover cannot move in this direction because there is an obstacle at ' + rover.position);
        console.log("Obstacle Detected!");
        rover.position[0]++;
        break;
      }
      break;
  };
  checkBoundaries();
  console.log("New " + rover.name +" Position: [" + rover.position[0] + ", " + rover.position[1] + "]")
}

function goBackwards(rover) {
  switch(rover.direction) {
    case 'N':
      rover.position[1]--
      var check = checkObstacles();
      if (check === true) { //there is an obstacle! we cannot change position. revert back
        alert('The rover cannot move in this direction because there is an obstacle at ' + rover.position);
        console.log("Obstacle Detected!");
        rover.position[1]++;
        break;
      }
      break;
    case 'E':
      rover.position[0]--
      var check = checkObstacles();
      if (check === true) { //there is an obstacle! we cannot change position. revert back
        alert('The rover cannot move in this direction because there is an obstacle at ' + rover.position);
        console.log("Obstacle Detected!");
        rover.position[0]++;
        break;
      }
      break;
    case 'S':
      rover.position[1]++
      var check = checkObstacles();
      var check = checkObstacles();
      if (check === true) { //there is an obstacle! we cannot change position. revert back
        alert('The rover cannot move in this direction because there is an obstacle at ' + rover.position);
        console.log("Obstacle Detected!");
        rover.position[1]--;
        break;
      }
      break;
    case 'W':
      rover.position[0]++
      var check = checkObstacles();
      if (check === true) { //there is an obstacle! we cannot change position. revert back
        alert('The rover cannot move in this direction because there is an obstacle at ' + rover.position);
        console.log("Obstacle Detected!");
        rover.position[0]--;
        break;
      }
      break;
  };
  checkBoundaries()
  console.log("New " + rover.name +" Position: [" + rover.position[0] + ", " + rover.position[1] + "]")
}

function turnL(rover) {
  switch(rover.direction) {
    case 'N':
      rover.direction = 'W'
      break;
    case 'E':
      rover.direction = 'N'
      break;
    case 'S':
      rover.direction = 'E'
      break;
    case 'W':
      rover.direction = 'S'
      break;
  };
  console.log("New " + rover.name + " Direction: " + rover.direction);
}

function turnR(rover) {
  switch(rover.direction) {
    case 'N':
      rover.direction = 'E'
      break;
    case 'E':
      rover.direction = 'S'
      break;
    case 'S':
      rover.direction = 'W'
      break;
    case 'W':
      rover.direction = 'N'
      break;
  };
  console.log("New " + rover.name + "Direction: " + rover.direction);
}

function getCommands(rover) {
  var instr = prompt('Please input instructions for the Rover:  ' + rover.name + '\n\nf -> Move Forward\tb -> Move Backwards\nr -> Turn Right\tl -> Turn Left\n(you can concatenate instructions ex. "fffrfflfffbb")')
  if (instr === null) {return;}

  for (var i = 0; i < instr.length; i++) {  
    ch = instr[i];
    switch(ch) {
      case 'f':
        goForward(rover);
        break;
      case 'b':
        goBackwards(rover);
        break;
      case 'r':
        turnR(rover);
        break;
      case 'l':
        turnL(rover);
        break;
      default:
        alert('the instruction ' + ch + ' is not recognized by the Rover, it will be ignored');
    }
  }
}

getCommands(myRover);
getCommands(Rover2);
