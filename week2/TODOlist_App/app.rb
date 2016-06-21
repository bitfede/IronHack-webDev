require_relative("lib/Task.rb")
require_relative("lib/TodoList.rb")
require_relative("lib/Save.rb")


todo_list = TodoList.new("Federico")
task = Task.new("Walk the dog")
task2 = Task.new("Buy the milk")
task3 = Task.new("Make my todo list into a web app")

todo_list.add_task(task)
todo_list.add_task(task2)
todo_list.add_task(task3)

todo_list.save("./public/tasks.yml")