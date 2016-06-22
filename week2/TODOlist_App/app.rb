#Inside of app.rb
require 'sinatra'
require 'sinatra/reloader'

# We're going to need to require our class files
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

get '/' do
	redirect to "/tasks"
	end

get '/tasks' do 

@list = todo_list.tasks

erb(:task_index)
	
end

get '/new_task' do 

erb(:new_task)
	
end

post '/create_task' do

	task = params[:content]

	newtask = Task.new(task)

	todo_list.add_task(newtask)

	todo_list.save("./public/tasks.yml")

	redirect to "/tasks"
end

post '/completed' do

	if (params[:deltask] == nil)

		taskID = params[:task].to_i

		task = todo_list.find_task_by_id(taskID)

		task.complete!

	elsif ( params[:task] == nil ) 

	taskID = params[:task].to_i

	todo_list.delete_task(taskID)


	end	

	todo_list.save("./public/tasks.yml")

	redirect to "/tasks"

end


# todo_list.save("./public/tasks.yml")