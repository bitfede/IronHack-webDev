
window.onload = function() {

// the following code adds event listeners to the buttons
// you'll learn more about this later
// for this exercise, you are going to write the functions for
// what happens when the user clicks on the buttons.
  var saveButton = document.getElementById('save-button');
  saveButton.addEventListener('click', addToDoItem, false);

  var doneButton = document.getElementById('done-button');
  doneButton.addEventListener('click', markAsDone, false);


  function addToDoItem() {
    // add your code here
    // this should create a new list item in the to-do list
    // and set the text as the input from the todo-input field
    var form = document.getElementById('todo-input');
    var input = form.value;
    //console.log(input);
    var new_element = document.createElement('li');
    //console.log(new_element);
    var text  =  document.createTextNode(input);
    new_element.appendChild(text);
    //console.log(new_element);

    var todoList = document.getElementsByTagName('ul');
    todoList = todoList[0];
    todoList.appendChild(new_element);
  }

  function markAsDone() {
    doneButton.classList.add('liked');
    doneButton.innerHTML = "Liked!";
    document.querySelector('h1').style.color = "red";

    var lists = document.getElementsByTagName('ul');
    
    var todoList = lists[0];
    var doneList = lists[1];

    var firstTodo = todoList.children[1];
    //console.log(firstTodo);
    firstTodo.parentNode.removeChild(firstTodo);
    //console.log(doneList)
    firstTodo.style.setProperty('text-decoration' ,'line-through')
    
    // console.log(firstTodo.classList.contains('line-through'))

    doneList.appendChild(firstTodo);


  }
  
}
