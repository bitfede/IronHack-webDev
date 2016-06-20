require_relative("../lib/Task.rb")
require_relative("../lib/TodoList.rb")

RSpec.describe TodoList do

	let :the_list do
		TodoList.new
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

	

end