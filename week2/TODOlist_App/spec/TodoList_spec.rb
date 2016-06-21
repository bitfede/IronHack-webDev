require_relative("../lib/Task.rb")
require_relative("../lib/TodoList.rb")

RSpec.describe TodoList do

	let :the_list do
		TodoList.new("Federico")
	end

	let :task1 do
		task1 = Task.new("Buy Milk")
	end
	let :task2 do
		task2 = Task.new("Walk Dog")
	end

	it "adds a task to the array of tasks" do
		test_arr = []

		the_list.add_task(task1)
		the_list.add_task(task2)

		test_arr.push(task1)
		test_arr.push(task2)

		expect( the_list.tasks ).to eq(test_arr)
	end

	it "removes a task given its ID number" do
		test_arr = []

		the_list.add_task(task1)
		the_list.add_task(task2)

		the_list.delete_task(task2.id)

		test_arr.push(task1)

		expect( the_list.tasks ).to eq(test_arr)
	end

		it "finds and returns an object task given its ID" do
		  the_list.add_task(task1)
			the_list.add_task(task2)

			expect( the_list.find_task_by_id(task2.id) ).to eq(task2)
	end

	it "returns nil if you try to find a nonexisting task" do
		the_list.add_task(task1)
		the_list.add_task(task2)

		expect( the_list.find_task_by_id(121) ).to eq(nil)
	end

	it "sorts the list of tasks by the date of creation" do
		test_tasks = []

		test_tasks.push(task1)
		test_tasks.push(task2)

		sorted_tasks = test_tasks.sort { |a,b| a.created_at <=> b.created_at }
		reverse_tasks = test_tasks.sort { |a,b| b.created_at <=> a.created_at }
		the_list.add_task(task2)
		the_list.add_task(task1)

		expect( the_list.sort_by_created("ASC") ).to eq(sorted_tasks)
	  expect( the_list.tasks[0].created_at < the_list.tasks[1].created_at ).to eq(true)
		expect( the_list.sort_by_created("DESC") ).to eq(reverse_tasks)
		expect( the_list.tasks[0].created_at > the_list.tasks[1].created_at ).to eq(true)
	end

end




