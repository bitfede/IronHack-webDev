# spec/string_calculator_spec.rb

require_relative("../lib/string_calculator.rb")

RSpec.describe StringCalculator do
	let :the_calculator do
		StringCalculator.new
	end

	it "returns 0 for empty string" do
		# p the_calculator.add("") == 0
		expect( the_calculator.add("") ).to eq(0)
	end

	it "returns the number for a single number" do
		# p the_calculator.add("6") == 6
		# p the_calculator.add("9") == 9
		expect( the_calculator.add("6") ).to eq(6)
		expect( the_calculator.add("9") ).to eq(9)
	end

	it "returns the numbers added up for two numbers" do
		# p the_calculator.add("5,7") == 12 
		# p the_calculator.add("4,3") == 7
		expect( the_calculator.add("5,7") ).to eq(12)
		expect( the_calculator.add("4,3") ).to eq(7)
	end

	it "returns the numbers added up for two numbers mixed with letters" do
		# p the_calculator.add("A5,7") == 12 
		# p the_calculator.add("4,3sdf") == 7
		expect( the_calculator.add("A5,7") ).to eq(12)
		expect( the_calculator.add("4,3sdf") ).to eq(7)
	end

	it "returns the numbers added up for three numbers" do
		# p the_calculator.add("5,7,10") == 12 
		# p the_calculator.add("4,3,20") == 7
		expect( the_calculator.add("5,7,10") ).to match(22)
		expect( the_calculator.add("4,3,20") ).to eq(27)
	end

end