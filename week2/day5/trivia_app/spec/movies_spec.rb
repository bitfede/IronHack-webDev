require_relative('../models/movies.rb')
require 'imdb'

RSpec.describe Movies do 

	let :movies do
		Movies.new
	end

	describe "#initialize" do
		
		it "creates a movie collection object" do
			expect( movies.movies.class.to_s ).to eq("Array")
		end

	end

	describe "#add_movie" do

		it "adds a movie object to the collection array" do
			movie1 = Imdb::Movie.new("0095016")
			oldlen = movies.movies.length
			movies.add_movie(movie1)

			expect( movies.movies.length ).to eq(oldlen + 1)

		end

	end

	describe "#has_poster?" do

		it "checks if a movie object has a poster associated with it" do
			movie1 = Imdb::Movie.new("0095016")
			expect( movies.has_poster?(movie1) ).to eq(true)
		end

	end

	describe "#get_trivia_choices" do

		it "fills up the array with 9 movie objects, all with posters" do
			list = movies.get_trivia_choices("star wars")
			expect( list.length ).to eq(9)
		end
	end

	describe "#reset" do

		it "resets the movies array to an empty one" do
			movies.reset
			expect( movies.movies.length ).to eq(0)
		end

	end
	

end















