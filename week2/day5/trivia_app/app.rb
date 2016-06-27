require_relative('models/movies.rb')

require 'sinatra'
require 'sinatra/reloader'
require 'imdb'
require 'pry'
require 'random-word'



movies = Movies.new

get '/' do
	movies.reset 
	@word = RandomWord.nouns.next
	@word.inspect
	erb(:home)
end


post '/search' do
	searchword = params["word"]
	movies.get_trivia_choices(searchword)

	if (movies.movies == nil)
		redirect to "/"
	else
	 	redirect to "/question"
	end

end

get '/question' do
	@list = movies.movies
	@num = rand(0..@list.length)
	@solution = @list[@num]
	erb(:question)
end