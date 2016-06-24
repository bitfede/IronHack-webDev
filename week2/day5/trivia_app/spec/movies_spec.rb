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

		it "addes a movie object to the collection array" do
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

end