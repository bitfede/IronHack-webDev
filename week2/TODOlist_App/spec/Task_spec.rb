require_relative("../lib/Task.rb")

RSpec.describe Task do

	let :the_task do
		Task.new("Buy Avocados")
	end

	it "returns a status of FALSE when a task is not completed yet" do
		expect( the_task.complete? ).to eq(false)
	end

	it "returns a status of TRUE when the method complete! is called " do
		expect( the_task.complete! ).to eq(true)
	end

	it "returns a status of FALSE when the method make_incomplete! is called" do
		expect( the_task.make_incomplete! ).to eq(false)
	end

	it "updates the todo task and returns the correct task content" do
		expect( the_task.update_content!("Buy Chocolate") ).to eq("Buy Chocolate")
	end

end