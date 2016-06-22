require "sinatra"
require "sinatra/reloader"

require_relative("lib/password_checker.rb")



get "/" do

	erb(:home)
end

post "/login" do
	@username = params[:email]
	@password = params[:password]
	password_checker = PasswordChecker.new
	if password_checker.check_password(@username, @password) == true
		redirect to("/congratulations")
	else
		redirect to("/failed")
	end
	
	erb(:login)
end

get "/congratulations" do 
	erb(:congratulations)
end

get "/failed" do 
	erb(:failed)
end




# PasswordChecker.new.check_password(email, password)