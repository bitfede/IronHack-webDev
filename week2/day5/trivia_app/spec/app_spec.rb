require_relative('../app.rb')
require_relative('../models/movies.rb')

require 'sinatra'
require 'rack/test'

describe 'Server Service' do
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end

	it "loads the home page" do
		get '/'
		expect(last_response).to be_ok
	end

	it "loads the posts page" do
		post '/search', {"word" => "star wars"}
		expect(last_response).to be_ok
	end

	it "loads the question page" do
		get '/question'
		expect(last_response).to be_ok
	end

end