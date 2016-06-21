require_relative("lib/calc.rb")
require 'sinatra'

get "/" do
		file = File.open("public/data.txt").each do |line|
			@past_result = line
			@past_result = @past_result.to_s
		end
		file.close
		erb(:onepage)

end

get "/add" do
  erb(:add)
end

post "/calculate" do
	calc = Calculator.new
	@first = params[:first_num].to_f
  @second = params[:second_num].to_f
	op = params[:operation]

	if (op == "add")
		@result = calc.add(@first, @second)
		@sign = "+"
	elsif (op == "subtr")
		@result = calc.subtr(@first, @second)
		@sign = "-"
	elsif (op == "mult")
		@result = calc.mult(@first, @second)
		@sign = "*"
	elsif (op == "div")
		@result = calc.div(@first, @second)
		@sign = "/"
	end
	erb(:result)
end

get "/subt" do
  erb(:subt)
end


get "/mult" do
  erb(:mult)
end


get "/div" do
  erb(:div)
end

get "/onepage" do
	erb(:onepage)
end

post "/store" do
	@value = params[:res]
	datafile = File.open("public/data.txt", 'w')
	datafile.write(@value)
	datafile.close
	redirect to("/")
end

