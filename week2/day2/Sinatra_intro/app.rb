# app.rb 

require "sinatra"
require "sinatra/reloader"
require "pry"
require 'time'

enable(:sessions)

users = {
	"khalifenizar"	=> { :name => "Nizar Khalife" ,  :email  => "nizarK@ironhack.com"},
	"ag"						=> { :name => "Alida Gagliuffi", :email =>  "agG@ironhack.com"},
	"alia"						=> { :name => "Alia Poonawala", :email =>  "aliaP@ironhack.com"}
}

get "/" do
	erb(:home)
end

get "/session-test" do
	@current_session = session

	erb(:display_session)

end


get "/ciao" do
	"My first Sinatra app."
end

get "/about" do
	status(418)
	erb(:about)
	end

get "/recipe" do

	@name = "Red Velvet Cake"
	@ingredients = [
	 "eggs",
	 "flour",
	 "red food coloring",
	 "cocoa",
	 "buttermilk",
	 "sugar",
	 "cream cheese"
	]

	erb(:recipe_page)

end

get "/hello/:name" do
  @name = params['name']
  @info = users[@name]
  binding.pry
  if (@name == "josh")
	  erb(:scotch)
  else
	  erb(:user)
  end
end















