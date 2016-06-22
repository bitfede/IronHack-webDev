require_relative("../lib/password_checker.rb")

RSpec.describe PasswordChecker do

	let :password_check do
		PasswordChecker.new
	end

	describe "#check_characters" do
	it "password must be longer than 7 characters" do
		expect( password_check.check_characters("donut1") ).to eq(false)
	end
	end

	describe "#check_symbol" do
	it "password must contain 1 letter, number, symbol" do
		expect( password_check.check_symbol("12popT$LLl") ).to eq(true)
	end
	end

	describe "#check_uplow" do
	it "password must have one upper and one lower case character" do
		expect( password_check.check_uplow("12popT$LLl") ).to eq(true)
	end
	end

	describe "#check_double" do
	it "password must NOT contain neither the name nor the domain of the email" do
		expect( password_check.check_double("rafa@ironhack.com", "12popT$LLl")).to eq(true)
	end
	end

	describe "#check_password" do
	it "if password passes all conditions" do
		expect( password_check.check_password("rafa@ironhack.com", "12popT$LLl")).to eq(true)
	end
	end

end