var myRover = {
  position: [0,0], 
  direction: 'N'
};

var grid = []

function checkBoundaries() {
  if (myRover.position[0] > 5 || myRover.position[0] < -5) {
    myRover.position[0] = myRover.position[0] % 5;
  }
  if (myRover.position[1] > 5 || myRover.position[1] < -5) {
    myRover.position[1] = myRover.position[1] % 5;
  }
}

function goForward(rover) {
  switch(rover.direction) {
    case 'N':
      rover.position[1]++
      break;
    case 'E':
      rover.position[0]++
      break;
    case 'S':
      rover.position[1]--
      break;
    case 'W':
      rover.position[0]--
      break;
  };
  checkBoundaries();
  console.log("New Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]")
}

function goBackwards(rover) {
  switch(rover.direction) {
    case 'N':
      rover.position[1]--
      break;
    case 'E':
      rover.position[0]--
      break;
    case 'S':
      rover.position[1]++
      break;
    case 'W':
      rover.position[1]++
      break;
  };
  checkBoundaries()
  console.log("New Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]")
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
  console.log("New Rover Direction: " + rover.direction);
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
  console.log("New Rover Direction: " + rover.direction);
}

function getCommands() {
  var instr = prompt('Please input instructions for the Rover\nf -> Move Forward\tb -> Move Backwards\nr -> Turn Right\tl -> Turn Left\n(you can concatenate instructions ex. "fffrfflfffbb")')
  if (instr === null) {return;}

  for (var i = 0; i < instr.length; i++) {  
    ch = instr[i];
    switch(ch) {
      case 'f':
        goForward(myRover);
        break;
      case 'b':
        goBackwards(myRover);
        break;
      case 'r':
        turnR(myRover);
        break;
      case 'l':
        turnL(myRover);
        break;
      default:
        alert('the instruction ' + ch + ' is not recognized by the Rover, it will be ignored');
    }
  }
}

getCommands();
