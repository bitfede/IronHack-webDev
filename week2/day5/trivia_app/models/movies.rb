class Movies 
	
	attr_accessor :movies
	def initialize
		@movies = []
	end

	def add_movie(movie)
		@movies.push(movie)
	end

	def has_poster?(movie)
		movie.poster != nil
	end

end