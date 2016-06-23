require_relative('../app.rb')
require_relative('../models/Post.rb')
require_relative('../models/Blog.rb')

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

	it "loads the post details page" do
		get '/post-details/0'
		expect(last_response).to be_ok
	end

	it "loads the new post page" do
		get '/new-post'
		expect(last_response).to be_ok
	end

	it "gets the data from the new post form" do
		post '/create-post' , {"title" => "TestTitle", "content" => "Test blog content"}

		 title = last_request.env["rack.request.form_hash"]["title"]
		 text = last_request.env["rack.request.form_hash"]["content"]
		 blogtest = Blog.new
		 post1 = Post.new(title , text, false )
		 blogtest.add_post(post1)
		 expect( blogtest.posts.length ).to eq(1)

	end

end