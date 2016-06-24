require_relative('../app.rb')
# require_relative('../models/Post.rb')
# require_relative('../models/Blog.rb')

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

end