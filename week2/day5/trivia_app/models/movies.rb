require 'pry'


class Movies 
	
	attr_accessor :movies
	def initialize
		@movies = []
	end

	def add_movie(movie)
		@movies.push(movie)
	end

	def has_poster?(movie)
		if (movie == nil)
			#nothing

		else
			movie.poster != nil
		end
	end

	def get_trivia_choices(searchword)
		search = Imdb::Search.new(searchword)
		search = search.movies
		finish = false
		index = 0

		while @movies.length < 9

			movie = search[index]

			if has_poster?(movie) == true
				add_movie(movie)
			elsif has_poster?(movie) == false
				#no poster, no party
			end

			index = index + 1

		end
		@movies
	end

	def reset
		@movies = []
	end

end