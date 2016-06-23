require_relative("models/Blog.rb")
require_relative("models/Post.rb")

require 'sinatra'
require "sinatra/reloader"

blog = Blog.new
blog.add_post Post.new("title1", "this is the first post", false)
blog.add_post Post.new("title2", "this is the second post", false)
blog.add_post Post.new("title3", "this is the third post", false)

get '/' do
	@postlist = blog.latest_posts

	erb(:home)
end

get '/post-details/:postID' do
	@postId = params[:postID].to_i
	@postlist = blog.latest_posts

	erb(:post)
end

get '/new-post' do
	erb(:newpost)  
end

post '/create-post' do
 	
 	title = params[:title]

 	content = params[:content]

 	newpost = Post.new(title, content, false)

 	blog.add_post(newpost)

 	redirect to '/'
end